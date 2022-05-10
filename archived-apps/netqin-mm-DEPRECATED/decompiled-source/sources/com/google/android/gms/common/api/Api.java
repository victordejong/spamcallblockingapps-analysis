package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api.class */
public final class Api<O extends ApiOptions> {

    /* renamed from: a */
    public final AbstractClientBuilder<?, O> f23031a;

    /* renamed from: b */
    public final ClientKey<?> f23032b;

    /* renamed from: c */
    public final String f23033c;

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AbstractClientBuilder.class */
    public static class AbstractClientBuilder<T extends Client, O> extends BaseClientBuilder<T, O> {
        @KeepForSdk
        @Deprecated
        /* renamed from: a */
        public T mo17783a(Context context, Looper looper, ClientSettings clientSettings, O o, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            m17782a(context, looper, clientSettings, (ClientSettings) o, (ConnectionCallbacks) connectionCallbacks, (OnConnectionFailedListener) onConnectionFailedListener);
            throw null;
        }

        @KeepForSdk
        /* renamed from: a */
        public T m17782a(Context context, Looper looper, ClientSettings clientSettings, O o, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
            throw new UnsupportedOperationException("buildClient must be implemented");
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClient.class */
    public interface AnyClient {
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$AnyClientKey.class */
    public static class AnyClientKey<C extends AnyClient> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions.class */
    public interface ApiOptions {

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$HasAccountOptions.class */
        public interface HasAccountOptions extends HasOptions, NotRequiredOptions {
            /* renamed from: b */
            Account m17781b();
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$HasGoogleSignInAccountOptions.class */
        public interface HasGoogleSignInAccountOptions extends HasOptions {
            /* renamed from: a */
            GoogleSignInAccount m17780a();
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$HasOptions.class */
        public interface HasOptions extends ApiOptions {
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$NoOptions.class */
        public static final class NoOptions implements NotRequiredOptions {
            public NoOptions() {
            }
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$NotRequiredOptions.class */
        public interface NotRequiredOptions extends ApiOptions {
        }

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ApiOptions$Optional.class */
        public interface Optional extends HasOptions, NotRequiredOptions {
        }

        static {
            new NoOptions();
        }
    }

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$BaseClientBuilder.class */
    public static class BaseClientBuilder<T extends AnyClient, O> {
        @KeepForSdk
        /* renamed from: a */
        public int m17779a() {
            return MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        }

        @KeepForSdk
        /* renamed from: a */
        public List<Scope> m17778a(O o) {
            return Collections.emptyList();
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$Client.class */
    public interface Client extends AnyClient {
        @KeepForSdk
        /* renamed from: a */
        void mo17620a(BaseGmsClient.ConnectionProgressReportCallbacks connectionProgressReportCallbacks);

        @KeepForSdk
        /* renamed from: a */
        void mo17619a(BaseGmsClient.SignOutCallbacks signOutCallbacks);

        @KeepForSdk
        /* renamed from: a */
        void mo17618a(IAccountAccessor iAccountAccessor, Set<Scope> set);

        @KeepForSdk
        /* renamed from: a */
        void mo17617a(String str);

        @KeepForSdk
        /* renamed from: a */
        void mo17616a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        @KeepForSdk
        /* renamed from: b */
        void mo10491b();

        @KeepForSdk
        /* renamed from: c */
        boolean mo17614c();

        @KeepForSdk
        /* renamed from: e */
        boolean mo17612e();

        @KeepForSdk
        /* renamed from: f */
        Set<Scope> mo17311f();

        @KeepForSdk
        /* renamed from: g */
        boolean mo17611g();

        @KeepForSdk
        /* renamed from: h */
        String mo17610h();

        @KeepForSdk
        /* renamed from: i */
        boolean mo17609i();

        @KeepForSdk
        /* renamed from: j */
        int mo17608j();

        @KeepForSdk
        /* renamed from: k */
        Feature[] mo17607k();

        @KeepForSdk
        /* renamed from: l */
        String mo17606l();

        @KeepForSdk
        /* renamed from: m */
        Intent mo17605m();

        @KeepForSdk
        /* renamed from: n */
        boolean mo8642n();
    }

    @VisibleForTesting
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$ClientKey.class */
    public static final class ClientKey<C extends Client> extends AnyClientKey<C> {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$zaa.class */
    public interface zaa<T extends IInterface> extends AnyClient {
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$zab.class */
    public static final class zab<C extends zaa<? extends IInterface>> extends AnyClientKey<C> {
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/Api$zac.class */
    public static class zac<T extends zaa<? extends IInterface>, O> extends BaseClientBuilder<T, O> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends Client> Api(String str, AbstractClientBuilder<C, O> abstractClientBuilder, ClientKey<C> clientKey) {
        Preconditions.m17287a(abstractClientBuilder, "Cannot construct an Api with a null ClientBuilder");
        Preconditions.m17287a(clientKey, "Cannot construct an Api with a null ClientKey");
        this.f23033c = str;
        this.f23031a = abstractClientBuilder;
        this.f23032b = clientKey;
    }

    /* renamed from: a */
    public final BaseClientBuilder<?, O> m17787a() {
        AbstractClientBuilder<?, O> abstractClientBuilder = this.f23031a;
        Preconditions.m17288a(abstractClientBuilder);
        return abstractClientBuilder;
    }

    /* renamed from: b */
    public final AbstractClientBuilder<?, O> m17786b() {
        Preconditions.m17279b(this.f23031a != null, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
        return this.f23031a;
    }

    /* renamed from: c */
    public final AnyClientKey<?> m17785c() {
        ClientKey<?> clientKey = this.f23032b;
        if (clientKey != null) {
            return clientKey;
        }
        throw new IllegalStateException("This API was constructed with null client keys. This should not be possible.");
    }

    /* renamed from: d */
    public final String m17784d() {
        return this.f23033c;
    }
}
