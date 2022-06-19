package p193e.p194a.p982k0.p989n.p991b;

import com.truecaller.callrecording.p154ui.bubble.BubbleLayout;
import com.truecaller.callrecording.p154ui.bubble.BubblesService;
import com.truecaller.log.AssertionUtil;
import java.util.Iterator;
import java.util.Objects;
/* renamed from: e.a.k0.n.b.e */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/b/e.class */
public final /* synthetic */ class RunnableC16369e implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ BubblesService f46036a;

    /* renamed from: b */
    public final /* synthetic */ BubbleLayout f46037b;

    public /* synthetic */ RunnableC16369e(BubblesService bubblesService, BubbleLayout bubbleLayout) {
        this.f46036a = bubblesService;
        this.f46037b = bubbleLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        BubbleLayout next;
        BubblesService bubblesService = this.f46036a;
        BubbleLayout bubbleLayout = this.f46037b;
        Objects.requireNonNull(bubblesService);
        try {
            bubblesService.m35734b().removeView(bubbleLayout);
            Iterator<BubbleLayout> it = bubblesService.f10801b.iterator();
            do {
                if (!it.hasNext()) {
                    return;
                }
                next = it.next();
            } while (next != bubbleLayout);
            BubbleLayout.AbstractC3635e abstractC3635e = bubbleLayout.f10786h;
            if (abstractC3635e != null) {
                abstractC3635e.mo17478a(bubbleLayout);
            }
            bubblesService.f10801b.remove(next);
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
        }
    }
}
