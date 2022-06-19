package p193e.p194a.p372b0.p373a;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.truecaller.common.p156ui.LineChart;
import s1.z.c.l;
/* renamed from: e.a.b0.a.j */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/j.class */
public final class C8314j extends Animation {

    /* renamed from: a */
    public final LineChart f25601a;

    public C8314j(LineChart lineChart) {
        l.e(lineChart, "lineChart");
        this.f25601a = lineChart;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f25601a.setProgress(this.f25601a.getWidth() * f);
        this.f25601a.invalidate();
    }
}
