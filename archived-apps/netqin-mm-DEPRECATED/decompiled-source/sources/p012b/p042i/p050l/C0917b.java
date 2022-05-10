package p012b.p042i.p050l;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;
/* renamed from: b.i.l.b */
/* loaded from: classes-dex2jar.jar:b/i/l/b.class */
public final class C0917b {

    /* renamed from: a */
    public AbstractC0919d f4128a;

    static {
        m35499a(new Locale[0]);
    }

    public C0917b(AbstractC0919d dVar) {
        this.f4128a = dVar;
    }

    /* renamed from: a */
    public static C0917b m35501a(LocaleList localeList) {
        return new C0917b(new C0920e(localeList));
    }

    /* renamed from: a */
    public static C0917b m35499a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? m35501a(new LocaleList(localeArr)) : new C0917b(new C0918c(localeArr));
    }

    /* renamed from: a */
    public static Locale m35500a(String str) {
        if (str.contains("-")) {
            String[] split = str.split("-", -1);
            if (split.length > 2) {
                return new Locale(split[0], split[1], split[2]);
            }
            if (split.length > 1) {
                return new Locale(split[0], split[1]);
            }
            if (split.length == 1) {
                return new Locale(split[0]);
            }
        } else if (!str.contains("_")) {
            return new Locale(str);
        } else {
            String[] split2 = str.split("_", -1);
            if (split2.length > 2) {
                return new Locale(split2[0], split2[1], split2[2]);
            }
            if (split2.length > 1) {
                return new Locale(split2[0], split2[1]);
            }
            if (split2.length == 1) {
                return new Locale(split2[0]);
            }
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    /* renamed from: a */
    public Locale m35502a(int i) {
        return this.f4128a.get(i);
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0917b) && this.f4128a.equals(((C0917b) obj).f4128a);
    }

    public int hashCode() {
        return this.f4128a.hashCode();
    }

    public String toString() {
        return this.f4128a.toString();
    }
}
