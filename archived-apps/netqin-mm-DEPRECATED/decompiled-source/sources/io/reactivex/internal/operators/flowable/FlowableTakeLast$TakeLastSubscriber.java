package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.p543b0.p557i.C9800b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableTakeLast$TakeLastSubscriber.class */
public final class FlowableTakeLast$TakeLastSubscriber<T> extends ArrayDeque<T> implements AbstractC9829h<T>, AbstractC10434d {
    public static final long serialVersionUID = 7240042530241604978L;
    public final AbstractC10433c<? super T> actual;
    public volatile boolean cancelled;
    public final int count;
    public volatile boolean done;

    /* renamed from: s */
    public AbstractC10434d f38431s;
    public final AtomicLong requested = new AtomicLong();
    public final AtomicInteger wip = new AtomicInteger();

    public FlowableTakeLast$TakeLastSubscriber(AbstractC10433c<? super T> cVar, int i) {
        this.actual = cVar;
        this.count = i;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
        this.cancelled = true;
        this.f38431s.cancel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drain() {
        /*
            r5 = this;
            r0 = r5
            java.util.concurrent.atomic.AtomicInteger r0 = r0.wip
            int r0 = r0.getAndIncrement()
            if (r0 != 0) goto L_0x008c
            r0 = r5
            j.a.c<? super T> r0 = r0.actual
            r6 = r0
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.requested
            long r0 = r0.get()
            r7 = r0
        L_0x0017:
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 == 0) goto L_0x001f
            return
        L_0x001f:
            r0 = r7
            r9 = r0
            r0 = r5
            boolean r0 = r0.done
            if (r0 == 0) goto L_0x007f
            r0 = 0
            r11 = r0
        L_0x002c:
            r0 = r11
            r1 = r7
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x005e
            r0 = r5
            boolean r0 = r0.cancelled
            if (r0 == 0) goto L_0x003b
            return
        L_0x003b:
            r0 = r5
            java.lang.Object r0 = r0.poll()
            r13 = r0
            r0 = r13
            if (r0 != 0) goto L_0x004d
            r0 = r6
            r0.onComplete()
            return
        L_0x004d:
            r0 = r6
            r1 = r13
            r0.onNext(r1)
            r0 = r11
            r1 = 1
            long r0 = r0 + r1
            r11 = r0
            goto L_0x002c
        L_0x005e:
            r0 = r7
            r9 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x007f
            r0 = r7
            r9 = r0
            r0 = r7
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x007f
            r0 = r5
            java.util.concurrent.atomic.AtomicLong r0 = r0.requested
            r1 = r11
            long r1 = -r1
            long r0 = r0.addAndGet(r1)
            r9 = r0
        L_0x007f:
            r0 = r9
            r7 = r0
            r0 = r5
            java.util.concurrent.atomic.AtomicInteger r0 = r0.wip
            int r0 = r0.decrementAndGet()
            if (r0 != 0) goto L_0x0017
        L_0x008c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.FlowableTakeLast$TakeLastSubscriber.drain():void");
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
        this.done = true;
        drain();
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        this.actual.onError(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(T t) {
        if (this.count == size()) {
            poll();
        }
        offer(t);
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        if (SubscriptionHelper.validate(this.f38431s, dVar)) {
            this.f38431s = dVar;
            this.actual.onSubscribe(this);
            dVar.request(Long.MAX_VALUE);
        }
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
        if (SubscriptionHelper.validate(j)) {
            C9800b.m2012a(this.requested, j);
            drain();
        }
    }
}
