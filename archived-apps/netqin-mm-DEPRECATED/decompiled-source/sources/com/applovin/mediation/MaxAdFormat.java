package com.applovin.mediation;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/MaxAdFormat.class */
public class MaxAdFormat {

    /* renamed from: a */
    public final String f21815a;
    public static final MaxAdFormat BANNER = new MaxAdFormat("BANNER");
    public static final MaxAdFormat MREC = new MaxAdFormat("MREC");
    public static final MaxAdFormat LEADER = new MaxAdFormat("LEADER");
    public static final MaxAdFormat INTERSTITIAL = new MaxAdFormat("INTER");
    public static final MaxAdFormat REWARDED = new MaxAdFormat("REWARDED");
    public static final MaxAdFormat NATIVE = new MaxAdFormat("NATIVE");

    public MaxAdFormat(String str) {
        this.f21815a = str;
    }

    public String getLabel() {
        return this.f21815a;
    }

    public String toString() {
        return "MaxAdFormat{label='" + this.f21815a + "'}";
    }
}
