package p193e.p194a.p372b0.p373a;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.truecaller.common.p156ui.PieChart;
import s1.z.c.l;
/* renamed from: e.a.b0.a.e */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/e.class */
public final class C8300e extends Animation {

    /* renamed from: a */
    public final PieChart f25569a;

    public C8300e(PieChart pieChart) {
        l.e(pieChart, "pieChart");
        this.f25569a = pieChart;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f25569a.setArcAngle(f * 360.0f);
        this.f25569a.invalidate();
    }
}
