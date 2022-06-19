package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.AbstractC0541m;
/* renamed from: androidx.work.impl.utils.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/d.class */
public class C0523d {

    /* renamed from: a */
    private static final String f2629a = AbstractC0541m.m4305f("PackageManagerHelper");

    /* renamed from: a */
    public static void m4340a(Context context, Class<?> cls, boolean z) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
            AbstractC0541m.m4308c().m4310a(f2629a, String.format("%s %s", cls.getName(), z ? "enabled" : "disabled"), new Throwable[0]);
        } catch (Exception e) {
            AbstractC0541m.m4308c().m4310a(f2629a, String.format("%s could not be %s", cls.getName(), z ? "enabled" : "disabled"), e);
        }
    }
}
