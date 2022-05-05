package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.Preconditions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zai.class */
public class zai extends zak {

    /* renamed from: e */
    private final SparseArray<C1635a> f6532e = new SparseArray<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.common.api.internal.zai$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zai$a.class */
    public final class C1635a implements GoogleApiClient.OnConnectionFailedListener {

        /* renamed from: a */
        public final int f6533a;

        /* renamed from: b */
        public final GoogleApiClient f6534b;

        /* renamed from: c */
        public final GoogleApiClient.OnConnectionFailedListener f6535c;

        public C1635a(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.f6533a = i;
            this.f6534b = googleApiClient;
            this.f6535c = onConnectionFailedListener;
            googleApiClient.registerConnectionFailedListener(this);
        }

        @Override // com.google.android.gms.common.api.internal.OnConnectionFailedListener
        public final void onConnectionFailed(ConnectionResult connectionResult) {
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
            sb.append("beginFailureResolution for ");
            sb.append(valueOf);
            Log.d("AutoManageHelper", sb.toString());
            zai.this.zab(connectionResult, this.f6533a);
        }
    }

    private zai(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.f6308a.addCallback("AutoManageHelper", this);
    }

    /* renamed from: a */
    private final C1635a m5810a(int i) {
        if (this.f6532e.size() <= i) {
            return null;
        }
        SparseArray<C1635a> sparseArray = this.f6532e;
        return sparseArray.get(sparseArray.keyAt(i));
    }

    public static zai zaa(LifecycleActivity lifecycleActivity) {
        LifecycleFragment a = m5920a(lifecycleActivity);
        zai zaiVar = (zai) a.getCallbackOrNull("AutoManageHelper", zai.class);
        return zaiVar != null ? zaiVar : new zai(a);
    }

    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: a */
    protected final void mo5809a() {
        for (int i = 0; i < this.f6532e.size(); i++) {
            C1635a a = m5810a(i);
            if (a != null) {
                a.f6534b.connect();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.api.internal.zak
    /* renamed from: a */
    public final void mo5808a(ConnectionResult connectionResult, int i) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        C1635a aVar = this.f6532e.get(i);
        if (aVar != null) {
            zaa(i);
            GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = aVar.f6535c;
            if (onConnectionFailedListener != null) {
                onConnectionFailedListener.onConnectionFailed(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i = 0; i < this.f6532e.size(); i++) {
            C1635a a = m5810a(i);
            if (a != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(a.f6533a);
                printWriter.println(":");
                a.f6534b.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zak, com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStart() {
        super.onStart();
        boolean z = this.f6542b;
        String valueOf = String.valueOf(this.f6532e);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
        sb.append("onStart ");
        sb.append(z);
        sb.append(" ");
        sb.append(valueOf);
        Log.d("AutoManageHelper", sb.toString());
        if (this.f6543c.get() == null) {
            for (int i = 0; i < this.f6532e.size(); i++) {
                C1635a a = m5810a(i);
                if (a != null) {
                    a.f6534b.connect();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.zak, com.google.android.gms.common.api.internal.LifecycleCallback
    public void onStop() {
        super.onStop();
        for (int i = 0; i < this.f6532e.size(); i++) {
            C1635a a = m5810a(i);
            if (a != null) {
                a.f6534b.disconnect();
            }
        }
    }

    public final void zaa(int i) {
        C1635a aVar = this.f6532e.get(i);
        this.f6532e.remove(i);
        if (aVar != null) {
            aVar.f6534b.unregisterConnectionFailedListener(aVar);
            aVar.f6534b.disconnect();
        }
    }

    public final void zaa(int i, GoogleApiClient googleApiClient, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(googleApiClient, "GoogleApiClient instance cannot be null");
        boolean z = this.f6532e.indexOfKey(i) < 0;
        StringBuilder sb = new StringBuilder(54);
        sb.append("Already managing a GoogleApiClient with id ");
        sb.append(i);
        Preconditions.checkState(z, sb.toString());
        C1599av avVar = this.f6543c.get();
        boolean z2 = this.f6542b;
        String valueOf = String.valueOf(avVar);
        StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf).length() + 49);
        sb2.append("starting AutoManage for client ");
        sb2.append(i);
        sb2.append(" ");
        sb2.append(z2);
        sb2.append(" ");
        sb2.append(valueOf);
        Log.d("AutoManageHelper", sb2.toString());
        this.f6532e.put(i, new C1635a(i, googleApiClient, onConnectionFailedListener));
        if (this.f6542b && avVar == null) {
            String valueOf2 = String.valueOf(googleApiClient);
            StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 11);
            sb3.append("connecting ");
            sb3.append(valueOf2);
            Log.d("AutoManageHelper", sb3.toString());
            googleApiClient.connect();
        }
    }
}
