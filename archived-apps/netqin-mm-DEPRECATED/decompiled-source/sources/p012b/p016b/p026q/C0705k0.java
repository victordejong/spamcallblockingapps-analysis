package p012b.p016b.p026q;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* renamed from: b.b.q.k0 */
/* loaded from: classes-dex2jar.jar:b/b/q/k0.class */
public class C0705k0 extends Resources {

    /* renamed from: b */
    public static boolean f3471b = false;

    /* renamed from: a */
    public final WeakReference<Context> f3472a;

    public C0705k0(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f3472a = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static boolean m36350a() {
        return f3471b;
    }

    /* renamed from: b */
    public static boolean m36348b() {
        return m36350a() && Build.VERSION.SDK_INT <= 20;
    }

    /* renamed from: a */
    public final Drawable m36349a(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Context context = this.f3472a.get();
        return context != null ? C0728v.m36215a().m36204a(context, this, i) : super.getDrawable(i);
    }
}
