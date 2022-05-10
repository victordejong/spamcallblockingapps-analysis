package io.reactivex.internal.util;

import p530d.p541c.AbstractC9647b;
import p530d.p541c.AbstractC9829h;
import p530d.p541c.AbstractC9836k;
import p530d.p541c.AbstractC9844r;
import p530d.p541c.AbstractC9851u;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
import p611j.p612a.AbstractC10433c;
import p611j.p612a.AbstractC10434d;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/EmptyComponent.class */
public enum EmptyComponent implements AbstractC9829h<Object>, AbstractC9844r<Object>, AbstractC9836k<Object>, AbstractC9851u<Object>, AbstractC9647b, AbstractC10434d, AbstractC9861b {
    INSTANCE;

    public static <T> AbstractC9844r<T> asObserver() {
        return INSTANCE;
    }

    public static <T> AbstractC10433c<T> asSubscriber() {
        return INSTANCE;
    }

    @Override // p611j.p612a.AbstractC10434d
    public void cancel() {
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return true;
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onComplete() {
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onError(Throwable th) {
        C9815a.m1923b(th);
    }

    @Override // p611j.p612a.AbstractC10433c
    public void onNext(Object obj) {
    }

    @Override // p530d.p541c.AbstractC9844r
    public void onSubscribe(AbstractC9861b bVar) {
        bVar.dispose();
    }

    @Override // p530d.p541c.AbstractC9829h, p611j.p612a.AbstractC10433c
    public void onSubscribe(AbstractC10434d dVar) {
        dVar.cancel();
    }

    @Override // p530d.p541c.AbstractC9836k
    public void onSuccess(Object obj) {
    }

    @Override // p611j.p612a.AbstractC10434d
    public void request(long j) {
    }
}
