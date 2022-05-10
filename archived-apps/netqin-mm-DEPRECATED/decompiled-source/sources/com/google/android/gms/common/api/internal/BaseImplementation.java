package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.zaz;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation.class */
public class BaseImplementation {

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl.class */
    public static abstract class ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements ResultHolder<R> {
        @KeepForSdk

        /* renamed from: p */
        public final Api.AnyClientKey<A> f23092p;
        @KeepForSdk

        /* renamed from: q */
        public final Api<?> f23093q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        @KeepForSdk
        public ApiMethodImpl(Api<?> api, GoogleApiClient googleApiClient) {
            super(googleApiClient);
            Preconditions.m17287a(googleApiClient, "GoogleApiClient must not be null");
            Preconditions.m17287a(api, "Api must not be null");
            this.f23092p = (Api.AnyClientKey<A>) api.m17785c();
            this.f23093q = api;
        }

        @KeepForSdk
        /* renamed from: a */
        public final void m17730a(RemoteException remoteException) {
            m17727c(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        @KeepForSdk
        /* renamed from: a */
        public abstract void mo17729a(A a) throws RemoteException;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        @KeepForSdk
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo17723a(Object obj) {
            super.m17720a((ApiMethodImpl<R, A>) ((Result) obj));
        }

        @KeepForSdk
        /* renamed from: b */
        public final void m17728b(A a) throws DeadObjectException {
            if (!(a instanceof zaz)) {
                try {
                    mo17729a((ApiMethodImpl<R, A>) a);
                } catch (DeadObjectException e) {
                    m17730a((RemoteException) e);
                    throw e;
                } catch (RemoteException e2) {
                    m17730a(e2);
                }
            } else {
                zaz zazVar = (zaz) a;
                zaz.m17171a();
                throw null;
            }
        }

        @KeepForSdk
        /* renamed from: c */
        public final void m17727c(Status status) {
            Preconditions.m17283a(!status.m17740y(), "Failed result must not be success");
            mo17597a(status);
            m17720a((ApiMethodImpl<R, A>) status);
            m17726d(status);
        }

        @KeepForSdk
        /* renamed from: d */
        public void m17726d(R r) {
        }

        @KeepForSdk
        /* renamed from: g */
        public final Api<?> m17725g() {
            return this.f23093q;
        }

        @KeepForSdk
        /* renamed from: h */
        public final Api.AnyClientKey<A> m17724h() {
            return this.f23092p;
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation$ResultHolder.class */
    public interface ResultHolder<R> {
        @KeepForSdk
        /* renamed from: a */
        void mo17723a(R r);
    }
}
