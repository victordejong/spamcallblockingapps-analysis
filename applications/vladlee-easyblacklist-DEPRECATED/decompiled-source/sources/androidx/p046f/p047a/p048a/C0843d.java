package androidx.p046f.p047a.p048a;

import android.graphics.drawable.Drawable;
/* renamed from: androidx.f.a.a.d */
/* loaded from: classes-dex2jar.jar:androidx/f/a/a/d.class */
final class C0843d implements Drawable.Callback {

    /* renamed from: a */
    final /* synthetic */ C0840c f3455a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0843d(C0840c cVar) {
        this.f3455a = cVar;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        this.f3455a.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        this.f3455a.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        this.f3455a.unscheduleSelf(runnable);
    }
}
