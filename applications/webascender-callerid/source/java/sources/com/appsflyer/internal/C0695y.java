package com.appsflyer.internal;
/* renamed from: com.appsflyer.internal.y */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/y.class */
public final class C0695y {

    /* renamed from: ı */
    private boolean f3092;

    /* renamed from: ǃ */
    public String f3093;

    /* renamed from: com.appsflyer.internal.y$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/y$d.class */
    enum EnumC0696d {
        GOOGLE(0),
        AMAZON(1);
        

        /* renamed from: ı */
        private int f3097;

        EnumC0696d(int i) {
            this.f3097 = i;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return String.valueOf(this.f3097);
        }
    }

    public C0695y(String str, boolean z) {
        this.f3093 = str;
        this.f3092 = z;
    }

    public final String toString() {
        return String.format("%s,%s", this.f3093, Boolean.valueOf(this.f3092));
    }

    /* renamed from: ǃ */
    public final boolean m4011() {
        return this.f3092;
    }
}
