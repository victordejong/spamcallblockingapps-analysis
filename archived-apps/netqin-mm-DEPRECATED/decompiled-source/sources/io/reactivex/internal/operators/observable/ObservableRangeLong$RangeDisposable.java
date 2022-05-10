package io.reactivex.internal.operators.observable;

import io.reactivex.internal.observers.BasicIntQueueDisposable;
import p530d.p541c.AbstractC9844r;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable.class */
public final class ObservableRangeLong$RangeDisposable extends BasicIntQueueDisposable<Long> {
    public static final long serialVersionUID = 396518478098735504L;
    public final AbstractC9844r<? super Long> actual;
    public final long end;
    public boolean fused;
    public long index;

    public ObservableRangeLong$RangeDisposable(AbstractC9844r<? super Long> rVar, long j, long j2) {
        this.actual = rVar;
        this.index = j;
        this.end = j2;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.index = this.end;
        lazySet(1);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        set(1);
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return get() != 0;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.index == this.end;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public Long poll() throws Exception {
        long j = this.index;
        if (j != this.end) {
            this.index = 1 + j;
            return Long.valueOf(j);
        }
        lazySet(1);
        return null;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        if ((i & 1) == 0) {
            return 0;
        }
        this.fused = true;
        return 1;
    }

    public void run() {
        if (!this.fused) {
            AbstractC9844r<? super Long> rVar = this.actual;
            long j = this.end;
            for (long j2 = this.index; j2 != j && get() == 0; j2++) {
                rVar.onNext(Long.valueOf(j2));
            }
            if (get() == 0) {
                lazySet(1);
                rVar.onComplete();
            }
        }
    }
}
