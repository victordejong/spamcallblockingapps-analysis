package p193e.p194a.p798g5.p802e0;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import com.truecaller.common.p156ui.FlowLayout;
import com.truecaller.common.tag.TagView;
import com.truecaller.tagger.tagPicker.TaggerViewModel;
import java.util.Objects;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.p801d0.C14471b;
import s1.z.c.l;
/* renamed from: e.a.g5.e0.n */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/n.class */
public final class C14497n extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC14484i f41738a;

    public C14497n(View$OnClickListenerC14484i view$OnClickListenerC14484i) {
        this.f41738a = view$OnClickListenerC14484i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        l.e(animator, "animation");
        View$OnClickListenerC14484i view$OnClickListenerC14484i = this.f41738a;
        s1.a.l[] lVarArr = View$OnClickListenerC14484i.f41709t;
        TaggerViewModel m20052TA = view$OnClickListenerC14484i.m20052TA();
        TagView tagView = this.f41738a.f41714i;
        C8551c c8551c = null;
        C8551c availableTag = tagView != null ? tagView.getAvailableTag() : null;
        TagView tagView2 = this.f41738a.f41715j;
        if (tagView2 != null) {
            c8551c = tagView2.getAvailableTag();
        }
        m20052TA.m34619e(availableTag, c8551c);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        l.e(animator, "animation");
        View$OnClickListenerC14484i view$OnClickListenerC14484i = this.f41738a;
        ValueAnimator valueAnimator = (ValueAnimator) animator;
        Objects.requireNonNull(view$OnClickListenerC14484i);
        l.e(valueAnimator, "animation");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        float floatValue = ((Float) animatedValue).floatValue();
        C14471b m20054RA = view$OnClickListenerC14484i.m20054RA();
        FlowLayout flowLayout = m20054RA.f41677k;
        l.d(flowLayout, "tagContainerLevel2");
        int childCount = flowLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = m20054RA.f41677k.getChildAt(i);
            if ((childAt instanceof TagView) && childAt != view$OnClickListenerC14484i.f41715j) {
                childAt.setAlpha(floatValue);
            }
        }
        m20054RA.f41676j.invalidate();
    }
}
