package com.amazonaws;

import java.util.EnumMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/RequestClientOptions.class */
public final class RequestClientOptions {
    public final Map<Marker, String> markers = new EnumMap(Marker.class);

    /* loaded from: classes-dex2jar.jar:com/amazonaws/RequestClientOptions$Marker.class */
    public enum Marker {
        USER_AGENT
    }

    public void appendUserAgent(String str) {
        String str2 = this.markers.get(Marker.USER_AGENT);
        String str3 = str2;
        if (str2 == null) {
            str3 = "";
        }
        putClientMarker(Marker.USER_AGENT, createUserAgentMarkerString(str3, str));
    }

    public final String createUserAgentMarkerString(String str, String str2) {
        if (!str.contains(str2)) {
            str = str + " " + str2;
        }
        return str;
    }

    public String getClientMarker(Marker marker) {
        return this.markers.get(marker);
    }

    public void putClientMarker(Marker marker, String str) {
        this.markers.put(marker, str);
    }
}
