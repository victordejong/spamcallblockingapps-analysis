package p193e.p194a.p717f.p733y;

import com.truecaller.incallui.service.InCallUIService;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.f.y.h */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/h.class */
public final class C13770h extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ InCallUIService f39928b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13770h(InCallUIService inCallUIService) {
        super(0);
        this.f39928b = inCallUIService;
    }

    public Object invoke() {
        InCallUIService inCallUIService = this.f39928b;
        inCallUIService.onCallAudioStateChanged(inCallUIService.getCallAudioState());
        return s.a;
    }
}
