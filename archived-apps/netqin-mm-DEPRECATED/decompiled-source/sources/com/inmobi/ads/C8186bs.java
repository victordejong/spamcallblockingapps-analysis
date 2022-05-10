package com.inmobi.ads;
/* renamed from: com.inmobi.ads.bs */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bs.class */
public final class C8186bs {
    /* renamed from: a */
    public static String m6242a(String str) {
        if (str.equalsIgnoreCase("window.mraidview")) {
            return "mraidview";
        }
        if (str.equalsIgnoreCase("window.imraidview")) {
            return "imraidview";
        }
        if (str.equalsIgnoreCase("window.imaiview")) {
            return "imaiview";
        }
        return "NA_ERROR_" + str;
    }
}
