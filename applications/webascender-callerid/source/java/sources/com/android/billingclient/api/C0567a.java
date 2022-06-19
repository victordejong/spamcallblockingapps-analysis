package com.android.billingclient.api;
/* renamed from: com.android.billingclient.api.a */
/* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a.class */
public final class C0567a {

    /* renamed from: a */
    private String f2701a;

    /* renamed from: com.android.billingclient.api.a$a */
    /* loaded from: classes-dex2jar.jar:com/android/billingclient/api/a$a.class */
    public static final class C0568a {

        /* renamed from: a */
        private String f2702a;

        /* synthetic */ C0568a(C0603n c0603n) {
        }

        /* renamed from: a */
        public C0567a m4236a() {
            String str = this.f2702a;
            if (str != null) {
                C0567a c0567a = new C0567a(null);
                c0567a.f2701a = str;
                return c0567a;
            }
            throw new IllegalArgumentException("Purchase token must be set");
        }

        /* renamed from: b */
        public C0568a m4235b(String str) {
            this.f2702a = str;
            return this;
        }
    }

    /* synthetic */ C0567a(C0603n c0603n) {
    }

    /* renamed from: b */
    public static C0568a m4238b() {
        return new C0568a(null);
    }

    /* renamed from: a */
    public String m4239a() {
        return this.f2701a;
    }
}
