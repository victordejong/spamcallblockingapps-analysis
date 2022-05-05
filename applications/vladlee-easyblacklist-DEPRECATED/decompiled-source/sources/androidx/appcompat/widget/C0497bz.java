package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.bz */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bz.class */
public final class C0497bz extends Resources {

    /* renamed from: a */
    private static boolean f2384a = false;

    /* renamed from: b */
    private final WeakReference<Context> f2385b;

    public C0497bz(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f2385b = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static boolean m9033a() {
        return f2384a && Build.VERSION.SDK_INT <= 20;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Drawable m9032a(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public final Drawable getDrawable(int i) {
        Context context = this.f2385b.get();
        return context != null ? C0451ap.m9150a().m9140a(context, this, i) : super.getDrawable(i);
    }
}
