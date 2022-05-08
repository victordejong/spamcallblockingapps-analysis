package com.google.firebase.messaging;

import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import android.util.Log;
import com.google.firebase.iid.zzav;
import com.google.firebase.iid.zzb;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/google/firebase/messaging/FirebaseMessagingService.class */
public class FirebaseMessagingService extends zzb {
    private static final Queue<String> zzdr = new ArrayDeque(10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzj(Bundle bundle) {
        Iterator<String> it = bundle.keySet().iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (next != null && next.startsWith("google.c.")) {
                it.remove();
            }
        }
    }

    @WorkerThread
    public void onDeletedMessages() {
    }

    @WorkerThread
    public void onMessageReceived(RemoteMessage remoteMessage) {
    }

    @WorkerThread
    public void onMessageSent(String str) {
    }

    @WorkerThread
    public void onNewToken(String str) {
    }

    @WorkerThread
    public void onSendError(String str, Exception exc) {
    }

    @Override // com.google.firebase.iid.zzb
    protected final Intent zzb(Intent intent) {
        return zzav.zzai().zzaj();
    }

    @Override // com.google.firebase.iid.zzb
    public final boolean zzc(Intent intent) {
        if (!"com.google.firebase.messaging.NOTIFICATION_OPEN".equals(intent.getAction())) {
            return false;
        }
        PendingIntent pendingIntent = (PendingIntent) intent.getParcelableExtra("pending_intent");
        if (pendingIntent != null) {
            try {
                pendingIntent.send();
            } catch (PendingIntent.CanceledException e) {
                Log.e("FirebaseMessaging", "Notification pending intent canceled");
            }
        }
        if (!MessagingAnalytics.shouldUploadMetrics(intent)) {
            return true;
        }
        MessagingAnalytics.logNotificationOpen(intent);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x011b  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x020a  */
    @Override // com.google.firebase.iid.zzb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(android.content.Intent r8) {
        /*
            Method dump skipped, instructions count: 685
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessagingService.zzd(android.content.Intent):void");
    }
}
