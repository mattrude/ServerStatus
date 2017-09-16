package im.conversations.status.web;

import im.conversations.status.persistence.ServerStatusStore;
import im.conversations.status.pojo.*;
import rocks.xmpp.addr.Jid;
import spark.ModelAndView;
import spark.TemplateViewRoute;

import java.util.HashMap;
import java.util.Map;

import static spark.Spark.halt;

public class Controller {

    public static TemplateViewRoute getStatus = (request, response) -> {
        final Configuration configuration = Configuration.getInstance();
        if (configuration.getDomains().size() == 0) {
            halt(500, "You have to configure at least on server");
            return new ModelAndView(null, "redirect.ftl");
        }
        final String param = request.params("domain");
        final String primaryDomain = configuration.getDomains().get(0).getDomain();
        final String domain = param == null ? primaryDomain : Jid.ofDomain(param).getDomain();
        if (param != null && domain.equals(primaryDomain)) {
            response.redirect("/");
            return new ModelAndView(null, "redirect.ftl");
        }
        ServerStatus serverStatus = ServerStatusStore.INSTANCE.getServerStatus(domain);
        HashMap<String, Object> model = new HashMap<>();
        model.put("domain", domain);
        if (serverStatus != null) {
            model.put("serverStatus", serverStatus);
            model.put("availableDomains", configuration.getDomains());
        }
        return new ModelAndView(model, "status.ftl");
    };

    public static TemplateViewRoute getHistorical = (request, response) -> {
        HashMap<String, Object> model = new HashMap<>();
        model.put("serverMap", ServerStatusStore.INSTANCE.getStringHistoricalLoginStatuusMap());
        model.put("durations", HistoricalLoginStatuus.DURATIONS);
        model.put("availableDomains", Configuration.getInstance().getDomains());
        return new ModelAndView(model, "historical.ftl");
    };

    public static TemplateViewRoute getReverse = (request, response) -> {
        final String domain = request.params("domain");
        HashMap<String,Object> model = new HashMap<>();
        model.put("pingResults", ServerStatusStore.INSTANCE.getReverseStatusMap(domain));
        model.put("domain",domain);
        return new ModelAndView(model, "reverse.ftl");
    };

    public static TemplateViewRoute getAbout = (request, response) -> {
        HashMap<String, Object> model = new HashMap<>();
        model.put("availableDomains", Configuration.getInstance().getDomains());
        return new ModelAndView(model, "about.ftl");
    };
}
