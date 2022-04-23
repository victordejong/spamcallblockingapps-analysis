package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.Preconditions;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zack.class */
public final class zack<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {

    /* renamed from: g */
    private final WeakReference<GoogleApiClient> f6518g;

    /* renamed from: h */
    private final HandlerC1592ao f6519h;

    /* renamed from: a */
    private ResultTransform<? super R, ? extends Result> f6512a = null;

    /* renamed from: b */
    private zack<? extends Result> f6513b = null;

    /* renamed from: c */
    private volatile ResultCallbacks<? super R> f6514c = null;

    /* renamed from: d */
    private PendingResult<R> f6515d = null;

    /* renamed from: e */
    private final Object f6516e = new Object();

    /* renamed from: f */
    private Status f6517f = null;

    /* renamed from: i */
    private boolean f6520i = false;

    public zack(WeakReference<GoogleApiClient> weakReference) {
        Preconditions.checkNotNull(weakReference, "GoogleApiClient reference must not be null");
        this.f6518g = weakReference;
        GoogleApiClient googleApiClient = this.f6518g.get();
        this.f6519h = new HandlerC1592ao(this, googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final void m5822a(Status status) {
        synchronized (this.f6516e) {
            this.f6517f = status;
            m5817b(this.f6517f);
        }
    }

    /* renamed from: b */
    private final void m5819b() {
        if (this.f6512a != null || this.f6514c != null) {
            GoogleApiClient googleApiClient = this.f6518g.get();
            if (!(this.f6520i || this.f6512a == null || googleApiClient == null)) {
                googleApiClient.zaa(this);
                this.f6520i = true;
            }
            Status status = this.f6517f;
            if (status != null) {
                m5817b(status);
                return;
            }
            PendingResult<R> pendingResult = this.f6515d;
            if (pendingResult != null) {
                pendingResult.setResultCallback(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static void m5818b(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 18);
                sb.append("Unable to release ");
                sb.append(valueOf);
                Log.w("TransformedResultImpl", sb.toString(), e);
            }
        }
    }

    /* renamed from: b */
    private final void m5817b(Status status) {
        synchronized (this.f6516e) {
            if (this.f6512a != null) {
                Status onFailure = this.f6512a.onFailure(status);
                Preconditions.checkNotNull(onFailure, "onFailure must not return null");
                this.f6513b.m5822a(onFailure);
            } else if (m5815c()) {
                this.f6514c.onFailure(status);
            }
        }
    }

    /* renamed from: c */
    private final boolean m5815c() {
        return (this.f6514c == null || this.f6518g.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5824a() {
        this.f6514c = null;
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final void andFinally(ResultCallbacks<? super R> resultCallbacks) {
        synchronized (this.f6516e) {
            boolean z = true;
            Preconditions.checkState(this.f6514c == null, "Cannot call andFinally() twice.");
            if (this.f6512a != null) {
                z = false;
            }
            Preconditions.checkState(z, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f6514c = resultCallbacks;
            m5819b();
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(R r) {
        synchronized (this.f6516e) {
            if (!r.getStatus().isSuccess()) {
                m5822a(r.getStatus());
                m5818b(r);
            } else if (this.f6512a != null) {
                zacb.zaaz().submit(new RunnableC1593ap(this, r));
            } else if (m5815c()) {
                this.f6514c.onSuccess(r);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public final <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        zack<? extends Result> zackVar;
        synchronized (this.f6516e) {
            boolean z = true;
            Preconditions.checkState(this.f6512a == null, "Cannot call then() twice.");
            if (this.f6514c != null) {
                z = false;
            }
            Preconditions.checkState(z, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f6512a = resultTransform;
            zackVar = new zack<>(this.f6518g);
            this.f6513b = zackVar;
            m5819b();
        }
        return zackVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void zaa(PendingResult<?> pendingResult) {
        synchronized (this.f6516e) {
            this.f6515d = pendingResult;
            m5819b();
        }
    }
}
