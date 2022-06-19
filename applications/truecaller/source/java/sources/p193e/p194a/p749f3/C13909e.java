package p193e.p194a.p749f3;

import com.truecaller.callbubbles.C3590R;
import com.truecaller.callbubbles.CallBubblesContainerView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.f3.e */
/* loaded from: classes6-dex2jar.jar:e/a/f3/e.class */
public final class C13909e extends m implements a<AvatarXView> {

    /* renamed from: b */
    public final /* synthetic */ CallBubblesContainerView f40302b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13909e(CallBubblesContainerView callBubblesContainerView) {
        super(0);
        this.f40302b = callBubblesContainerView;
    }

    public Object invoke() {
        C8243a avatarXPresenter;
        AvatarXView avatarXView = (AvatarXView) this.f40302b.findViewById(C3590R.C3592id.avatarX);
        avatarXPresenter = this.f40302b.getAvatarXPresenter();
        avatarXView.setPresenter(avatarXPresenter);
        return avatarXView;
    }
}
