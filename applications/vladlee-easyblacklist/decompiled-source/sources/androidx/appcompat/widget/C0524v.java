package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.appcompat.C0247a;
import androidx.core.graphics.drawable.C0758a;
import androidx.core.p037g.C0741t;
/* renamed from: androidx.appcompat.widget.v */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/v.class */
final class C0524v extends C0523u {

    /* renamed from: a */
    private final SeekBar f2449a;

    /* renamed from: b */
    private Drawable f2450b;

    /* renamed from: c */
    private ColorStateList f2451c = null;

    /* renamed from: d */
    private PorterDuff.Mode f2452d = null;

    /* renamed from: e */
    private boolean f2453e = false;

    /* renamed from: f */
    private boolean f2454f = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0524v(SeekBar seekBar) {
        super(seekBar);
        this.f2449a = seekBar;
    }

    /* renamed from: d */
    private void m8958d() {
        if (this.f2450b == null) {
            return;
        }
        if (this.f2453e || this.f2454f) {
            this.f2450b = C0758a.m8241f(this.f2450b.mutate());
            if (this.f2453e) {
                C0758a.m8251a(this.f2450b, this.f2451c);
            }
            if (this.f2454f) {
                C0758a.m8248a(this.f2450b, this.f2452d);
            }
            if (this.f2450b.isStateful()) {
                this.f2450b.setState(this.f2449a.getDrawableState());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m8962a(Canvas canvas) {
        if (this.f2450b != null) {
            int max = this.f2449a.getMax();
            int i = 1;
            if (max > 1) {
                int intrinsicWidth = this.f2450b.getIntrinsicWidth();
                int intrinsicHeight = this.f2450b.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                if (intrinsicHeight >= 0) {
                    i = intrinsicHeight / 2;
                }
                this.f2450b.setBounds(-i2, -i, i2, i);
                float width = ((this.f2449a.getWidth() - this.f2449a.getPaddingLeft()) - this.f2449a.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(this.f2449a.getPaddingLeft(), this.f2449a.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f2450b.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.appcompat.widget.C0523u
    /* renamed from: a */
    public final void mo8961a(AttributeSet attributeSet, int i) {
        super.mo8961a(attributeSet, i);
        C0484bm a = C0484bm.m9092a(this.f2449a.getContext(), attributeSet, C0247a.C0257j.f763X, i, 0);
        Drawable b = a.m9091b(C0247a.C0257j.f764Y);
        if (b != null) {
            this.f2449a.setThumb(b);
        }
        Drawable a2 = a.m9099a(C0247a.C0257j.f765Z);
        Drawable drawable = this.f2450b;
        if (drawable != null) {
            drawable.setCallback(null);
        }
        this.f2450b = a2;
        if (a2 != null) {
            a2.setCallback(this.f2449a);
            C0758a.m8245b(a2, C0741t.m8325g(this.f2449a));
            if (a2.isStateful()) {
                a2.setState(this.f2449a.getDrawableState());
            }
            m8958d();
        }
        this.f2449a.invalidate();
        if (a.m9079i(C0247a.C0257j.f794ab)) {
            this.f2452d = C0437ah.m9172a(a.m9097a(C0247a.C0257j.f794ab, -1), this.f2452d);
            this.f2454f = true;
        }
        if (a.m9079i(C0247a.C0257j.f793aa)) {
            this.f2451c = a.m9083f(C0247a.C0257j.f793aa);
            this.f2453e = true;
        }
        a.m9100a();
        m8958d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m8960b() {
        Drawable drawable = this.f2450b;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m8959c() {
        Drawable drawable = this.f2450b;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f2449a.getDrawableState())) {
            this.f2449a.invalidateDrawable(drawable);
        }
    }
}
