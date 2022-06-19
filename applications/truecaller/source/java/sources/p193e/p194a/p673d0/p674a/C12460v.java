package p193e.p194a.p673d0.p674a;

import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.truecaller.C2752R;
import com.truecaller.data.entity.HistoryEvent;
import p193e.p194a.p1187r2.AbstractC19851d0;
/* renamed from: e.a.d0.a.v */
/* loaded from: classes6-dex2jar.jar:e/a/d0/a/v.class */
public final class C12460v<R> implements AbstractC19851d0<HistoryEvent> {

    /* renamed from: a */
    public final /* synthetic */ C12439m f36400a;

    /* renamed from: b */
    public final /* synthetic */ String f36401b;

    public C12460v(C12439m c12439m, String str) {
        this.f36400a = c12439m;
        this.f36401b = str;
    }

    /* JADX WARN: Type inference failed for: r0v31, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    @Override // p193e.p194a.p1187r2.AbstractC19851d0
    public void onResult(HistoryEvent historyEvent) {
        HistoryEvent historyEvent2 = historyEvent;
        if (historyEvent2 != null) {
            char c = historyEvent2.f11541h;
            if (c <= 0) {
                return;
            }
            C12439m c12439m = this.f36400a;
            Long l = c12439m.f36318h;
            if (l != null) {
                c = l.longValue();
            }
            c12439m.f36318h = Long.valueOf(c);
            CharSequence mo14278q = this.f36400a.f36322l.mo14278q(historyEvent2.f11541h, DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL, 524288);
            AbstractC12438l abstractC12438l = (AbstractC12438l) this.f36400a.f57683a;
            if (abstractC12438l == null) {
                return;
            }
            abstractC12438l.mo23016z5(this.f36401b + " · " + this.f36400a.f36319i.mo13768b(C2752R.string.CallerIdLast, mo14278q));
        }
    }
}
