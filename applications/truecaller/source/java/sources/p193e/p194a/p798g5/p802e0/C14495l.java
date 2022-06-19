package p193e.p194a.p798g5.p802e0;

import com.truecaller.common.tag.TagView;
import com.truecaller.tagger.tagPicker.TaggerViewModel;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.p801d0.C14471b;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.g5.e0.l */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/l.class */
public final class C14495l extends m implements l<String, s> {

    /* renamed from: b */
    public final /* synthetic */ C14471b f41734b;

    /* renamed from: c */
    public final /* synthetic */ View$OnClickListenerC14484i f41735c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14495l(C14471b c14471b, View$OnClickListenerC14484i view$OnClickListenerC14484i) {
        super(1);
        this.f41734b = c14471b;
        this.f41735c = view$OnClickListenerC14484i;
    }

    /* renamed from: d */
    public Object m20048d(Object obj) {
        C8551c availableTag;
        String str = (String) obj;
        TagView tagView = this.f41735c.f41714i;
        if (tagView == null || (availableTag = tagView.getAvailableTag()) == null) {
            TaggerViewModel.m34621c(this.f41735c.m20052TA(), 0L, str, false, 5);
        } else {
            TaggerViewModel.m34621c(this.f41735c.m20052TA(), availableTag.f26350a, str, false, 4);
        }
        this.f41734b.f41667a.setOnTouchListener(new View$OnTouchListenerC14494k(this));
        return s.a;
    }
}
