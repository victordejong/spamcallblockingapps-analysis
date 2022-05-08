package com.tmobile.services.nameid.api;

import android.content.Context;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.utility.HeaderInterceptor;
import com.tmobile.services.nameid.utility.IamWrapper;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import retrofit2.HttpException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/RetrySitError.class */
public class RetrySitError implements Function<Observable<? extends Throwable>, Observable<?>> {

    /* renamed from: f */
    private boolean f13242f = false;

    /* renamed from: g */
    private boolean f13243g = false;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/RetrySitError$RetrySitException.class */
    public class RetrySitException extends Exception {
        RetrySitException(RetrySitError retrySitError, String str) {
            super(str);
        }
    }

    /* renamed from: b */
    private Observable<Boolean> m6692b() {
        synchronized (this) {
            if (this.f13243g) {
                LogUtil.m5632o("RetrySitError#doRetryGetSit", "Already getting sit, returning");
                return null;
            }
            this.f13243g = true;
            final Context l = MainApplication.m7528l();
            if (l == null) {
                LogUtil.m5632o("RetrySitError#", "Wanted to get new SIT, but context was null");
                return null;
            }
            LogUtil.m5632o("RetrySitError#", "Getting new SIT");
            return Observable.create(new ObservableOnSubscribe() { // from class: com.tmobile.services.nameid.api.c2
                @Override // io.reactivex.ObservableOnSubscribe
                /* renamed from: a */
                public final void mo2504a(ObservableEmitter observableEmitter) {
                    RetrySitError.this.m6690d(l, observableEmitter);
                }
            });
        }
    }

    /* renamed from: a */
    public Observable<?> apply(Observable<? extends Throwable> observable) {
        return observable.flatMap(new Function() { // from class: com.tmobile.services.nameid.api.a2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return RetrySitError.this.m6691c((Throwable) obj);
            }
        });
    }

    /* renamed from: c */
    public /* synthetic */ ObservableSource m6691c(Throwable th) throws Exception {
        boolean z = th instanceof HeaderInterceptor.WsgSitAuthException;
        boolean z2 = th instanceof HeaderInterceptor.MissingTokenException;
        boolean z3 = th instanceof HeaderInterceptor.MissingMsisdnException;
        boolean z4 = false;
        boolean z5 = (th instanceof HttpException) && ((HttpException) th).code() == 401;
        if (z || z2 || z3 || z5) {
            z4 = true;
        }
        LogUtil.m5632o("RetrySitError#", "wsgSitAuthError? " + z + " http401? " + z5 + " missingMsisdn? " + z3 + "missingToken? " + z2 + " handledHere? " + z4 + " alreadyRetried? " + this.f13242f);
        StringBuilder sb = new StringBuilder();
        sb.append("throwable: ");
        sb.append(th.toString());
        LogUtil.m5632o("RetrySitError#", sb.toString());
        if (this.f13242f || !z4) {
            LogUtil.m5632o("RetrySitError#", "retried? " + this.f13242f + " or error? " + z4 + " so throwing");
            this.f13242f = true;
            return Observable.error(th);
        }
        this.f13242f = true;
        LogUtil.m5632o("RetrySitError#", "encountered sit auth error");
        LogUtil.m5632o("RetrySitError#", "SIT expired " + PreferenceUtils.m5390g("PREF_SIT_EXPIRATION") + " token was " + PreferenceUtils.m5390g("PREF_SIT"));
        PreferenceUtils.m5383n("PREF_SIT", "");
        Observable<Boolean> b = m6692b();
        Observable<Boolean> observable = b;
        if (b == null) {
            observable = null;
        }
        return observable;
    }

    /* renamed from: d */
    public /* synthetic */ void m6690d(Context context, final ObservableEmitter observableEmitter) throws Exception {
        IamWrapper.m5683e(context, true, null).subscribe(new Consumer() { // from class: com.tmobile.services.nameid.api.z1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RetrySitError.this.m6689e(observableEmitter, (IamWrapper.IamResponse) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.api.b2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RetrySitError.this.m6688f(observableEmitter, (Throwable) obj);
            }
        });
    }

    /* renamed from: e */
    public /* synthetic */ void m6689e(ObservableEmitter observableEmitter, IamWrapper.IamResponse iamResponse) throws Exception {
        this.f13243g = false;
        if (iamResponse == IamWrapper.IamResponse.SUCCESS) {
            LogUtil.m5632o("RetrySitError#", "Got new SIT, retrying request with it.");
            observableEmitter.onNext(Boolean.TRUE);
            return;
        }
        LogUtil.m5632o("RetrySitError#", "Got SIT library reply but an error occurred");
        observableEmitter.onError(new RetrySitException(this, "SIT return was not valid"));
    }

    /* renamed from: f */
    public /* synthetic */ void m6688f(ObservableEmitter observableEmitter, Throwable th) throws Exception {
        this.f13243g = false;
        LogUtil.m5641f("RetrySitError#", "Got SIT fail", th);
        observableEmitter.onError(new RetrySitException(this, "SIT return was not valid"));
    }
}
