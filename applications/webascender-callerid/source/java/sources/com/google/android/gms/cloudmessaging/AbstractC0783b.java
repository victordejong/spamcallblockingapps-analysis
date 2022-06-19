package com.google.android.gms.cloudmessaging;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.p027r.ThreadFactoryC0976a;
import com.google.android.gms.tasks.AbstractC1646g;
import com.google.android.gms.tasks.C1650j;
import com.revenuecat.purchases.common.BackendKt;
import g.f.a.d.c.f.a;
import g.f.a.d.c.f.f;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.cloudmessaging.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/b.class */
public abstract class AbstractC0783b extends BroadcastReceiver {

    /* renamed from: a */
    private final ExecutorService f3272a = a.a().b(new ThreadFactoryC0976a("firebase-iid-executor"), f.a);

    /* renamed from: e */
    private final int m3740e(Context context, Intent intent) {
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException e) {
                Log.e("CloudMessagingReceiver", "Notification pending intent canceled");
            }
        }
        Bundle extras = intent.getExtras();
        if (extras != null) {
            extras.remove("pending_intent");
        } else {
            extras = new Bundle();
        }
        if ("com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            m3741d(context, extras);
            return -1;
        } else if ("com.google.firebase.messaging.NOTIFICATION_DISMISS".equals(intent.getAction())) {
            m3742c(context, extras);
            return -1;
        } else {
            Log.e("CloudMessagingReceiver", "Unknown notification action");
            return BackendKt.HTTP_SERVER_ERROR_CODE;
        }
    }

    /* renamed from: g */
    private final int m3738g(Context context, Intent intent) {
        AbstractC1646g<Void> abstractC1646g;
        if (intent.getExtras() == null) {
            return BackendKt.HTTP_SERVER_ERROR_CODE;
        }
        String stringExtra = intent.getStringExtra("google.message_id");
        if (TextUtils.isEmpty(stringExtra)) {
            abstractC1646g = C1650j.m1440e(null);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("google.message_id", stringExtra);
            abstractC1646g = C0792i.m3719c(context).m3718d(2, bundle);
        }
        int m3743b = m3743b(context, new a(intent));
        try {
            C1650j.m1443b(abstractC1646g, TimeUnit.SECONDS.toMillis(1L), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
            sb.append("Message ack failed: ");
            sb.append(valueOf);
            Log.w("CloudMessagingReceiver", sb.toString());
        }
        return m3743b;
    }

    /* renamed from: a */
    protected Executor m3744a() {
        return this.f3272a;
    }

    /* renamed from: b */
    protected abstract int m3743b(Context context, a aVar);

    /* renamed from: c */
    protected abstract void m3742c(Context context, Bundle bundle);

    /* renamed from: d */
    protected abstract void m3741d(Context context, Bundle bundle);

    /* renamed from: f */
    public final /* synthetic */ void m3739f(Intent intent, Context context, boolean z, BroadcastReceiver.PendingResult pendingResult) {
        try {
            Parcelable parcelableExtra = intent.getParcelableExtra("wrapped_intent");
            Intent intent2 = parcelableExtra instanceof Intent ? (Intent) parcelableExtra : null;
            int m3740e = intent2 != null ? m3740e(context, intent2) : m3738g(context, intent);
            if (z) {
                pendingResult.setResultCode(m3740e);
            }
        } finally {
            pendingResult.finish();
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        m3744a().execute(new Runnable(this, intent, context, isOrderedBroadcast(), goAsync()) { // from class: com.google.android.gms.cloudmessaging.h

            /* renamed from: f */
            private final AbstractC0783b f3286f;

            /* renamed from: g */
            private final Intent f3287g;

            /* renamed from: h */
            private final Context f3288h;

            /* renamed from: i */
            private final boolean f3289i;

            /* renamed from: j */
            private final BroadcastReceiver.PendingResult f3290j;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f3286f = this;
                this.f3287g = intent;
                this.f3288h = context;
                this.f3289i = isOrderedBroadcast;
                this.f3290j = goAsync;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f3286f.m3739f(this.f3287g, this.f3288h, this.f3289i, this.f3290j);
            }
        });
    }
}
