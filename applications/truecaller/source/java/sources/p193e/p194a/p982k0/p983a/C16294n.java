package p193e.p194a.p982k0.p983a;

import com.truecaller.data.entity.CallRecording;
import com.truecaller.data.entity.HistoryEvent;
import p193e.p194a.p1187r2.AbstractC19851d0;
import s1.z.c.l;
/* renamed from: e.a.k0.a.n */
/* loaded from: classes7-dex2jar.jar:e/a/k0/a/n.class */
public final class C16294n<R> implements AbstractC19851d0<HistoryEvent> {

    /* renamed from: a */
    public final /* synthetic */ C16295o f45893a;

    /* renamed from: b */
    public final /* synthetic */ String f45894b;

    public C16294n(C16295o c16295o, String str) {
        this.f45893a = c16295o;
        this.f45894b = str;
    }

    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(HistoryEvent historyEvent) {
        HistoryEvent historyEvent2 = historyEvent;
        if (historyEvent2 != null) {
            l.d(historyEvent2, "it");
            if (!(historyEvent2.f11547n == null)) {
                historyEvent2 = null;
            }
            if (historyEvent2 == null) {
                return;
            }
            l.d(historyEvent2, "it");
            this.f45893a.f45895a.mo16233o(new CallRecording(-1L, historyEvent2.f11534a, this.f45894b));
        }
    }
}
