package p131c.p161d.p282e.p288k;

import java.util.Map;
import p131c.p161d.p282e.p313o.AbstractC5471b;
import p131c.p161d.p282e.p313o.C5470a;
/* renamed from: c.d.e.k.o */
/* loaded from: classes2-dex2jar.jar:c/d/e/k/o.class */
public final /* synthetic */ class RunnableC5181o implements Runnable {

    /* renamed from: a */
    public final Map.Entry f17832a;

    /* renamed from: b */
    public final C5470a f17833b;

    public RunnableC5181o(Map.Entry entry, C5470a aVar) {
        this.f17832a = entry;
        this.f17833b = aVar;
    }

    /* renamed from: a */
    public static Runnable m24339a(Map.Entry entry, C5470a aVar) {
        return new RunnableC5181o(entry, aVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        ((AbstractC5471b) this.f17832a.getKey()).mo23195a(this.f17833b);
    }
}
