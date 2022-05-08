package p081h.p203i.p204a.p224e.p259j.p260a;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.dynamite.DynamiteModule;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.y1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/y1.class */
public final class C7464y1 {
    /* renamed from: a */
    public static DynamiteModule m20513a(Context context) throws C7166a2 {
        try {
            return DynamiteModule.m31896a(context, DynamiteModule.f6680i, "com.google.android.gms.ads.dynamite");
        } catch (Exception e) {
            throw new C7166a2(e);
        }
    }

    /* renamed from: a */
    public static <T> T m20512a(Context context, String str, AbstractC7476z1<IBinder, T> z1Var) throws C7166a2 {
        try {
            return z1Var.apply(m20513a(context).m31891a(str));
        } catch (Exception e) {
            throw new C7166a2(e);
        }
    }
}
