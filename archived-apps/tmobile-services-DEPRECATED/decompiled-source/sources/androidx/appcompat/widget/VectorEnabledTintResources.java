package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.ref.WeakReference;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/VectorEnabledTintResources.class */
public class VectorEnabledTintResources extends Resources {

    /* renamed from: b */
    private static boolean f1451b = false;

    /* renamed from: a */
    private final WeakReference<Context> f1452a;

    public VectorEnabledTintResources(@NonNull Context context, @NonNull Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1452a = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static boolean m21156a() {
        return f1451b;
    }

    /* renamed from: b */
    public static void m21155b(boolean z) {
        f1451b = z;
    }

    /* renamed from: c */
    public static boolean m21154c() {
        return m21156a() && Build.VERSION.SDK_INT <= 20;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final Drawable m21153d(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Context context = this.f1452a.get();
        return context != null ? ResourceManagerInternal.m21400h().m21388t(context, this, i) : super.getDrawable(i);
    }
}
