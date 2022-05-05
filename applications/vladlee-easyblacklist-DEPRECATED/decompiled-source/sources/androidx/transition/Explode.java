package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.transition.C1200al;
/* loaded from: classes-dex2jar.jar:androidx/transition/Explode.class */
public class Explode extends Visibility {

    /* renamed from: a */
    private static final TimeInterpolator f5095a = new DecelerateInterpolator();

    /* renamed from: i */
    private static final TimeInterpolator f5096i = new AccelerateInterpolator();

    /* renamed from: j */
    private int[] f5097j;

    public Explode() {
        this.f5097j = new int[2];
        mo6584a(new C1267s());
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5097j = new int[2];
        mo6584a(new C1267s());
    }

    /* renamed from: a */
    private static float m6624a(float f, float f2) {
        return (float) Math.sqrt((f * f) + (f2 * f2));
    }

    /* renamed from: a */
    private static float m6623a(View view, int i, int i2) {
        return m6624a(Math.max(i, view.getWidth() - i), Math.max(i2, view.getHeight() - i2));
    }

    /* renamed from: a */
    private void m6622a(View view, Rect rect, int[] iArr) {
        int i;
        int i2;
        view.getLocationOnScreen(this.f5097j);
        int[] iArr2 = this.f5097j;
        int i3 = iArr2[0];
        int i4 = iArr2[1];
        Rect k = m6594k();
        if (k == null) {
            i2 = (view.getWidth() / 2) + i3 + Math.round(view.getTranslationX());
            i = (view.getHeight() / 2) + i4 + Math.round(view.getTranslationY());
        } else {
            i2 = k.centerX();
            i = k.centerY();
        }
        float centerX = rect.centerX() - i2;
        float centerY = rect.centerY() - i;
        if (centerX == 0.0f && centerY == 0.0f) {
            centerX = ((float) (Math.random() * 2.0d)) - 1.0f;
            centerY = ((float) (Math.random() * 2.0d)) - 1.0f;
        }
        float a = m6624a(centerX, centerY);
        float f = centerX / a;
        float f2 = centerY / a;
        float a2 = m6623a(view, i2 - i3, i - i4);
        iArr[0] = Math.round(f * a2);
        iArr[1] = Math.round(a2 * f2);
    }

    /* renamed from: d */
    private void m6621d(C1224bf bfVar) {
        View view = bfVar.f5246b;
        view.getLocationOnScreen(this.f5097j);
        int[] iArr = this.f5097j;
        int i = iArr[0];
        int i2 = iArr[1];
        bfVar.f5245a.put("android:explode:screenBounds", new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2));
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo6567a(ViewGroup viewGroup, View view, C1224bf bfVar) {
        float f;
        float f2;
        if (bfVar == null) {
            return null;
        }
        Rect rect = (Rect) bfVar.f5245a.get("android:explode:screenBounds");
        int i = rect.left;
        int i2 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] iArr = (int[]) bfVar.f5246b.getTag(C1200al.C1201a.f5208h);
        if (iArr != null) {
            f2 = (iArr[0] - rect.left) + translationX;
            f = (iArr[1] - rect.top) + translationY;
            rect.offsetTo(iArr[0], iArr[1]);
        } else {
            f2 = translationX;
            f = translationY;
        }
        m6622a(viewGroup, rect, this.f5097j);
        int[] iArr2 = this.f5097j;
        return C1226bh.m6535a(view, bfVar, i, i2, translationX, translationY, f2 + iArr2[0], f + iArr2[1], f5096i);
    }

    @Override // androidx.transition.Visibility
    /* renamed from: a */
    public final Animator mo6566a(ViewGroup viewGroup, View view, C1224bf bfVar, C1224bf bfVar2) {
        if (bfVar2 == null) {
            return null;
        }
        Rect rect = (Rect) bfVar2.f5245a.get("android:explode:screenBounds");
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        m6622a(viewGroup, rect, this.f5097j);
        int[] iArr = this.f5097j;
        return C1226bh.m6535a(view, bfVar2, rect.left, rect.top, translationX + iArr[0], translationY + iArr[1], translationX, translationY, f5095a);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: a */
    public final void mo966a(C1224bf bfVar) {
        super.mo966a(bfVar);
        m6621d(bfVar);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    /* renamed from: b */
    public final void mo965b(C1224bf bfVar) {
        super.mo965b(bfVar);
        m6621d(bfVar);
    }
}
