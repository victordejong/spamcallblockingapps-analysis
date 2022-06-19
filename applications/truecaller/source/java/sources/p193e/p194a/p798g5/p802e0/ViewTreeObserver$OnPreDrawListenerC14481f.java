package p193e.p194a.p798g5.p802e0;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.truecaller.tagger.tagPicker.TaggerActivity;
import p193e.p194a.p798g5.p801d0.C14470a;
import s1.z.c.l;
/* renamed from: e.a.g5.e0.f */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/f.class */
public final class ViewTreeObserver$OnPreDrawListenerC14481f implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ TaggerActivity f41707a;

    public ViewTreeObserver$OnPreDrawListenerC14481f(TaggerActivity taggerActivity) {
        this.f41707a = taggerActivity;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        TaggerActivity taggerActivity = this.f41707a;
        int i = TaggerActivity.f15275i;
        FrameLayout frameLayout = taggerActivity.m34622qa().f41666b;
        l.d(frameLayout, "binding.fragmentContainer");
        frameLayout.getViewTreeObserver().removeOnPreDrawListener(this);
        TaggerActivity taggerActivity2 = this.f41707a;
        C14470a m34622qa = taggerActivity2.m34622qa();
        FrameLayout frameLayout2 = m34622qa.f41666b;
        l.d(frameLayout2, "fragmentContainer");
        frameLayout2.setAlpha(0.0f);
        m34622qa.f41666b.postDelayed(new RunnableC14480e(m34622qa, taggerActivity2), taggerActivity2.getResources().getInteger(17694720));
        return false;
    }
}
