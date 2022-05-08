package com.google.android.gms.ads.query;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/query/AdData.class */
public class AdData {

    /* renamed from: a */
    private final QueryData f6075a;

    /* renamed from: b */
    private final String f6076b;

    public AdData(QueryData queryData, String str) {
        this.f6075a = queryData;
        this.f6076b = str;
    }

    public static String getRequestId(String str) {
        return "";
    }

    public String getAdString() {
        return this.f6076b;
    }

    public QueryData getQueryData() {
        return this.f6075a;
    }
}
