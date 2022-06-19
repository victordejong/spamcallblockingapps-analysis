package p193e.p194a.p982k0.p989n.p991b;

import com.truecaller.callrecording.p154ui.bubble.BubbleLayout;
import p193e.p194a.p982k0.AbstractC16304b;
/* renamed from: e.a.k0.n.b.o */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/o.class */
public final class C16390o implements AbstractC16304b {

    /* renamed from: a */
    public final /* synthetic */ C16380k f46084a;

    public C16390o(C16380k c16380k, String str) {
        this.f46084a = c16380k;
    }

    @Override // p193e.p194a.p982k0.AbstractC16304b
    public void onError(Exception exc) {
        C16375i c16375i;
        C16380k c16380k = this.f46084a;
        BubbleLayout bubbleLayout = c16380k.f46061b;
        if (bubbleLayout == null || (c16375i = c16380k.f46060a) == null) {
            return;
        }
        c16375i.m17496b(bubbleLayout);
    }
}
