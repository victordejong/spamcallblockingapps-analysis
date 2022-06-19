package com.android.billingclient.api;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.android.billingclient.api.l */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/l.class */
public class C0598l {

    /* renamed from: a */
    private String f2752a;

    /* renamed from: b */
    private List<String> f2753b;

    /* renamed from: com.android.billingclient.api.l$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/l$a.class */
    public static class C0599a {

        /* renamed from: a */
        private String f2754a;

        /* renamed from: b */
        private List<String> f2755b;

        /* synthetic */ C0599a(C0579d0 c0579d0) {
        }

        /* renamed from: a */
        public C0598l m4167a() {
            String str = this.f2754a;
            if (str != null) {
                if (this.f2755b == null) {
                    throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
                }
                C0598l c0598l = new C0598l();
                c0598l.f2752a = str;
                c0598l.f2753b = this.f2755b;
                return c0598l;
            }
            throw new IllegalArgumentException("SKU type must be set");
        }

        /* renamed from: b */
        public C0599a m4166b(List<String> list) {
            this.f2755b = new ArrayList(list);
            return this;
        }

        /* renamed from: c */
        public C0599a m4165c(String str) {
            this.f2754a = str;
            return this;
        }
    }

    /* renamed from: c */
    public static C0599a m4170c() {
        return new C0599a(null);
    }

    /* renamed from: a */
    public String m4172a() {
        return this.f2752a;
    }

    /* renamed from: b */
    public List<String> m4171b() {
        return this.f2753b;
    }
}
