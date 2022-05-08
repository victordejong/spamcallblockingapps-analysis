package p459j.p460a.p582w0;

import android.content.res.Resources;
import androidx.core.p005os.ConfigurationCompat;
import java.util.Locale;
import p626l.p631e0.C14966w;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.o2 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/o2.class */
public final class C14098o2 {
    static {
        new C14098o2();
    }

    /* renamed from: a */
    public static final Locale m2551a() {
        Resources system = Resources.getSystem();
        C15149k.m383a((Object) system, "Resources.getSystem()");
        Locale locale = ConfigurationCompat.getLocales(system.getConfiguration()).get(0);
        C15149k.m383a((Object) locale, "ConfigurationCompat.getL…m().configuration).get(0)");
        return locale;
    }

    /* renamed from: b */
    public static final boolean m2550b() {
        boolean z = true;
        if (!C14966w.m715b("JP", m2551a().getCountry(), true) || !C14966w.m715b("ja", m2551a().getLanguage(), true)) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public static final boolean m2549c() {
        boolean z = true;
        if ((!C14966w.m715b("KR", m2551a().getCountry(), true) && !C14966w.m715b("KP", m2551a().getCountry(), true)) || !C14966w.m715b("ko", m2551a().getLanguage(), true)) {
            z = false;
        }
        return z;
    }

    /* renamed from: d */
    public static final boolean m2548d() {
        boolean z = true;
        if (!C14966w.m715b("TW", m2551a().getCountry(), true) || !C14966w.m715b("zh", m2551a().getLanguage(), true)) {
            z = false;
        }
        return z;
    }
}
