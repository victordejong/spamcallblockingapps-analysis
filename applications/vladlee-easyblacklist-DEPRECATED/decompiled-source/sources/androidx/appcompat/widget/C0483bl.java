package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.bl */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bl.class */
final class C0483bl extends C0458aq {

    /* renamed from: a */
    private final WeakReference<Context> f2335a;

    public C0483bl(Context context, Resources resources) {
        super(resources);
        this.f2335a = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.C0458aq, android.content.res.Resources
    public final Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f2335a.get();
        if (!(drawable == null || context == null)) {
            C0451ap.m9150a().m9145a(context, i, drawable);
        }
        return drawable;
    }
}
