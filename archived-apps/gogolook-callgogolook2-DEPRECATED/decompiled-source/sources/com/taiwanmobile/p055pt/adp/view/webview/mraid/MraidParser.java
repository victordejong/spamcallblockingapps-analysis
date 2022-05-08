package com.taiwanmobile.p055pt.adp.view.webview.mraid;

import android.net.Uri;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import p081h.p447o.p448a.p449a.C10831c;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.mraid.MraidParser */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/mraid/MraidParser.class */
public class MraidParser {
    public static final String MRAID_COMMAND_USE_CUSTOM_CLOSE = "useCustomClose";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_DESCRIPTION = "description";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_END = "end";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_LOCATION = "location";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_RECURRENCE = "recurrence";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_RECURRENCE_DAYSINMONTH = "daysInMonth";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_RECURRENCE_DAYSINWEEK = "daysInWeek";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_RECURRENCE_DAYSINYEAR = "daysInYear";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_RECURRENCE_EXPIRES = "expires";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_RECURRENCE_FREQUENCY = "frequency";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_RECURRENCE_MONTHSINYEAR = "monthsInYear";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_START = "start";
    public static final String MRAID_JSON_CREATE_CALENDAR_EVENT_SUMMARY = "summary";
    public static final String MRAID_KEY_COMMAND = "command";
    public static final String MRAID_PARAM_ALLOW_OFF_SCREEN = "allowOffscreen";
    public static final String MRAID_PARAM_ALLOW_ORIENTATION_CHANGE = "allowOrientationChange";
    public static final String MRAID_PARAM_CUSTOM_CLOSE_POSITION = "customClosePosition";
    public static final String MRAID_PARAM_EVENT_JSON = "eventJSON";
    public static final String MRAID_PARAM_FORCE_ORIENTATION = "forceOrientation";
    public static final String MRAID_PARAM_HEIGHT = "height";
    public static final String MRAID_PARAM_OFFSET_X = "offsetX";
    public static final String MRAID_PARAM_OFFSET_Y = "offsetY";
    public static final String MRAID_PARAM_URL = "url";
    public static final String MRAID_PARAM_USE_CUSTOM_CLOSE = "useCustomClose";
    public static final String MRAID_PARAM_VPAID_EVENT = "vpaidEvent";
    public static final String MRAID_PARAM_WIDTH = "width";

    /* renamed from: a */
    public static final String f10106a = "MraidParser";
    public static final String MRAID_COMMAND_CLOSE = "close";
    public static final String MRAID_COMMAND_CREATE_CALENDAR_EVENT = "createCalendarEvent";
    public static final String MRAID_COMMAND_EXPAND = "expand";
    public static final String MRAID_COMMAND_OPEN = "open";
    public static final String MRAID_COMMAND_PLAY_VIDEO = "playVideo";
    public static final String MRAID_COMMAND_RESIZE = "resize";
    public static final String MRAID_COMMAND_SET_ORIENTATION_PROPERTIES = "setOrientationProperties";
    public static final String MRAID_COMMAND_SET_RESIZE_PROPERTIES = "setResizeProperties";
    public static final String MRAID_COMMAND_STORE_PICTURE = "storePicture";
    public static final String MRAID_COMMAND_INIT_VPAID = "initVpaid";
    public static final String MRAID_COMMAND_REPORT_VPAID_EVENT = "reportVpaidEvent";

    /* renamed from: b */
    public static final String[] f10107b = {MRAID_COMMAND_CLOSE, MRAID_COMMAND_CREATE_CALENDAR_EVENT, MRAID_COMMAND_EXPAND, MRAID_COMMAND_OPEN, MRAID_COMMAND_PLAY_VIDEO, MRAID_COMMAND_RESIZE, MRAID_COMMAND_SET_ORIENTATION_PROPERTIES, MRAID_COMMAND_SET_RESIZE_PROPERTIES, MRAID_COMMAND_STORE_PICTURE, "useCustomClose", MRAID_COMMAND_INIT_VPAID, MRAID_COMMAND_REPORT_VPAID_EVENT};

    /* renamed from: a */
    private boolean m29356a(String str) {
        return Arrays.asList(f10107b).contains(str);
    }

    /* renamed from: a */
    private boolean m29355a(String str, Map<String, String> map) {
        if (str.equals(MRAID_COMMAND_CREATE_CALENDAR_EVENT)) {
            return map.containsKey(MRAID_PARAM_EVENT_JSON);
        }
        if (str.equals(MRAID_COMMAND_OPEN) || str.equals(MRAID_COMMAND_PLAY_VIDEO) || str.equals(MRAID_COMMAND_STORE_PICTURE)) {
            return map.containsKey("url");
        }
        if (str.equals(MRAID_COMMAND_SET_ORIENTATION_PROPERTIES)) {
            boolean z = false;
            if (map.containsKey(MRAID_PARAM_ALLOW_ORIENTATION_CHANGE)) {
                z = false;
                if (map.containsKey(MRAID_PARAM_FORCE_ORIENTATION)) {
                    z = true;
                }
            }
            return z;
        } else if (str.equals(MRAID_COMMAND_SET_RESIZE_PROPERTIES)) {
            boolean z2 = false;
            if (map.containsKey("width")) {
                z2 = false;
                if (map.containsKey("height")) {
                    z2 = false;
                    if (map.containsKey(MRAID_PARAM_OFFSET_X)) {
                        z2 = false;
                        if (map.containsKey(MRAID_PARAM_OFFSET_Y)) {
                            z2 = false;
                            if (map.containsKey(MRAID_PARAM_CUSTOM_CLOSE_POSITION)) {
                                z2 = false;
                                if (map.containsKey(MRAID_PARAM_ALLOW_OFF_SCREEN)) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                }
            }
            return z2;
        } else if (str.equals("useCustomClose")) {
            return map.containsKey("useCustomClose");
        } else {
            if (str.equals(MRAID_COMMAND_REPORT_VPAID_EVENT)) {
                return map.containsKey(MRAID_PARAM_VPAID_EVENT);
            }
            return true;
        }
    }

    public Map<String, String> parseCommandUrl(String str) {
        String[] split;
        C10831c.m10518c(f10106a, "parseCommandUrl " + str);
        HashMap hashMap = new HashMap();
        try {
            Uri parse = Uri.parse(str);
            String host = parse.getHost();
            String query = parse.getQuery();
            if (query != null) {
                for (String str2 : query.split(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR)) {
                    int indexOf = str2.indexOf("=");
                    hashMap.put(URLDecoder.decode(str2.substring(0, indexOf), "UTF-8"), URLDecoder.decode(str2.substring(indexOf + 1), "UTF-8"));
                }
            }
            if (host == null || !m29356a(host)) {
                C10831c.m10518c(f10106a, "command " + host + " is unknown");
                return null;
            } else if (!m29355a(host, hashMap)) {
                C10831c.m10518c(f10106a, "command URL " + str + " is missing parameters");
                return null;
            } else {
                HashMap hashMap2 = new HashMap();
                hashMap2.put(MRAID_KEY_COMMAND, host);
                hashMap2.putAll(hashMap);
                return hashMap2;
            }
        } catch (Exception e) {
            C10831c.m10520b(f10106a, "mraid url parse error !! url = " + str);
            return null;
        }
    }
}
