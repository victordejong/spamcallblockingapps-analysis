package p012b.p042i.p050l;

import android.content.res.Configuration;
import android.os.Build;
/* renamed from: b.i.l.a */
/* loaded from: classes-dex2jar.jar:b/i/l/a.class */
public final class C0916a {
    /* renamed from: a */
    public static C0917b m35503a(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? C0917b.m35501a(configuration.getLocales()) : C0917b.m35499a(configuration.locale);
    }
}
