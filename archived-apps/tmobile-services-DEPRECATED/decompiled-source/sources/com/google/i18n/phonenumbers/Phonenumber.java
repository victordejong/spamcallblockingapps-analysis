package com.google.i18n.phonenumbers;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonenumber.class */
public final class Phonenumber {

    /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonenumber$PhoneNumber.class */
    public static class PhoneNumber implements Serializable {
        private static final long serialVersionUID = 1;

        /* renamed from: h */
        private boolean f12367h;

        /* renamed from: j */
        private boolean f12369j;

        /* renamed from: l */
        private boolean f12371l;

        /* renamed from: n */
        private boolean f12373n;

        /* renamed from: p */
        private boolean f12375p;

        /* renamed from: r */
        private boolean f12377r;

        /* renamed from: f */
        private int f12365f = 0;

        /* renamed from: g */
        private long f12366g = 0;

        /* renamed from: i */
        private String f12368i = "";

        /* renamed from: k */
        private boolean f12370k = false;

        /* renamed from: m */
        private int f12372m = 1;

        /* renamed from: o */
        private String f12374o = "";

        /* renamed from: s */
        private String f12378s = "";

        /* renamed from: q */
        private CountryCodeSource f12376q = CountryCodeSource.UNSPECIFIED;

        /* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource.class */
        public enum CountryCodeSource {
            FROM_NUMBER_WITH_PLUS_SIGN,
            FROM_NUMBER_WITH_IDD,
            FROM_NUMBER_WITHOUT_PLUS_SIGN,
            FROM_DEFAULT_COUNTRY,
            UNSPECIFIED
        }

        /* renamed from: a */
        public PhoneNumber m7906a() {
            this.f12375p = false;
            this.f12376q = CountryCodeSource.UNSPECIFIED;
            return this;
        }

        /* renamed from: b */
        public PhoneNumber m7905b() {
            this.f12377r = false;
            this.f12378s = "";
            return this;
        }

        /* renamed from: c */
        public PhoneNumber m7904c() {
            this.f12373n = false;
            this.f12374o = "";
            return this;
        }

        /* renamed from: d */
        public boolean m7903d(PhoneNumber phoneNumber) {
            if (phoneNumber == null) {
                return false;
            }
            if (this == phoneNumber) {
                return true;
            }
            boolean z = false;
            if (this.f12365f == phoneNumber.f12365f) {
                z = false;
                if (this.f12366g == phoneNumber.f12366g) {
                    z = false;
                    if (this.f12368i.equals(phoneNumber.f12368i)) {
                        z = false;
                        if (this.f12370k == phoneNumber.f12370k) {
                            z = false;
                            if (this.f12372m == phoneNumber.f12372m) {
                                z = false;
                                if (this.f12374o.equals(phoneNumber.f12374o)) {
                                    z = false;
                                    if (this.f12376q == phoneNumber.f12376q) {
                                        z = false;
                                        if (this.f12378s.equals(phoneNumber.f12378s)) {
                                            z = false;
                                            if (m7891p() == phoneNumber.m7891p()) {
                                                z = true;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        /* renamed from: e */
        public int m7902e() {
            return this.f12365f;
        }

        public boolean equals(Object obj) {
            return (obj instanceof PhoneNumber) && m7903d((PhoneNumber) obj);
        }

        /* renamed from: f */
        public CountryCodeSource m7901f() {
            return this.f12376q;
        }

        /* renamed from: g */
        public String m7900g() {
            return this.f12368i;
        }

        /* renamed from: h */
        public long m7899h() {
            return this.f12366g;
        }

        public int hashCode() {
            int e = m7902e();
            int hashCode = Long.valueOf(m7899h()).hashCode();
            int hashCode2 = m7900g().hashCode();
            int i = 1231;
            int i2 = m7889r() ? 1231 : 1237;
            int i3 = m7898i();
            int hashCode3 = m7896k().hashCode();
            int hashCode4 = m7901f().hashCode();
            int hashCode5 = m7897j().hashCode();
            if (!m7891p()) {
                i = 1237;
            }
            return ((((((((((((((((2173 + e) * 53) + hashCode) * 53) + hashCode2) * 53) + i2) * 53) + i3) * 53) + hashCode3) * 53) + hashCode4) * 53) + hashCode5) * 53) + i;
        }

        /* renamed from: i */
        public int m7898i() {
            return this.f12372m;
        }

        /* renamed from: j */
        public String m7897j() {
            return this.f12378s;
        }

        /* renamed from: k */
        public String m7896k() {
            return this.f12374o;
        }

        /* renamed from: l */
        public boolean m7895l() {
            return this.f12375p;
        }

        /* renamed from: m */
        public boolean m7894m() {
            return this.f12367h;
        }

        /* renamed from: n */
        public boolean m7893n() {
            return this.f12369j;
        }

        /* renamed from: o */
        public boolean m7892o() {
            return this.f12371l;
        }

        /* renamed from: p */
        public boolean m7891p() {
            return this.f12377r;
        }

        /* renamed from: q */
        public boolean m7890q() {
            return this.f12373n;
        }

        /* renamed from: r */
        public boolean m7889r() {
            return this.f12370k;
        }

        /* renamed from: s */
        public PhoneNumber m7888s(int i) {
            this.f12365f = i;
            return this;
        }

        /* renamed from: t */
        public PhoneNumber m7887t(CountryCodeSource countryCodeSource) {
            if (countryCodeSource != null) {
                this.f12375p = true;
                this.f12376q = countryCodeSource;
                return this;
            }
            throw null;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Country Code: ");
            sb.append(this.f12365f);
            sb.append(" National Number: ");
            sb.append(this.f12366g);
            if (m7893n() && m7889r()) {
                sb.append(" Leading Zero(s): true");
            }
            if (m7892o()) {
                sb.append(" Number of leading zeros: ");
                sb.append(this.f12372m);
            }
            if (m7894m()) {
                sb.append(" Extension: ");
                sb.append(this.f12368i);
            }
            if (m7895l()) {
                sb.append(" Country Code Source: ");
                sb.append(this.f12376q);
            }
            if (m7891p()) {
                sb.append(" Preferred Domestic Carrier Code: ");
                sb.append(this.f12378s);
            }
            return sb.toString();
        }

        /* renamed from: u */
        public PhoneNumber m7886u(String str) {
            if (str != null) {
                this.f12367h = true;
                this.f12368i = str;
                return this;
            }
            throw null;
        }

        /* renamed from: v */
        public PhoneNumber m7885v(boolean z) {
            this.f12369j = true;
            this.f12370k = z;
            return this;
        }

        /* renamed from: w */
        public PhoneNumber m7884w(long j) {
            this.f12366g = j;
            return this;
        }

        /* renamed from: x */
        public PhoneNumber m7883x(int i) {
            this.f12371l = true;
            this.f12372m = i;
            return this;
        }

        /* renamed from: y */
        public PhoneNumber m7882y(String str) {
            if (str != null) {
                this.f12377r = true;
                this.f12378s = str;
                return this;
            }
            throw null;
        }

        /* renamed from: z */
        public PhoneNumber m7881z(String str) {
            if (str != null) {
                this.f12373n = true;
                this.f12374o = str;
                return this;
            }
            throw null;
        }
    }

    private Phonenumber() {
    }
}
