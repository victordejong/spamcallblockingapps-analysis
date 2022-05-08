package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zac;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zabe.class */
public final class zabe implements zabr, zar {

    /* renamed from: a */
    private final Lock f7216a;

    /* renamed from: b */
    private final Condition f7217b;

    /* renamed from: c */
    private final Context f7218c;

    /* renamed from: d */
    private final GoogleApiAvailabilityLight f7219d;

    /* renamed from: e */
    private final zabg f7220e;

    /* renamed from: f */
    final Map<Api.AnyClientKey<?>, Api.Client> f7221f;

    /* renamed from: g */
    final Map<Api.AnyClientKey<?>, ConnectionResult> f7222g = new HashMap();

    /* renamed from: h */
    private final ClientSettings f7223h;

    /* renamed from: i */
    private final Map<Api<?>, Boolean> f7224i;

    /* renamed from: j */
    private final Api.AbstractClientBuilder<? extends zac, SignInOptions> f7225j;

    /* renamed from: k */
    private volatile zabb f7226k;

    /* renamed from: l */
    private ConnectionResult f7227l;

    /* renamed from: m */
    int f7228m;

    /* renamed from: n */
    final zaaw f7229n;

    /* renamed from: o */
    final zabs f7230o;

    public zabe(Context context, zaaw zaawVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zac, SignInOptions> abstractClientBuilder, ArrayList<zap> arrayList, zabs zabsVar) {
        this.f7218c = context;
        this.f7216a = lock;
        this.f7219d = googleApiAvailabilityLight;
        this.f7221f = map;
        this.f7223h = clientSettings;
        this.f7224i = map2;
        this.f7225j = abstractClientBuilder;
        this.f7229n = zaawVar;
        this.f7230o = zabsVar;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            zap zapVar = arrayList.get(i);
            i++;
            zapVar.m14713d(this);
        }
        this.f7220e = new zabg(this, looper);
        this.f7217b = lock.newCondition();
        this.f7226k = new zaat(this);
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    /* renamed from: a */
    public final void mo14715a(int i) {
        this.f7216a.lock();
        try {
            this.f7226k.mo14800a(i);
        } finally {
            this.f7216a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    /* renamed from: b */
    public final void mo14714b(@Nullable Bundle bundle) {
        this.f7216a.lock();
        try {
            this.f7226k.mo14799b(bundle);
        } finally {
            this.f7216a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zar
    /* renamed from: c */
    public final void mo14689c(@NonNull ConnectionResult connectionResult, @NonNull Api<?> api, boolean z) {
        this.f7216a.lock();
        try {
            this.f7226k.mo14798c(connectionResult, api, z);
        } finally {
            this.f7216a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    @GuardedBy
    public final void connect() {
        this.f7226k.connect();
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    @GuardedBy
    /* renamed from: d */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo14681d(@NonNull T t) {
        t.m14964s();
        return (T) this.f7226k.mo14797d(t);
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    @GuardedBy
    public final void disconnect() {
        if (this.f7226k.disconnect()) {
            this.f7222g.clear();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.f7226k);
        for (Api<?> api : this.f7224i.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.m15032b()).println(":");
            this.f7221f.get(api.m15033a()).dump(concat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    @GuardedBy
    /* renamed from: e */
    public final void mo14680e() {
        if (isConnected()) {
            ((zaaf) this.f7226k).m14854g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public final void m14793f(zabd zabdVar) {
        this.f7220e.sendMessage(this.f7220e.obtainMessage(1, zabdVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public final void m14792g() {
        this.f7216a.lock();
        try {
            this.f7226k = new zaak(this, this.f7223h, this.f7224i, this.f7219d, this.f7225j, this.f7216a, this.f7218c);
            this.f7226k.mo14796e();
            this.f7217b.signalAll();
        } finally {
            this.f7216a.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public final void m14791h() {
        this.f7216a.lock();
        try {
            this.f7229n.m14805v();
            this.f7226k = new zaaf(this);
            this.f7226k.mo14796e();
            this.f7217b.signalAll();
        } finally {
            this.f7216a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabr
    public final boolean isConnected() {
        return this.f7226k instanceof zaaf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final void m14789j(RuntimeException runtimeException) {
        this.f7220e.sendMessage(this.f7220e.obtainMessage(2, runtimeException));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public final void m14787l(ConnectionResult connectionResult) {
        this.f7216a.lock();
        try {
            this.f7227l = connectionResult;
            this.f7226k = new zaat(this);
            this.f7226k.mo14796e();
            this.f7217b.signalAll();
        } finally {
            this.f7216a.unlock();
        }
    }
}
