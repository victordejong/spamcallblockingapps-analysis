package p193e.p194a.p982k0.p989n.p991b;

import com.truecaller.callrecording.p154ui.bubble.BubblesService;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
/* renamed from: e.a.k0.n.b.b */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/b.class */
public final /* synthetic */ class RunnableC16366b implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ BubblesService f46030a;

    /* renamed from: b */
    public final /* synthetic */ C16370f f46031b;

    public /* synthetic */ RunnableC16366b(BubblesService bubblesService, C16370f c16370f) {
        this.f46030a = bubblesService;
        this.f46031b = c16370f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BubblesService bubblesService = this.f46030a;
        C16370f c16370f = this.f46031b;
        Objects.requireNonNull(bubblesService);
        try {
            bubblesService.m35734b().addView(c16370f, c16370f.getViewParams());
        } catch (RuntimeException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }
}
