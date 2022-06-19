package p193e.p194a.p947k.p948a.p966l;

import android.animation.ObjectAnimator;
import android.view.animation.LinearInterpolator;
import com.truecaller.videocallerid.p187ui.view.RecordButton;
import p193e.p194a.p682e.C12864a2;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.a.l.b */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/l/b.class */
public final class C15906b extends m implements a<ObjectAnimator> {

    /* renamed from: b */
    public final /* synthetic */ RecordButton f44883b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15906b(RecordButton recordButton) {
        super(0);
        this.f44883b = recordButton;
    }

    public Object invoke() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f44883b.f16100t.f45582b, "progress", 0.0f, 100.0f);
        LinearInterpolator linearInterpolator = new LinearInterpolator();
        l.e(ofFloat, "$this$setTimeInterpolator");
        l.e(linearInterpolator, "interpolator");
        ofFloat.setInterpolator(linearInterpolator);
        C12864a2.m22557f(ofFloat, true, new C15905a(this));
        return ofFloat;
    }
}
