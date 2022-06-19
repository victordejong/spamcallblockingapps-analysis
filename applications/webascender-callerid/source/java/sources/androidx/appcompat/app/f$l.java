package androidx.appcompat.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$l.class */
public abstract class f$l {

    /* renamed from: a */
    private BroadcastReceiver f217a;

    /* renamed from: b */
    final /* synthetic */ f f218b;

    /* renamed from: androidx.appcompat.app.f$l$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/app/f$l$a.class */
    class C0069a extends BroadcastReceiver {
        C0069a() {
            f$l.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            f$l.this.m6835d();
        }
    }

    f$l(f fVar) {
        this.f218b = fVar;
    }

    /* renamed from: a */
    void m6838a() {
        BroadcastReceiver broadcastReceiver = this.f217a;
        if (broadcastReceiver != null) {
            try {
                this.f218b.j.unregisterReceiver(broadcastReceiver);
            } catch (IllegalArgumentException e) {
            }
            this.f217a = null;
        }
    }

    /* renamed from: b */
    abstract IntentFilter m6837b();

    /* renamed from: c */
    abstract int m6836c();

    /* renamed from: d */
    abstract void m6835d();

    /* renamed from: e */
    void m6834e() {
        m6838a();
        IntentFilter m6837b = m6837b();
        if (m6837b == null || m6837b.countActions() == 0) {
            return;
        }
        if (this.f217a == null) {
            this.f217a = new C0069a();
        }
        this.f218b.j.registerReceiver(this.f217a, m6837b);
    }
}
