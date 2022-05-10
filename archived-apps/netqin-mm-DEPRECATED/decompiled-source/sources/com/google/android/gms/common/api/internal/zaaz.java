package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.signin.SignInOptions;
import com.google.android.gms.signin.zad;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.AbstractC3272p;
import p131c.p161d.p170b.p224d.p238d.p239a.p240a.HandlerC3274q;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaaz.class */
public final class zaaz implements zabm, zap {

    /* renamed from: a */
    public final Lock f23229a;

    /* renamed from: b */
    public final Condition f23230b;

    /* renamed from: c */
    public final Context f23231c;

    /* renamed from: d */
    public final GoogleApiAvailabilityLight f23232d;

    /* renamed from: e */
    public final HandlerC3274q f23233e;

    /* renamed from: f */
    public final Map<Api.AnyClientKey<?>, Api.Client> f23234f;

    /* renamed from: g */
    public final Map<Api.AnyClientKey<?>, ConnectionResult> f23235g = new HashMap();

    /* renamed from: h */
    public final ClientSettings f23236h;

    /* renamed from: i */
    public final Map<Api<?>, Boolean> f23237i;

    /* renamed from: j */
    public final Api.AbstractClientBuilder<? extends zad, SignInOptions> f23238j;
    @NotOnlyInitialized

    /* renamed from: k */
    public volatile zaaw f23239k;

    /* renamed from: l */
    public ConnectionResult f23240l;

    /* renamed from: m */
    public int f23241m;

    /* renamed from: n */
    public final zaar f23242n;

    /* renamed from: o */
    public final zabn f23243o;

    public zaaz(Context context, zaar zaarVar, Lock lock, Looper looper, GoogleApiAvailabilityLight googleApiAvailabilityLight, Map<Api.AnyClientKey<?>, Api.Client> map, ClientSettings clientSettings, Map<Api<?>, Boolean> map2, Api.AbstractClientBuilder<? extends zad, SignInOptions> abstractClientBuilder, ArrayList<zaq> arrayList, zabn zabnVar) {
        this.f23231c = context;
        this.f23229a = lock;
        this.f23232d = googleApiAvailabilityLight;
        this.f23234f = map;
        this.f23236h = clientSettings;
        this.f23237i = map2;
        this.f23238j = abstractClientBuilder;
        this.f23242n = zaarVar;
        this.f23243o = zabnVar;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            zaq zaqVar = arrayList.get(i);
            i++;
            zaqVar.m17466a(this);
        }
        this.f23233e = new HandlerC3274q(this, looper);
        this.f23230b = lock.newCondition();
        this.f23239k = new zaao(this);
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: a */
    public final <A extends Api.AnyClient, T extends BaseImplementation.ApiMethodImpl<? extends Result, A>> T mo17518a(T t) {
        t.m17710e();
        return (T) this.f23239k.mo17538a((zaaw) t);
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: a */
    public final void mo17519a() {
        this.f23239k.mo17537b();
    }

    /* renamed from: a */
    public final void m17534a(AbstractC3272p pVar) {
        this.f23233e.sendMessage(this.f23233e.obtainMessage(1, pVar));
    }

    /* renamed from: a */
    public final void m17533a(ConnectionResult connectionResult) {
        this.f23229a.lock();
        try {
            this.f23240l = connectionResult;
            this.f23239k = new zaao(this);
            this.f23239k.mo17541a();
            this.f23230b.signalAll();
        } finally {
            this.f23229a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zap
    /* renamed from: a */
    public final void mo17468a(ConnectionResult connectionResult, Api<?> api, boolean z) {
        this.f23229a.lock();
        try {
            this.f23239k.mo17539a(connectionResult, api, z);
        } finally {
            this.f23229a.unlock();
        }
    }

    /* renamed from: a */
    public final void m17531a(RuntimeException runtimeException) {
        this.f23233e.sendMessage(this.f23233e.obtainMessage(2, runtimeException));
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: a */
    public final void mo17517a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.f23239k);
        for (Api<?> api : this.f23237i.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.m17784d()).println(":");
            Api.Client client = this.f23234f.get(api.m17785c());
            Preconditions.m17288a(client);
            client.mo17616a(concat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: b */
    public final void mo17516b() {
        if (this.f23239k.mo17535d()) {
            this.f23235g.clear();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: c */
    public final void mo17515c() {
        if (mo17514d()) {
            ((zaaa) this.f23239k).m17591c();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zabm
    /* renamed from: d */
    public final boolean mo17514d() {
        return this.f23239k instanceof zaaa;
    }

    /* renamed from: e */
    public final void m17529e() {
        this.f23229a.lock();
        try {
            this.f23239k = new zaaf(this, this.f23236h, this.f23237i, this.f23232d, this.f23238j, this.f23229a, this.f23231c);
            this.f23239k.mo17541a();
            this.f23230b.signalAll();
        } finally {
            this.f23229a.unlock();
        }
    }

    /* renamed from: f */
    public final void m17528f() {
        this.f23229a.lock();
        try {
            this.f23242n.m17547f();
            this.f23239k = new zaaa(this);
            this.f23239k.mo17541a();
            this.f23230b.signalAll();
        } finally {
            this.f23229a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        this.f23229a.lock();
        try {
            this.f23239k.mo17540a(bundle);
        } finally {
            this.f23229a.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.internal.ConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f23229a.lock();
        try {
            this.f23239k.mo17536b(i);
        } finally {
            this.f23229a.unlock();
        }
    }
}
