package com.google.p068b.p069a;

import java.io.Serializable;
/* renamed from: com.google.b.a.k */
/* loaded from: classes-dex2jar.jar:com/google/b/a/k.class */
public final class C3128k {

    /* renamed from: com.google.b.a.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/b/a/k$a.class */
    public static final class C3129a implements Serializable {

        /* renamed from: a */
        private boolean f18915a;

        /* renamed from: c */
        private boolean f18917c;

        /* renamed from: e */
        private boolean f18919e;

        /* renamed from: g */
        private boolean f18921g;

        /* renamed from: i */
        private boolean f18923i;

        /* renamed from: k */
        private boolean f18925k;

        /* renamed from: m */
        private boolean f18927m;

        /* renamed from: o */
        private boolean f18929o;

        /* renamed from: b */
        private int f18916b = 0;

        /* renamed from: d */
        private long f18918d = 0;

        /* renamed from: f */
        private String f18920f = "";

        /* renamed from: h */
        private boolean f18922h = false;

        /* renamed from: j */
        private int f18924j = 1;

        /* renamed from: l */
        private String f18926l = "";

        /* renamed from: p */
        private String f18930p = "";

        /* renamed from: n */
        private EnumC3130a f18928n = EnumC3130a.UNSPECIFIED;

        /* renamed from: com.google.b.a.k$a$a */
        /* loaded from: classes-dex2jar.jar:com/google/b/a/k$a$a.class */
        public enum EnumC3130a {
            FROM_NUMBER_WITH_PLUS_SIGN,
            FROM_NUMBER_WITH_IDD,
            FROM_NUMBER_WITHOUT_PLUS_SIGN,
            FROM_DEFAULT_COUNTRY,
            UNSPECIFIED
        }

        /* renamed from: a */
        public final int m677a() {
            return this.f18916b;
        }

        /* renamed from: a */
        public final C3129a m676a(int i) {
            this.f18915a = true;
            this.f18916b = i;
            return this;
        }

        /* renamed from: a */
        public final C3129a m675a(long j) {
            this.f18917c = true;
            this.f18918d = j;
            return this;
        }

        /* renamed from: a */
        public final C3129a m674a(String str) {
            if (str != null) {
                this.f18919e = true;
                this.f18920f = str;
                return this;
            }
            throw new NullPointerException();
        }

        /* renamed from: b */
        public final long m673b() {
            return this.f18918d;
        }

        /* renamed from: b */
        public final C3129a m672b(int i) {
            this.f18923i = true;
            this.f18924j = i;
            return this;
        }

        /* renamed from: c */
        public final boolean m671c() {
            return this.f18919e;
        }

        /* renamed from: d */
        public final String m670d() {
            return this.f18920f;
        }

        /* renamed from: e */
        public final boolean m669e() {
            return this.f18922h;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof C3129a)) {
                return false;
            }
            C3129a aVar = (C3129a) obj;
            return aVar != null && (this == aVar || (this.f18916b == aVar.f18916b && (this.f18918d > aVar.f18918d ? 1 : (this.f18918d == aVar.f18918d ? 0 : -1)) == 0 && this.f18920f.equals(aVar.f18920f) && this.f18922h == aVar.f18922h && this.f18924j == aVar.f18924j && this.f18926l.equals(aVar.f18926l) && this.f18928n == aVar.f18928n && this.f18930p.equals(aVar.f18930p) && this.f18929o == aVar.f18929o));
        }

        /* renamed from: f */
        public final C3129a m668f() {
            this.f18921g = true;
            this.f18922h = true;
            return this;
        }

        /* renamed from: g */
        public final int m667g() {
            return this.f18924j;
        }

        /* renamed from: h */
        public final boolean m666h() {
            return this.f18925k;
        }

        public final int hashCode() {
            int i = this.f18916b;
            int hashCode = Long.valueOf(this.f18918d).hashCode();
            int hashCode2 = this.f18920f.hashCode();
            int i2 = 1231;
            int i3 = this.f18922h ? 1231 : 1237;
            int i4 = this.f18924j;
            int hashCode3 = this.f18926l.hashCode();
            int hashCode4 = this.f18928n.hashCode();
            int hashCode5 = this.f18930p.hashCode();
            if (!this.f18929o) {
                i2 = 1237;
            }
            return ((((((((((((((((i + 2173) * 53) + hashCode) * 53) + hashCode2) * 53) + i3) * 53) + i4) * 53) + hashCode3) * 53) + hashCode4) * 53) + hashCode5) * 53) + i2;
        }

        /* renamed from: i */
        public final String m665i() {
            return this.f18926l;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Country Code: ");
            sb.append(this.f18916b);
            sb.append(" National Number: ");
            sb.append(this.f18918d);
            if (this.f18921g && this.f18922h) {
                sb.append(" Leading Zero(s): true");
            }
            if (this.f18923i) {
                sb.append(" Number of leading zeros: ");
                sb.append(this.f18924j);
            }
            if (this.f18919e) {
                sb.append(" Extension: ");
                sb.append(this.f18920f);
            }
            if (this.f18927m) {
                sb.append(" Country Code Source: ");
                sb.append(this.f18928n);
            }
            if (this.f18929o) {
                sb.append(" Preferred Domestic Carrier Code: ");
                sb.append(this.f18930p);
            }
            return sb.toString();
        }
    }
}
