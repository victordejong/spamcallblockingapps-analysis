package androidx.core.p005os;

import android.content.res.Configuration;
import android.os.Build;
/* renamed from: androidx.core.os.b */
/* loaded from: classes-dex2jar.jar:androidx/core/os/b.class */
public final class C0228b {
    /* renamed from: a */
    public static C0230d m5945a(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? C0230d.m5940d(configuration.getLocales()) : C0230d.m5943a(configuration.locale);
    }
}
