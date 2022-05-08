package okhttp3.internal.http;

import com.aotter.net.volley.toolbox.HttpClientStack;
import gogolook.callgogolook2.gson.CallAction;
/* loaded from: classes3-dex2jar.jar:okhttp3/internal/http/HttpMethod.class */
public final class HttpMethod {
    public static boolean invalidatesCache(String str) {
        return str.equals("POST") || str.equals(HttpClientStack.HttpPatch.METHOD_NAME) || str.equals("PUT") || str.equals("DELETE") || str.equals("MOVE");
    }

    public static boolean permitsRequestBody(String str) {
        return !str.equals("GET") && !str.equals("HEAD");
    }

    public static boolean redirectsToGet(String str) {
        return !str.equals("PROPFIND");
    }

    public static boolean redirectsWithBody(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean requiresRequestBody(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals(HttpClientStack.HttpPatch.METHOD_NAME) || str.equals("PROPPATCH") || str.equals(CallAction.ACTION_REPORT);
    }
}
