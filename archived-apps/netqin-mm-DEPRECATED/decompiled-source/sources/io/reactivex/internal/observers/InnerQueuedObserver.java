package io.reactivex.internal.observers;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.p543b0.p546c.AbstractC9656e;
import p530d.p541c.p543b0.p546c.AbstractC9661j;
import p530d.p541c.p543b0.p547d.AbstractC9664c;
import p530d.p541c.p543b0.p557i.C9808j;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/observers/InnerQueuedObserver.class */
public final class InnerQueuedObserver<T> extends AtomicReference<AbstractC9861b> implements AbstractC9844r<T>, AbstractC9861b {
    public static final long serialVersionUID = -5417183359794346637L;
    public volatile boolean done;
    public int fusionMode;
    public final AbstractC9664c<T> parent;
    public final int prefetch;
    public AbstractC9661j<T> queue;

    public InnerQueuedObserver(AbstractC9664c<T> cVar, int i) {
        this.parent = cVar;
        this.prefetch = i;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        DisposableHelper.dispose(this);
    }

    public int fusionMode() {
        return this.fusionMode;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return DisposableHelper.isDisposed(get());
    }

    public boolean isDone() {
        return this.done;
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onComplete() {
        this.parent.innerComplete(this);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onError(Throwable th) {
        this.parent.innerError(this, th);
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onNext(T t) {
        if (this.fusionMode == 0) {
            this.parent.innerNext(this, t);
        } else {
            this.parent.drain();
        }
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        if (DisposableHelper.setOnce(this, bVar)) {
            if (bVar instanceof AbstractC9656e) {
                AbstractC9656e eVar = (AbstractC9656e) bVar;
                int requestFusion = eVar.requestFusion(3);
                if (requestFusion == 1) {
                    this.fusionMode = requestFusion;
                    this.queue = eVar;
                    this.done = true;
                    this.parent.innerComplete(this);
                    return;
                } else if (requestFusion == 2) {
                    this.fusionMode = requestFusion;
                    this.queue = eVar;
                    return;
                }
            }
            this.queue = C9808j.m1986a(-this.prefetch);
        }
    }

    public AbstractC9661j<T> queue() {
        return this.queue;
    }

    public void setDone() {
        this.done = true;
    }
}
