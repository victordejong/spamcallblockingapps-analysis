package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.C3259i0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zai.class */
public class zai extends zal {

    /* renamed from: f */
    public final SparseArray<C7233a> f23281f = new SparseArray<>();

    /* renamed from: com.google.android.gms.common.api.internal.zai$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zai$a.class */
    public final class C7233a implements GoogleApiClient.OnConnectionFailedListener {

        /* renamed from: a */
        public final int f23282a;

        /* renamed from: b */
        public final GoogleApiClient f23283b;

        /* renamed from: c */
        public final GoogleApiClient.OnConnectionFailedListener f23284c;

        public C7233a(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.f23282a = i;
            this.f23283b = googleApiClient;
            this.f23284c = onConnectionFailedListener;
        }

        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
        public final void onConnectionFailed(ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("beginFailureResolution for ");
            sb.append(valueOf);
            Log.d("AutoManageHelper", sb.toString());
            zai.this.m17470b(connectionResult, this.f23282a);
        }
    }

    public zai(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.f23157a.mo17444a("AutoManageHelper", this);
    }

    /* renamed from: b */
    public static zai m17477b(LifecycleActivity lifecycleActivity) {
        LifecycleFragment a = LifecycleCallback.m17627a(lifecycleActivity);
        zai zaiVar = (zai) a.mo17442a("AutoManageHelper", zai.class);
        return zaiVar != null ? zaiVar : new zai(a);
    }

    /* renamed from: a */
    public final void m17481a(int i) {
        C7233a aVar = this.f23281f.get(i);
        this.f23281f.remove(i);
        if (aVar != null) {
            aVar.f23283b.mo17551b(aVar);
            aVar.f23283b.mo17553b();
        }
    }

    /* renamed from: a */
    public final void m17480a(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.m17287a(googleApiClient, "GoogleApiClient instance cannot be null");
        boolean z = this.f23281f.indexOfKey(i) < 0;
        StringBuilder sb = new StringBuilder(54);
        sb.append("Already managing a GoogleApiClient with id ");
        sb.append(i);
        Preconditions.m17279b(z, sb.toString());
        C3259i0 i0Var = this.f23292c.get();
        boolean z2 = this.f23291b;
        String valueOf = String.valueOf(i0Var);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 49);
        sb2.append("starting AutoManage for client ");
        sb2.append(i);
        sb2.append(" ");
        sb2.append(z2);
        sb2.append(" ");
        sb2.append(valueOf);
        Log.d("AutoManageHelper", sb2.toString());
        C7233a aVar = new C7233a(i, googleApiClient, onConnectionFailedListener);
        googleApiClient.mo17558a(aVar);
        this.f23281f.put(i, aVar);
        if (this.f23291b && i0Var == null) {
            String valueOf2 = String.valueOf(googleApiClient);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 11);
            sb3.append("connecting ");
            sb3.append(valueOf2);
            Log.d("AutoManageHelper", sb3.toString());
            googleApiClient.mo17560a();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zal
    /* renamed from: a */
    public final void mo17457a(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        C7233a aVar = this.f23281f.get(i);
        if (aVar != null) {
            m17481a(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = aVar.f23284c;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: a */
    public void mo17479a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.f23281f.size(); i++) {
            C7233a b = m17478b(i);
            if (b != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(b.f23282a);
                printWriter.println(":");
                b.f23283b.mo17554a(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    /* renamed from: b */
    public final C7233a m17478b(int i) {
        if (this.f23281f.size() <= i) {
            return null;
        }
        SparseArray<C7233a> sparseArray = this.f23281f;
        return sparseArray.get(sparseArray.keyAt(i));
    }

    @Override // com.google.android.gms.common.api.internal.zal, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: d */
    public void mo17455d() {
        super.mo17455d();
        boolean z = this.f23291b;
        String valueOf = String.valueOf(this.f23281f);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
        sb.append("onStart ");
        sb.append(z);
        sb.append(" ");
        sb.append(valueOf);
        Log.d("AutoManageHelper", sb.toString());
        if (this.f23292c.get() == null) {
            for (int i = 0; i < this.f23281f.size(); i++) {
                C7233a b = m17478b(i);
                if (b != null) {
                    b.f23283b.mo17560a();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zal, com.google.android.gms.common.api.internal.LifecycleCallback
    /* renamed from: e */
    public void mo17454e() {
        super.mo17454e();
        for (int i = 0; i < this.f23281f.size(); i++) {
            C7233a b = m17478b(i);
            if (b != null) {
                b.f23283b.mo17553b();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zal
    /* renamed from: f */
    public final void mo17453f() {
        for (int i = 0; i < this.f23281f.size(); i++) {
            C7233a b = m17478b(i);
            if (b != null) {
                b.f23283b.mo17560a();
            }
        }
    }
}
