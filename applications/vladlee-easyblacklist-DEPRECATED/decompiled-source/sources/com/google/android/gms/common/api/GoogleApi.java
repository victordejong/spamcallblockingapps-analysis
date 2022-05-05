package com.google.android.gms.common.api;

import android.accounts.Account;
import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ApiExceptionMapper;
import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.api.internal.RegisterListenerMethod;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.api.internal.StatusExceptionMapper;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.UnregisterListenerMethod;
import com.google.android.gms.common.api.internal.zaad;
import com.google.android.gms.common.api.internal.zabn;
import com.google.android.gms.common.api.internal.zace;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi.class */
public class GoogleApi<O extends Api.ApiOptions> implements HasApiKey<O> {

    /* renamed from: a */
    protected final GoogleApiManager f6186a;

    /* renamed from: b */
    private final Context f6187b;

    /* renamed from: c */
    private final Api<O> f6188c;

    /* renamed from: d */
    private final O f6189d;

    /* renamed from: e */
    private final ApiKey<O> f6190e;

    /* renamed from: f */
    private final Looper f6191f;

    /* renamed from: g */
    private final int f6192g;

    /* renamed from: h */
    private final GoogleApiClient f6193h;

    /* renamed from: i */
    private final StatusExceptionMapper f6194i;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings.class */
    public static class Settings {
        public static final Settings DEFAULT_SETTINGS = new Builder().build();
        public final StatusExceptionMapper zabp;
        public final Looper zabq;

        /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/GoogleApi$Settings$Builder.class */
        public static class Builder {

            /* renamed from: a */
            private StatusExceptionMapper f6195a;

            /* renamed from: b */
            private Looper f6196b;

            public Settings build() {
                if (this.f6195a == null) {
                    this.f6195a = new ApiExceptionMapper();
                }
                if (this.f6196b == null) {
                    this.f6196b = Looper.getMainLooper();
                }
                return new Settings(this.f6195a, this.f6196b, (byte) 0);
            }

            public Builder setLooper(Looper looper) {
                Preconditions.checkNotNull(looper, "Looper must not be null.");
                this.f6196b = looper;
                return this;
            }

            public Builder setMapper(StatusExceptionMapper statusExceptionMapper) {
                Preconditions.checkNotNull(statusExceptionMapper, "StatusExceptionMapper must not be null.");
                this.f6195a = statusExceptionMapper;
                return this;
            }
        }

        private Settings(StatusExceptionMapper statusExceptionMapper, Looper looper) {
            this.zabp = statusExceptionMapper;
            this.zabq = looper;
        }

        /* synthetic */ Settings(StatusExceptionMapper statusExceptionMapper, Looper looper, byte b) {
            this(statusExceptionMapper, looper);
        }
    }

    public GoogleApi(Activity activity, Api<O> api, O o, Settings settings) {
        Preconditions.checkNotNull(activity, "Null activity is not permitted.");
        Preconditions.checkNotNull(api, "Api must not be null.");
        Preconditions.checkNotNull(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f6187b = activity.getApplicationContext();
        this.f6188c = api;
        this.f6189d = o;
        this.f6191f = settings.zabq;
        this.f6190e = ApiKey.getSharedApiKey(this.f6188c, this.f6189d);
        this.f6193h = new zabn(this);
        this.f6186a = GoogleApiManager.zab(this.f6187b);
        this.f6192g = this.f6186a.zabb();
        this.f6194i = settings.zabp;
        if (!(activity instanceof GoogleApiActivity)) {
            zaad.zaa(activity, this.f6186a, this.f6190e);
        }
        this.f6186a.zaa((GoogleApi<?>) this);
    }

    @Deprecated
    public GoogleApi(Activity activity, Api<O> api, O o, StatusExceptionMapper statusExceptionMapper) {
        this(activity, (Api) api, (Api.ApiOptions) o, new Settings.Builder().setMapper(statusExceptionMapper).setLooper(activity.getMainLooper()).build());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GoogleApi(Context context, Api<O> api, Looper looper) {
        Preconditions.checkNotNull(context, "Null context is not permitted.");
        Preconditions.checkNotNull(api, "Api must not be null.");
        Preconditions.checkNotNull(looper, "Looper must not be null.");
        this.f6187b = context.getApplicationContext();
        this.f6188c = api;
        this.f6189d = null;
        this.f6191f = looper;
        this.f6190e = ApiKey.getUniqueApiKey(api);
        this.f6193h = new zabn(this);
        this.f6186a = GoogleApiManager.zab(this.f6187b);
        this.f6192g = this.f6186a.zabb();
        this.f6194i = new ApiExceptionMapper();
    }

    @Deprecated
    public GoogleApi(Context context, Api<O> api, O o, Looper looper, StatusExceptionMapper statusExceptionMapper) {
        this(context, api, o, new Settings.Builder().setLooper(looper).setMapper(statusExceptionMapper).build());
    }

    public GoogleApi(Context context, Api<O> api, O o, Settings settings) {
        Preconditions.checkNotNull(context, "Null context is not permitted.");
        Preconditions.checkNotNull(api, "Api must not be null.");
        Preconditions.checkNotNull(settings, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead.");
        this.f6187b = context.getApplicationContext();
        this.f6188c = api;
        this.f6189d = o;
        this.f6191f = settings.zabq;
        this.f6190e = ApiKey.getSharedApiKey(this.f6188c, this.f6189d);
        this.f6193h = new zabn(this);
        this.f6186a = GoogleApiManager.zab(this.f6187b);
        this.f6192g = this.f6186a.zabb();
        this.f6194i = settings.zabp;
        this.f6186a.zaa((GoogleApi<?>) this);
    }

    @Deprecated
    public GoogleApi(Context context, Api<O> api, O o, StatusExceptionMapper statusExceptionMapper) {
        this(context, api, o, new Settings.Builder().setMapper(statusExceptionMapper).build());
    }

    /* renamed from: a */
    private final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T m5976a(int i, T t) {
        t.zar();
        this.f6186a.zaa(this, i, (BaseImplementation.ApiMethodImpl<? extends Result, Api.AnyClient>) t);
        return t;
    }

    /* renamed from: a */
    private ClientSettings.Builder m5977a() {
        Account account;
        GoogleSignInAccount googleSignInAccount;
        GoogleSignInAccount googleSignInAccount2;
        ClientSettings.Builder builder = new ClientSettings.Builder();
        O o = this.f6189d;
        if (!(o instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (googleSignInAccount2 = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o).getGoogleSignInAccount()) == null) {
            O o2 = this.f6189d;
            account = o2 instanceof Api.ApiOptions.HasAccountOptions ? ((Api.ApiOptions.HasAccountOptions) o2).getAccount() : null;
        } else {
            account = googleSignInAccount2.getAccount();
        }
        ClientSettings.Builder account2 = builder.setAccount(account);
        O o3 = this.f6189d;
        return account2.addAllRequiredScopes((!(o3 instanceof Api.ApiOptions.HasGoogleSignInAccountOptions) || (googleSignInAccount = ((Api.ApiOptions.HasGoogleSignInAccountOptions) o3).getGoogleSignInAccount()) == null) ? Collections.emptySet() : googleSignInAccount.getRequestedScopes()).setRealClientClassName(this.f6187b.getClass().getName()).setRealClientPackageName(this.f6187b.getPackageName());
    }

    /* renamed from: a */
    private final <TResult, A extends Api.AnyClient> Task<TResult> m5975a(int i, TaskApiCall<A, TResult> taskApiCall) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f6186a.zaa(this, i, taskApiCall, taskCompletionSource, this.f6194i);
        return taskCompletionSource.getTask();
    }

    public GoogleApiClient asGoogleApiClient() {
        return this.f6193h;
    }

    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doBestEffortWrite(T t) {
        return (T) m5976a(2, (int) t);
    }

    public <TResult, A extends Api.AnyClient> Task<TResult> doBestEffortWrite(TaskApiCall<A, TResult> taskApiCall) {
        return m5975a(2, taskApiCall);
    }

    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doRead(T t) {
        return (T) m5976a(0, (int) t);
    }

    public <TResult, A extends Api.AnyClient> Task<TResult> doRead(TaskApiCall<A, TResult> taskApiCall) {
        return m5975a(0, taskApiCall);
    }

    @Deprecated
    public <A extends Api.AnyClient, T extends RegisterListenerMethod<A, ?>, U extends UnregisterListenerMethod<A, ?>> Task<Void> doRegisterEventListener(T t, U u) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(u);
        Preconditions.checkNotNull(t.getListenerKey(), "Listener has already been released.");
        Preconditions.checkNotNull(u.getListenerKey(), "Listener has already been released.");
        Preconditions.checkArgument(t.getListenerKey().equals(u.getListenerKey()), "Listener registration and unregistration methods must be constructed with the same ListenerHolder.");
        return this.f6186a.zaa(this, (RegisterListenerMethod<Api.AnyClient, ?>) t, (UnregisterListenerMethod<Api.AnyClient, ?>) u);
    }

    public <A extends Api.AnyClient> Task<Void> doRegisterEventListener(RegistrationMethods<A, ?> registrationMethods) {
        Preconditions.checkNotNull(registrationMethods);
        Preconditions.checkNotNull(registrationMethods.zaka.getListenerKey(), "Listener has already been released.");
        Preconditions.checkNotNull(registrationMethods.zakb.getListenerKey(), "Listener has already been released.");
        return this.f6186a.zaa(this, registrationMethods.zaka, registrationMethods.zakb);
    }

    public Task<Boolean> doUnregisterEventListener(ListenerHolder.ListenerKey<?> listenerKey) {
        Preconditions.checkNotNull(listenerKey, "Listener key cannot be null.");
        return this.f6186a.zaa(this, listenerKey);
    }

    public <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T doWrite(T t) {
        return (T) m5976a(1, (int) t);
    }

    public <TResult, A extends Api.AnyClient> Task<TResult> doWrite(TaskApiCall<A, TResult> taskApiCall) {
        return m5975a(1, taskApiCall);
    }

    public final Api<O> getApi() {
        return this.f6188c;
    }

    @Override // com.google.android.gms.common.api.HasApiKey
    public ApiKey<O> getApiKey() {
        return this.f6190e;
    }

    public O getApiOptions() {
        return this.f6189d;
    }

    public Context getApplicationContext() {
        return this.f6187b;
    }

    public final int getInstanceId() {
        return this.f6192g;
    }

    public Looper getLooper() {
        return this.f6191f;
    }

    public <L> ListenerHolder<L> registerListener(L l, String str) {
        return ListenerHolders.createListenerHolder(l, this.f6191f, str);
    }

    public Api.Client zaa(Looper looper, GoogleApiManager.zaa<O> zaaVar) {
        return this.f6188c.zai().buildClient(this.f6187b, looper, m5977a().build(), (ClientSettings) this.f6189d, (GoogleApiClient.ConnectionCallbacks) zaaVar, (GoogleApiClient.OnConnectionFailedListener) zaaVar);
    }

    public zace zaa(Context context, Handler handler) {
        return new zace(context, handler, m5977a().build());
    }
}
