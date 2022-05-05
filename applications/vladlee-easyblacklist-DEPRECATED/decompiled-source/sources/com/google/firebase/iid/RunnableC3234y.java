package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.firebase.iid.y */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/y.class */
public final class RunnableC3234y implements Runnable {

    /* renamed from: a */
    private final long f19157a;

    /* renamed from: b */
    private final PowerManager.WakeLock f19158b = ((PowerManager) m433a().getSystemService("power")).newWakeLock(1, "fiid-sync");

    /* renamed from: c */
    private final FirebaseInstanceId f19159c;

    /* renamed from: d */
    private final C3187aa f19160d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3234y(FirebaseInstanceId firebaseInstanceId, C3187aa aaVar, long j) {
        this.f19159c = firebaseInstanceId;
        this.f19160d = aaVar;
        this.f19157a = j;
        this.f19158b.setReferenceCounted(false);
    }

    /* renamed from: c */
    private final boolean m431c() {
        C3235z d = this.f19159c.m551d();
        if (!this.f19159c.m563a(d)) {
            return true;
        }
        try {
            String e = this.f19159c.m550e();
            if (e == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Token successfully retrieved");
            }
            if (d != null && (d == null || e.equals(d.f19162a))) {
                return true;
            }
            Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
            intent.putExtra("token", e);
            Context a = m433a();
            Intent intent2 = new Intent(a, FirebaseInstanceIdReceiver.class);
            intent2.setAction("com.google.firebase.MESSAGING_EVENT");
            intent2.putExtra("wrapped_intent", intent);
            a.sendBroadcast(intent2);
            return true;
        } catch (IOException | SecurityException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            Log.e("FirebaseInstanceId", valueOf.length() != 0 ? "Token retrieval failed: ".concat(valueOf) : new String("Token retrieval failed: "));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Context m433a() {
        return this.f19159c.m556b().m664a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final boolean m432b() {
        ConnectivityManager connectivityManager = (ConnectivityManager) m433a().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (C3233x.m439a().m438a(m433a())) {
                this.f19158b.acquire();
            }
            this.f19159c.m557a(true);
            if (!this.f19159c.m547h()) {
                this.f19159c.m557a(false);
                if (C3233x.m439a().m438a(m433a())) {
                    this.f19158b.release();
                }
            } else if (!C3233x.m439a().m436b(m433a()) || m432b()) {
                if (!m431c() || !this.f19160d.m534a(this.f19159c)) {
                    this.f19159c.m566a(this.f19157a);
                } else {
                    this.f19159c.m557a(false);
                }
                if (C3233x.m439a().m438a(m433a())) {
                    this.f19158b.release();
                }
            } else {
                new C3188ab(this).m530a();
                if (C3233x.m439a().m438a(m433a())) {
                    this.f19158b.release();
                }
            }
        } catch (Throwable th) {
            if (C3233x.m439a().m438a(m433a())) {
                this.f19158b.release();
            }
            throw th;
        }
    }
}
