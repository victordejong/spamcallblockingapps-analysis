package androidx.core.p005os;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;
/* renamed from: androidx.core.os.d */
/* loaded from: classes-dex2jar.jar:androidx/core/os/d.class */
public final class C0230d {

    /* renamed from: a */
    private AbstractC0231f f1343a;

    static {
        m5943a(new Locale[0]);
    }

    private C0230d(AbstractC0231f abstractC0231f) {
        this.f1343a = abstractC0231f;
    }

    /* renamed from: a */
    public static C0230d m5943a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? m5940d(new LocaleList(localeArr)) : new C0230d(new e(localeArr));
    }

    /* renamed from: b */
    static Locale m5942b(String str) {
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

    /* renamed from: d */
    public static C0230d m5940d(LocaleList localeList) {
        return new C0230d(new g(localeList));
    }

    /* renamed from: c */
    public Locale m5941c(int i) {
        return this.f1343a.get(i);
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0230d) && this.f1343a.equals(((C0230d) obj).f1343a);
    }

    public int hashCode() {
        return this.f1343a.hashCode();
    }

    public String toString() {
        return this.f1343a.toString();
    }
}
