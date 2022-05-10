package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p554f.C9772a;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableObserveOn$ObserveOnObserver.class */
public final class ObservableObserveOn$ObserveOnObserver<T> extends BasicIntQueueDisposable<T> implements AbstractC9844r<T>, Runnable {
    public static final long serialVersionUID = 6576896619930983584L;
    public final AbstractC9844r<? super T> actual;
    public final int bufferSize;
    public volatile boolean cancelled;
    public final boolean delayError;
    public volatile boolean done;
    public Throwable error;
    public boolean outputFused;
    public AbstractC9661j<T> queue;

    /* renamed from: s */
    public AbstractC9861b f38507s;
    public int sourceMode;
    public final AbstractC9845s.AbstractC9848c worker;

    public ObservableObserveOn$ObserveOnObserver(AbstractC9844r<? super T> rVar, AbstractC9845s.AbstractC9848c cVar, boolean z, int i) {
        this.actual = rVar;
        this.worker = cVar;
        this.delayError = z;
        this.bufferSize = i;
    }

    public boolean checkTerminated(boolean z, boolean z2, AbstractC9844r<? super T> rVar) {
        if (this.cancelled) {
            this.queue.clear();
            return true;
        } else if (!z) {
            return false;
        } else {
            Throwable th = this.error;
            if (this.delayError) {
                if (!z2) {
                    return false;
                }
                if (th != null) {
                    rVar.onError(th);
                } else {
                    rVar.onComplete();
                }
                this.worker.dispose();
                return true;
            } else if (th != null) {
                this.queue.clear();
                rVar.onError(th);
                this.worker.dispose();
                return true;
            } else if (!z2) {
                return false;
            } else {
                rVar.onComplete();
                this.worker.dispose();
                return true;
            }
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public void clear() {
        this.queue.clear();
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            this.f38507s.dispose();
            this.worker.dispose();
            if (getAndIncrement() == 0) {
                this.queue.clear();
            }
        }
    }

    public void drainFused() {
        int i = 1;
        while (!this.cancelled) {
            boolean z = this.done;
            Throwable th = this.error;
            if (this.delayError || !z || th == null) {
                this.actual.onNext(null);
                if (z) {
                    Throwable th2 = this.error;
                    if (th2 != null) {
                        this.actual.onError(th2);
                    } else {
                        this.actual.onComplete();
                    }
                    this.worker.dispose();
                    return;
                }
                int addAndGet = addAndGet(-i);
                i = addAndGet;
                if (addAndGet == 0) {
                    return;
                }
            } else {
                this.actual.onError(th);
                this.worker.dispose();
                return;
            }
        }
    }

    public void drainNormal() {
        AbstractC9661j<T> jVar = this.queue;
        AbstractC9844r<? super T> rVar = this.actual;
        int i = 1;
        while (!checkTerminated(this.done, jVar.isEmpty(), rVar)) {
            while (true) {
                boolean z = this.done;
                try {
                    Object obj = (T) jVar.poll();
                    boolean z2 = obj == null;
                    if (!checkTerminated(z, z2, rVar)) {
                        if (z2) {
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else {
                            rVar.onNext(obj);
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th) {
                    C9863a.m1822b(th);
                    this.f38507s.dispose();
                    jVar.clear();
                    rVar.onError(th);
                    this.worker.dispose();
                    return;
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public boolean isEmpty() {
        return this.queue.isEmpty();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        if (!this.done) {
            this.done = true;
            schedule();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        if (this.done) {
            C9815a.m1923b(th);
            return;
        }
        this.error = th;
        this.done = true;
        schedule();
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (!this.done) {
            if (this.sourceMode != 2) {
                this.queue.offer(t);
            }
            schedule();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.validate(this.f38507s, bVar)) {
            this.f38507s = bVar;
            if (bVar instanceof AbstractC9656e) {
                AbstractC9656e eVar = (AbstractC9656e) bVar;
                int requestFusion = eVar.requestFusion(7);
                if (requestFusion == 1) {
                    this.sourceMode = requestFusion;
                    this.queue = eVar;
                    this.done = true;
                    this.actual.onSubscribe(this);
                    schedule();
                    return;
                } else if (requestFusion == 2) {
                    this.sourceMode = requestFusion;
                    this.queue = eVar;
                    this.actual.onSubscribe(this);
                    return;
                }
            }
            this.queue = new C9772a(this.bufferSize);
            this.actual.onSubscribe(this);
        }
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9661j
    public T poll() throws Exception {
        return this.queue.poll();
    }

    @Override // p530d.p541c.p543b0.p546c.AbstractC9657f
    public int requestFusion(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        this.outputFused = true;
        return 2;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.outputFused) {
            drainFused();
        } else {
            drainNormal();
        }
    }

    public void schedule() {
        if (getAndIncrement() == 0) {
            this.worker.mo1851a(this);
        }
    }
}
