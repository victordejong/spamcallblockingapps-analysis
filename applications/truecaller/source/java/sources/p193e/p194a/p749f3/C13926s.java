package p193e.p194a.p749f3;

import com.truecaller.callbubbles.CallBubblesContainerView;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.f3.s */
/* loaded from: classes6-dex2jar.jar:e/a/f3/s.class */
public final class C13926s extends m implements l<CallBubblesContainerView, s> {

    /* renamed from: b */
    public final /* synthetic */ AvatarXConfig f40332b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13926s(AvatarXConfig avatarXConfig) {
        super(1);
        this.f40332b = avatarXConfig;
    }

    /* renamed from: d */
    public Object m20955d(Object obj) {
        CallBubblesContainerView callBubblesContainerView = (CallBubblesContainerView) obj;
        s1.z.c.l.e(callBubblesContainerView, "it");
        callBubblesContainerView.setAvatarXConfig(this.f40332b);
        return s.a;
    }
}
