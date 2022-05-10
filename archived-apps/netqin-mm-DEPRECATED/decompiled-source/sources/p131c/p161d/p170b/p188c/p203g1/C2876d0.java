package p131c.p161d.p170b.p188c.p203g1;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
/* renamed from: c.d.b.c.g1.d0 */
/* loaded from: classes-dex2jar.jar:c/d/b/c/g1/d0.class */
public final class C2876d0 implements AbstractC2893n {

    /* renamed from: a */
    public final Handler f10461a;

    public C2876d0(Handler handler) {
        this.f10461a = handler;
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2893n
    /* renamed from: a */
    public Looper mo28607a() {
        return this.f10461a.getLooper();
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2893n
    /* renamed from: a */
    public Message mo28605a(int i, int i2, int i3) {
        return this.f10461a.obtainMessage(i, i2, i3);
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2893n
    /* renamed from: a */
    public Message mo28604a(int i, int i2, int i3, Object obj) {
        return this.f10461a.obtainMessage(i, i2, i3, obj);
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2893n
    /* renamed from: a */
    public Message mo28602a(int i, Object obj) {
        return this.f10461a.obtainMessage(i, obj);
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2893n
    /* renamed from: a */
    public boolean mo28606a(int i) {
        return this.f10461a.sendEmptyMessage(i);
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2893n
    /* renamed from: a */
    public boolean mo28603a(int i, long j) {
        return this.f10461a.sendEmptyMessageAtTime(i, j);
    }

    @Override // p131c.p161d.p170b.p188c.p203g1.AbstractC2893n
    /* renamed from: b */
    public void mo28601b(int i) {
        this.f10461a.removeMessages(i);
    }
}
