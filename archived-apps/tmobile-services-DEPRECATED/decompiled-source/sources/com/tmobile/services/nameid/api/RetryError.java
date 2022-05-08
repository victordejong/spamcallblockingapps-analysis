package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Function;
import retrofit2.HttpException;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/RetryError.class */
class RetryError implements Function<Observable<? extends Throwable>, Observable<?>> {

    /* renamed from: f */
    private boolean f13241f = false;

    /* renamed from: b */
    private Observable<Boolean> m6696b() {
        Observable<Boolean> create;
        synchronized (this) {
            LogUtil.m5632o("RetryError#doRetry", "Retrying request");
            create = Observable.create(C1800y1.f13462a);
        }
        return create;
    }

    /* renamed from: a */
    public Observable<?> apply(Observable<? extends Throwable> observable) {
        return observable.flatMap(new Function() { // from class: com.tmobile.services.nameid.api.x1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return RetryError.this.m6695c((Throwable) obj);
            }
        });
    }

    /* renamed from: c */
    public /* synthetic */ ObservableSource m6695c(Throwable th) throws Exception {
        boolean z = (th instanceof HttpException) && ((HttpException) th).code() == 500;
        LogUtil.m5632o("RetryError#", " handledHere? " + z + " alreadyRetried? " + this.f13241f);
        StringBuilder sb = new StringBuilder();
        sb.append("throwable: ");
        sb.append(th.toString());
        LogUtil.m5632o("RetryError#", sb.toString());
        if (this.f13241f || !z) {
            LogUtil.m5632o("RetryError#", "retried? " + this.f13241f + " or error? " + z + " so throwing");
            this.f13241f = true;
            return Observable.error(th);
        }
        this.f13241f = true;
        Observable<Boolean> b = m6696b();
        if (b == null) {
            return null;
        }
        return b.subscribeOn(AndroidSchedulers.m4448c());
    }
}
