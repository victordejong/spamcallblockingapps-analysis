package p131c.p431l.p432a.p458g;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
/* renamed from: c.l.a.g.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/g/b.class */
public class C6809b extends Drawable implements Animatable {

    /* renamed from: a */
    public AbstractC6811c f20972a;

    /* renamed from: b */
    public final Drawable.Callback f20973b;

    /* renamed from: c.l.a.g.b$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/g/b$a.class */
    public class C6810a implements Drawable.Callback {
        public C6810a() {
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(Drawable drawable) {
            C6809b.this.invalidateSelf();
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
            C6809b.this.scheduleSelf(runnable, j);
        }

        @Override // android.graphics.drawable.Drawable.Callback
        public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
            C6809b.this.unscheduleSelf(runnable);
        }
    }

    public C6809b(AbstractC6811c cVar) {
        C6810a aVar = new C6810a();
        this.f20973b = aVar;
        this.f20972a = cVar;
        cVar.m19708a(aVar);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f20972a.mo19710a(canvas, getBounds());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) (this.f20972a.m19707b() + 1.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) (this.f20972a.m19705d() + 1.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f20972a.m19703f();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f20972a.mo19714a(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f20972a.mo19709a(colorFilter);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f20972a.m19700i();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f20972a.m19699j();
    }
}
