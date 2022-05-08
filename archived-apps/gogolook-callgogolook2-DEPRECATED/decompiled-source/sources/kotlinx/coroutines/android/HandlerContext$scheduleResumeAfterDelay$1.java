package kotlinx.coroutines.android;

import android.os.Handler;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n��\u0010��\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n¢\u0006\u0002\b\u0004"}, m815d2 = {"<anonymous>", "", "it", "", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$1.class */
public final class HandlerContext$scheduleResumeAfterDelay$1 extends AbstractC15150l implements AbstractC15118l<Throwable, C14989s> {
    public final /* synthetic */ Runnable $block;
    public final /* synthetic */ HandlerContext this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerContext$scheduleResumeAfterDelay$1(HandlerContext handlerContext, Runnable runnable) {
        super(1);
        this.this$0 = handlerContext;
        this.$block = runnable;
    }

    @Override // p626l.p641z.p642c.AbstractC15118l
    public /* bridge */ /* synthetic */ C14989s invoke(Throwable th) {
        invoke2(th);
        return C14989s.f33022a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        Handler handler;
        handler = this.this$0.handler;
        handler.removeCallbacks(this.$block);
    }
}
