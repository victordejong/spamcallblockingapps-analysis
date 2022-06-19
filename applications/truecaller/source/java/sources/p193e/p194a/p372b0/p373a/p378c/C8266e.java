package p193e.p194a.p372b0.p373a.p378c;

import com.truecaller.common.p156ui.C3700R;
import com.truecaller.common.p156ui.groupavatar.GroupAvatarXView;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.b0.a.c.e */
/* loaded from: classes7-dex2jar.jar:e/a/b0/a/c/e.class */
public final class C8266e extends m implements a<Float> {

    /* renamed from: b */
    public final /* synthetic */ GroupAvatarXView f25501b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8266e(GroupAvatarXView groupAvatarXView) {
        super(0);
        this.f25501b = groupAvatarXView;
    }

    public Object invoke() {
        GroupAvatarXView groupAvatarXView = this.f25501b;
        int i = GroupAvatarXView.f11196i;
        return Float.valueOf(groupAvatarXView.getResources().getDimension(C3700R.dimen.avatar_tcx_line_width) / groupAvatarXView.getResources().getDimension(C3700R.dimen.avatar_tcx_default_width));
    }
}
