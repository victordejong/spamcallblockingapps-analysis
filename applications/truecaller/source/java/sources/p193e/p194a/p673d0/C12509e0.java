package p193e.p194a.p673d0;

import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.data.entity.HistoryEvent;
/* renamed from: e.a.d0.e0 */
/* loaded from: classes6-dex2jar.jar:e/a/d0/e0.class */
public class C12509e0 implements AbstractC12537o0 {

    /* renamed from: a */
    public final /* synthetic */ HistoryEvent f36537a;

    /* renamed from: b */
    public final /* synthetic */ C12511f0 f36538b;

    public C12509e0(C12511f0 c12511f0, HistoryEvent historyEvent) {
        this.f36538b = c12511f0;
        this.f36537a = historyEvent;
    }

    @Override // p193e.p194a.p673d0.AbstractC12537o0
    /* renamed from: a */
    public void mo22888a(CallContextMessage callContextMessage) {
        HistoryEvent historyEvent = this.f36537a;
        historyEvent.f11555v = callContextMessage;
        C12511f0 c12511f0 = this.f36538b;
        C12560v c12560v = c12511f0.f36542C;
        c12511f0.m22912s(c12560v, c12560v.f36681m, historyEvent);
    }

    @Override // p193e.p194a.p673d0.AbstractC12537o0
    /* renamed from: b */
    public void mo22887b() {
    }
}
