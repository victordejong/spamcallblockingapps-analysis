package com.inmobi.ads;

import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiAdRequest.class */
public class InMobiAdRequest {

    /* renamed from: a */
    public final long f31282a;

    /* renamed from: b */
    public final MonetizationContext f31283b;

    /* renamed from: c */
    public final int f31284c;

    /* renamed from: d */
    public final int f31285d;

    /* renamed from: e */
    public final String f31286e;

    /* renamed from: f */
    public final Map<String, String> f31287f;

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiAdRequest$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public int f31288a;

        /* renamed from: b */
        public int f31289b;

        /* renamed from: c */
        public String f31290c;

        /* renamed from: d */
        public Map<String, String> f31291d;

        /* renamed from: e */
        public long f31292e;

        /* renamed from: f */
        public MonetizationContext f31293f = MonetizationContext.MONETIZATION_CONTEXT_OTHER;

        public Builder(long j) {
            this.f31292e = j;
        }

        public InMobiAdRequest build() {
            return new InMobiAdRequest(this.f31292e, this.f31293f, this.f31288a, this.f31289b, this.f31290c, this.f31291d, (byte) 0);
        }

        public Builder setExtras(Map<String, String> map) {
            this.f31291d = map;
            return this;
        }

        public Builder setKeywords(String str) {
            this.f31290c = str;
            return this;
        }

        public Builder setMonetizationContext(MonetizationContext monetizationContext) {
            this.f31293f = monetizationContext;
            return this;
        }

        public Builder setSlotSize(int i, int i2) {
            this.f31288a = i;
            this.f31289b = i2;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/InMobiAdRequest$MonetizationContext.class */
    public enum MonetizationContext {
        MONETIZATION_CONTEXT_ACTIVITY("activity"),
        MONETIZATION_CONTEXT_OTHER("others");
        

        /* renamed from: a */
        public final String f31294a;

        MonetizationContext(String str) {
            this.f31294a = str;
        }

        /* renamed from: a */
        public static MonetizationContext m6733a(String str) {
            MonetizationContext[] values;
            for (MonetizationContext monetizationContext : values()) {
                if (monetizationContext.f31294a.equalsIgnoreCase(str)) {
                    return monetizationContext;
                }
            }
            return null;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return this.f31294a;
        }
    }

    public InMobiAdRequest(long j, MonetizationContext monetizationContext, int i, int i2, String str, Map<String, String> map) {
        this.f31282a = j;
        this.f31283b = monetizationContext;
        this.f31284c = i;
        this.f31285d = i2;
        this.f31286e = str;
        this.f31287f = map;
    }

    public /* synthetic */ InMobiAdRequest(long j, MonetizationContext monetizationContext, int i, int i2, String str, Map map, byte b) {
        this(j, monetizationContext, i, i2, str, map);
    }
}
