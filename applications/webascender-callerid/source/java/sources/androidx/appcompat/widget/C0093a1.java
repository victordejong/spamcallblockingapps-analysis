package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.a1 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/a1.class */
public class C0093a1 extends Resources {

    /* renamed from: b */
    private static boolean f454b = false;

    /* renamed from: a */
    private final WeakReference<Context> f455a;

    public C0093a1(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f455a = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static boolean m6652a() {
        return f454b;
    }

    /* renamed from: b */
    public static void m6651b(boolean z) {
        f454b = z;
    }

    /* renamed from: c */
    public static boolean m6650c() {
        return m6652a() && Build.VERSION.SDK_INT <= 20;
    }

    /* renamed from: d */
    public final Drawable m6649d(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Context context = this.f455a.get();
        return context != null ? C0115l0.m6545h().m6533t(context, this, i) : super.getDrawable(i);
    }
}
