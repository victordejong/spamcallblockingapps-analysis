package com.google.firebase.iid;

import android.content.BroadcastReceiver;
import android.content.Intent;
import android.util.Log;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.firebase.iid.ad */
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/ad.class */
final class C3190ad {

    /* renamed from: a */
    final Intent f19062a;

    /* renamed from: b */
    private final BroadcastReceiver.PendingResult f19063b;

    /* renamed from: c */
    private boolean f19064c = false;

    /* renamed from: d */
    private final ScheduledFuture<?> f19065d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3190ad(final Intent intent, BroadcastReceiver.PendingResult pendingResult, ScheduledExecutorService scheduledExecutorService) {
        this.f19062a = intent;
        this.f19063b = pendingResult;
        this.f19065d = scheduledExecutorService.schedule(new Runnable(this, intent) { // from class: com.google.firebase.iid.ac

            /* renamed from: a */
            private final C3190ad f19060a;

            /* renamed from: b */
            private final Intent f19061b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19060a = this;
                this.f19061b = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C3190ad adVar = this.f19060a;
                String action = this.f19061b.getAction();
                StringBuilder sb = new StringBuilder(String.valueOf(action).length() + 61);
                sb.append("Service took too long to process intent: ");
                sb.append(action);
                sb.append(" App may get closed.");
                Log.w("EnhancedIntentService", sb.toString());
                adVar.m529a();
            }
        }, 9000L, TimeUnit.MILLISECONDS);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m529a() {
        synchronized (this) {
            if (!this.f19064c) {
                this.f19063b.finish();
                this.f19065d.cancel(false);
                this.f19064c = true;
            }
        }
    }
}
