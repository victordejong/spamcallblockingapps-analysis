package p012b.p042i.p050l;

import java.util.HashSet;
import java.util.Locale;
/* renamed from: b.i.l.c */
/* loaded from: classes-dex2jar.jar:b/i/l/c.class */
public final class C0918c implements AbstractC0919d {

    /* renamed from: b */
    public static final Locale[] f4129b = new Locale[0];

    /* renamed from: a */
    public final Locale[] f4130a;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        C0917b.m35500a("en-Latn");
    }

    public C0918c(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f4130a = f4129b;
            return;
        }
        Locale[] localeArr2 = new Locale[localeArr.length];
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException("list[" + i + "] is null");
            } else if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                localeArr2[i] = locale2;
                m35498a(sb, locale2);
                if (i < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            } else {
                throw new IllegalArgumentException("list[" + i + "] is a repetition");
            }
        }
        this.f4130a = localeArr2;
        sb.toString();
    }

    /* renamed from: a */
    public static void m35498a(StringBuilder sb, Locale locale) {
        sb.append(locale.getLanguage());
        String country = locale.getCountry();
        if (country != null && !country.isEmpty()) {
            sb.append('-');
            sb.append(locale.getCountry());
        }
    }

    @Override // p012b.p042i.p050l.AbstractC0919d
    /* renamed from: a */
    public Object mo35497a() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0918c)) {
            return false;
        }
        Locale[] localeArr = ((C0918c) obj).f4130a;
        if (this.f4130a.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.f4130a;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    @Override // p012b.p042i.p050l.AbstractC0919d
    public Locale get(int i) {
        Locale locale;
        if (i >= 0) {
            Locale[] localeArr = this.f4130a;
            if (i < localeArr.length) {
                locale = localeArr[i];
                return locale;
            }
        }
        locale = null;
        return locale;
    }

    public int hashCode() {
        int i = 1;
        int i2 = 0;
        while (true) {
            Locale[] localeArr = this.f4130a;
            if (i2 >= localeArr.length) {
                return i;
            }
            i = (i * 31) + localeArr[i2].hashCode();
            i2++;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.f4130a;
            if (i < localeArr.length) {
                sb.append(localeArr[i]);
                if (i < this.f4130a.length - 1) {
                    sb.append(',');
                }
                i++;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }
}
