package p193e.p194a.p798g5.p802e0;

import android.animation.ValueAnimator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import com.truecaller.tagger.tagPicker.TaggerActivity;
import p193e.p194a.p798g5.p801d0.C14470a;
import s1.z.c.l;
/* renamed from: e.a.g5.e0.e */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/e.class */
public final class RunnableC14480e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C14470a f41705a;

    /* renamed from: b */
    public final /* synthetic */ TaggerActivity f41706b;

    public RunnableC14480e(C14470a c14470a, TaggerActivity taggerActivity) {
        this.f41705a = c14470a;
        this.f41706b = taggerActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        FrameLayout frameLayout = this.f41705a.f41666b;
        l.d(frameLayout, "fragmentContainer");
        frameLayout.setAlpha(1.0f);
        FrameLayout frameLayout2 = this.f41705a.f41666b;
        l.d(frameLayout2, "fragmentContainer");
        ValueAnimator ofFloat = ValueAnimator.ofFloat(frameLayout2.getHeight(), 0.0f);
        l.d(ofFloat, "animator");
        ofFloat.setDuration(this.f41706b.getResources().getInteger(17694722));
        ofFloat.setInterpolator(new DecelerateInterpolator(3.0f));
        ofFloat.addUpdateListener(this.f41706b.f15280h);
        ofFloat.start();
    }
}
