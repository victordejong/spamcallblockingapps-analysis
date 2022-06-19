package p193e.p194a.p982k0.p989n.p991b;

import com.truecaller.callrecording.p154ui.bubble.BubbleLayout;
import java.util.Timer;
import p193e.p194a.p982k0.p989n.p991b.AbstractC16378j;
/* renamed from: e.a.k0.n.b.m */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/m.class */
public final class C16388m implements BubbleLayout.AbstractC3635e {

    /* renamed from: a */
    public final /* synthetic */ C16380k f46082a;

    public C16388m(C16380k c16380k, String str, AbstractC16378j.AbstractC16379a abstractC16379a) {
        this.f46082a = c16380k;
    }

    @Override // com.truecaller.callrecording.p154ui.bubble.BubbleLayout.AbstractC3635e
    /* renamed from: a */
    public final void mo17478a(BubbleLayout bubbleLayout) {
        C16380k c16380k = this.f46082a;
        C16375i c16375i = c16380k.f46060a;
        if (c16375i != null && c16375i.f46052b) {
            c16375i.f46053c.m35733c();
        }
        C16375i c16375i2 = c16380k.f46060a;
        if (c16375i2 != null) {
            c16375i2.f46051a.unbindService(c16375i2.f46057g);
        }
        c16380k.f46060a = null;
        Timer timer = c16380k.f46063d;
        if (timer != null) {
            timer.cancel();
        }
        c16380k.f46063d = null;
    }
}
