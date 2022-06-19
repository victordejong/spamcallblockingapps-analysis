package p193e.p194a.p372b0.p373a.p376b;

import android.animation.ValueAnimator;
import com.truecaller.common.p156ui.avatar.AvatarXView;
/* renamed from: e.a.b0.a.b.e */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/b/e.class */
public final class C8249e implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a */
    public final /* synthetic */ AvatarXView.C3708c f25459a;

    public C8249e(AvatarXView.C3708c c3708c) {
        this.f25459a = c3708c;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        AvatarXView avatarXView = AvatarXView.this;
        float f = avatarXView.f11130q;
        boolean z = avatarXView.f11132s;
        avatarXView.f11130q = f + (z ? 8 : 4);
        float f2 = avatarXView.f11131r;
        int i = 4;
        if (z) {
            i = -4;
        }
        float f3 = f2 + i;
        avatarXView.f11131r = f3;
        if (f3 <= 0.0f || f3 >= 360.0f) {
            avatarXView.f11132s = !z;
        }
        avatarXView.invalidate();
    }
}
