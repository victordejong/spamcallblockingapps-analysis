package com.apptentive.android.sdk.module.engagement.notification;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.util.ContextUtils;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/DefaultInteractionNotificationBroadcastReceiverHandler.class */
public class DefaultInteractionNotificationBroadcastReceiverHandler implements InteractionNotificationBroadcastReceiverHandler {
    private static final NoteInteractionNotificationAdapter DEFAULT_ADAPTER_NOTE = new NoteInteractionNotificationAdapter();

    /* renamed from: com.apptentive.android.sdk.module.engagement.notification.DefaultInteractionNotificationBroadcastReceiverHandler$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/DefaultInteractionNotificationBroadcastReceiverHandler$1.class */
    static /* synthetic */ class C08361 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$Interaction$Type */
        static final /* synthetic */ int[] f6459xb4613d26;

        static {
            int[] iArr = new int[Interaction.Type.values().length];
            f6459xb4613d26 = iArr;
            try {
                iArr[Interaction.Type.TextModal.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    private void logIntent(Intent intent) {
        if (ApptentiveLog.canLog(ApptentiveLog.Level.VERBOSE)) {
            ApptentiveLog.m15638v(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Action: %s", intent.getAction());
            Bundle extras = intent.getExtras();
            if (extras != null) {
                ApptentiveLog.m15638v(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Extras:", new Object[0]);
                for (String str : extras.keySet()) {
                    ApptentiveLog.m15638v(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "  \"%s\" = \"%s\"", str, String.valueOf(extras.get(str)));
                }
            }
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.notification.InteractionNotificationBroadcastReceiverHandler
    public void handleBroadcast(Context context, Intent intent) throws JSONException {
        ApptentiveLog.m15646d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Received broadcast", new Object[0]);
        logIntent(intent);
        if (Build.VERSION.SDK_INT >= 26) {
            ContextUtils.getNotificationManager(context).createNotificationChannel(NotificationChannelHolder.getInstance());
        }
        Interaction.Type parse = Interaction.Type.parse(intent.getStringExtra("com.apptentive.notification.extra.INTERACTION_TYPE"));
        String stringExtra = intent.getStringExtra("com.apptentive.notification.extra.INTERACTION_DEFINITION");
        if (stringExtra == null) {
            ApptentiveLog.m15633w("Interaction Notification Intent is missing extra %s", "com.apptentive.notification.extra.INTERACTION_DEFINITION");
        } else if (C08361.f6459xb4613d26[parse.ordinal()] != 1) {
            ApptentiveLog.m15633w("Attempted to launch Interaction as Notification, but that is not supported for the interaction type: %s", stringExtra);
        } else {
            DEFAULT_ADAPTER_NOTE.handleInteractionNotificationAction(context, "com.apptentive.notification.channel.DEFAULT", intent);
        }
    }
}
