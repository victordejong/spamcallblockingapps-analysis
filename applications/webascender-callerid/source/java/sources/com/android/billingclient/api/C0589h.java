package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.h */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h.class */
public final class C0589h {

    /* renamed from: a */
    private String f2745a;

    /* renamed from: com.android.billingclient.api.h$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/h$a.class */
    public static final class C0590a {

        /* renamed from: a */
        private String f2746a;

        /* synthetic */ C0590a(C0569a0 c0569a0) {
        }

        /* renamed from: a */
        public C0589h m4181a() {
            String str = this.f2746a;
            if (str != null) {
                C0589h c0589h = new C0589h(null);
                c0589h.f2745a = str;
                return c0589h;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        /* renamed from: b */
        public C0590a m4180b(String str) {
            this.f2746a = str;
            return this;
        }
    }

    /* synthetic */ C0589h(C0569a0 c0569a0) {
    }

    /* renamed from: b */
    public static C0590a m4183b() {
        return new C0590a(null);
    }

    /* renamed from: a */
    public String m4184a() {
        return this.f2745a;
    }
}
