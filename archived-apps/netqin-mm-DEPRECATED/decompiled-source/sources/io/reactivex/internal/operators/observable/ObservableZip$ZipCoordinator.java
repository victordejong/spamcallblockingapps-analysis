package io.reactivex.internal.operators.observable;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import p530d.p541c.AbstractC9843q;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p542a0.AbstractC9645h;
import p530d.p541c.p543b0.p545b.C9650a;
import p530d.p541c.p543b0.p548e.p552d.C9765z;
import p530d.p541c.p568x.AbstractC9861b;
import p530d.p541c.p569y.C9863a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator.class */
public final class ObservableZip$ZipCoordinator<T, R> extends AtomicInteger implements AbstractC9861b {
    public static final long serialVersionUID = 2983708048395377667L;
    public final AbstractC9844r<? super R> actual;
    public volatile boolean cancelled;
    public final boolean delayError;
    public final C9765z<T, R>[] observers;
    public final T[] row;
    public final AbstractC9645h<? super Object[], ? extends R> zipper;

    public ObservableZip$ZipCoordinator(AbstractC9844r<? super R> rVar, AbstractC9645h<? super Object[], ? extends R> hVar, int i, boolean z) {
        this.actual = rVar;
        this.zipper = hVar;
        this.observers = new C9765z[i];
        this.row = (T[]) new Object[i];
        this.delayError = z;
    }

    public void cancel() {
        clear();
        cancelSources();
    }

    public void cancelSources() {
        for (C9765z<T, R> zVar : this.observers) {
            zVar.m2070a();
        }
    }

    public boolean checkTerminated(boolean z, boolean z2, AbstractC9844r<? super R> rVar, boolean z3, C9765z<?, ?> zVar) {
        if (this.cancelled) {
            cancel();
            return true;
        } else if (!z) {
            return false;
        } else {
            if (!z3) {
                Throwable th = zVar.f36901d;
                if (th != null) {
                    cancel();
                    rVar.onError(th);
                    return true;
                } else if (!z2) {
                    return false;
                } else {
                    cancel();
                    rVar.onComplete();
                    return true;
                }
            } else if (!z2) {
                return false;
            } else {
                Throwable th2 = zVar.f36901d;
                cancel();
                if (th2 != null) {
                    rVar.onError(th2);
                    return true;
                }
                rVar.onComplete();
                return true;
            }
        }
    }

    public void clear() {
        for (C9765z<T, R> zVar : this.observers) {
            zVar.f36899b.clear();
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        if (!this.cancelled) {
            this.cancelled = true;
            cancelSources();
            if (getAndIncrement() == 0) {
                clear();
            }
        }
    }

    public void drain() {
        if (getAndIncrement() == 0) {
            C9765z<T, R>[] zVarArr = this.observers;
            AbstractC9844r<? super R> rVar = this.actual;
            T[] tArr = this.row;
            boolean z = this.delayError;
            int i = 1;
            while (true) {
                int i2 = 0;
                int i3 = 0;
                for (C9765z<T, R> zVar : zVarArr) {
                    if (tArr[i3] == null) {
                        boolean z2 = zVar.f36900c;
                        T poll = zVar.f36899b.poll();
                        boolean z3 = poll == null;
                        if (checkTerminated(z2, z3, rVar, z, zVar)) {
                            return;
                        }
                        if (!z3) {
                            tArr[i3] = poll;
                            i2 = i2;
                        } else {
                            i2++;
                        }
                    } else {
                        i2 = i2;
                        if (zVar.f36900c) {
                            i2 = i2;
                            if (!z) {
                                Throwable th = zVar.f36901d;
                                i2 = i2;
                                if (th != null) {
                                    cancel();
                                    rVar.onError(th);
                                    return;
                                }
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    }
                    i3++;
                }
                if (i2 != 0) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    try {
                        Object obj = (Object) this.zipper.apply(tArr.clone());
                        C9650a.m2095a(obj, "The zipper returned a null value");
                        rVar.onNext(obj);
                        Arrays.fill(tArr, (Object) null);
                    } catch (Throwable th2) {
                        C9863a.m1822b(th2);
                        cancel();
                        rVar.onError(th2);
                        return;
                    }
                }
            }
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.cancelled;
    }

    public void subscribe(AbstractC9843q<? extends T>[] qVarArr, int i) {
        C9765z<T, R>[] zVarArr = this.observers;
        int length = zVarArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            zVarArr[i2] = new C9765z<>(this, i);
        }
        lazySet(0);
        this.actual.onSubscribe(this);
        for (int i3 = 0; i3 < length && !this.cancelled; i3++) {
            qVarArr[i3].subscribe(zVarArr[i3]);
        }
    }
}
