package com.apptentive.android.sdk.module.engagement.notification;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.p001v4.app.NotificationCompat;
import android.util.TypedValue;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationDispatchTask;
import com.apptentive.android.sdk.module.engagement.EngagementModule;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Action;
import com.apptentive.android.sdk.module.engagement.interaction.model.common.Actions;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.StringUtils;
import com.apptentive.android.sdk.util.Util;
import java.util.List;
import java.util.Random;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter.class */
public class NoteInteractionNotificationAdapter implements InteractionNotificationAdapter {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter$5 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/notification/NoteInteractionNotificationAdapter$5.class */
    public static /* synthetic */ class C08375 {

        /* renamed from: $SwitchMap$com$apptentive$android$sdk$module$engagement$interaction$model$common$Action$Type */
        static final /* synthetic */ int[] f76xc0751b89 = new int[Action.Type.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f76xc0751b89[Action.Type.interaction.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f76xc0751b89[Action.Type.dismiss.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f76xc0751b89[Action.Type.unknown.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    protected void actionButtonPressed(final Context context, Intent intent, final TextModalInteraction textModalInteraction) {
        int intExtra = intent.getIntExtra(Constants.NOTIFICATION_EXTRA_ID, Constants.NOTIFICATION_ID_DEFAULT);
        final int intExtra2 = intent.getIntExtra(Constants.NOTIFICATION_EXTRA_NOTE_ACTION_INDEX, Integer.MIN_VALUE);
        final Action action = textModalInteraction.getActions().getAsList().get(intExtra2);
        Action.Type type = action.getType();
        ApptentiveLog.m403v(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Note Notification button pressed with index %d and action type %s", Integer.valueOf(intExtra2), type.name());
        switch (C08375.f76xc0751b89[type.ordinal()]) {
            case 1:
                context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
                ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter.2
                    /* JADX WARN: Can't wrap try/catch for region: R(13:2|(2:3|(2:5|(2:35|7))(2:34|8))|9|(10:30|13|15|32|16|(1:18)(1:19)|20|21|24|(2:26|36)(2:27|28))|14|15|32|16|(0)(0)|20|21|24|(0)(0)) */
                    /* JADX WARN: Code restructure failed: missing block: B:22:0x00ec, code lost:
                        r14 = move-exception;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:23:0x00ee, code lost:
                        com.apptentive.android.sdk.ApptentiveLog.m410e(com.apptentive.android.sdk.ApptentiveLogTag.NOTIFICATION_INTERACTIONS, r14, "Error creating Event data object.", new java.lang.Object[0]);
                     */
                    /* JADX WARN: Removed duplicated region for block: B:18:0x00bf A[Catch: JSONException -> 0x00ec, TRY_ENTER, TRY_LEAVE, TryCatch #1 {JSONException -> 0x00ec, blocks: (B:16:0x0091, B:18:0x00bf, B:19:0x00c7, B:21:0x00cf), top: B:32:0x0091 }] */
                    /* JADX WARN: Removed duplicated region for block: B:19:0x00c7 A[Catch: JSONException -> 0x00ec, TRY_ENTER, TryCatch #1 {JSONException -> 0x00ec, blocks: (B:16:0x0091, B:18:0x00bf, B:19:0x00c7, B:21:0x00cf), top: B:32:0x0091 }] */
                    /* JADX WARN: Removed duplicated region for block: B:26:0x0114  */
                    /* JADX WARN: Removed duplicated region for block: B:27:0x012f  */
                    @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    protected boolean execute(com.apptentive.android.sdk.conversation.Conversation r11) {
                        /*
                            Method dump skipped, instructions count: 325
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter.C08342.execute(com.apptentive.android.sdk.conversation.Conversation):boolean");
                    }
                }, "choosing and launching Interaction from Note Notification Action");
                break;
            case 2:
                final JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put(TextModalInteraction.EVENT_KEY_ACTION_ID, action.getId());
                    jSONObject.put("label", action.getLabel());
                    jSONObject.put(TextModalInteraction.EVENT_KEY_ACTION_POSITION, intExtra2);
                    jSONObject.put(Interaction.KEY_DISPLAY_TYPE, textModalInteraction.getDisplayType().name());
                } catch (JSONException e) {
                    ApptentiveLog.m410e(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, e, "Error creating Event data object.", new Object[0]);
                }
                ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter.3
                    @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
                    protected boolean execute(Conversation conversation) {
                        return EngagementModule.engageInternal(context, conversation, textModalInteraction, TextModalInteraction.EVENT_NAME_DISMISS, jSONObject.toString());
                    }
                }, "engage Note Notification dismiss");
                break;
            case 3:
                ApptentiveLog.m399w(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unknown Note Interaction Notification button action. Can't do anything.", new Object[0]);
                break;
        }
        ((NotificationManager) context.getSystemService("notification")).cancel(intExtra);
    }

    protected void actionDelete(final Context context, final TextModalInteraction textModalInteraction) {
        ApptentiveLog.m403v(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Delete intent received.", new Object[0]);
        final JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Interaction.KEY_DISPLAY_TYPE, textModalInteraction.getDisplayType().name());
        } catch (JSONException e) {
            ApptentiveLog.m410e(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, e, "Error creating Event data object.", new Object[0]);
        }
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter.4
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                return EngagementModule.engageInternal(context, conversation, textModalInteraction, "cancel", jSONObject.toString());
            }
        }, "engage Note Notification cancel");
    }

    protected void actionDisplayNotification(final Context context, String str, final TextModalInteraction textModalInteraction) {
        NotificationCompat.Builder builder = new NotificationCompat.Builder(context, str);
        builder.setVibrate(new long[]{0, 100, 100, 100, 100, 100}).setOnlyAlertOnce(true).setSmallIcon(C0724R.C0726drawable.apptentive_ic_stat_chat_bubble).setWhen(System.currentTimeMillis());
        Intent intent = new Intent(context, ApptentiveNotificationInteractionBroadcastReceiver.class);
        intent.putExtra(Constants.NOTIFICATION_EXTRA_ID, Constants.NOTIFICATION_ID_DEFAULT);
        intent.putExtra(Constants.NOTIFICATION_EXTRA_INTERACTION_TYPE, textModalInteraction.getType().name());
        intent.putExtra(Constants.NOTIFICATION_EXTRA_INTERACTION_DEFINITION, textModalInteraction.toString());
        intent.setAction(Constants.NOTIFICATION_ACTION_DELETE);
        builder.setDeleteIntent(PendingIntent.getBroadcast(context, new Random().nextInt(), intent, 1073741824));
        NotificationCompat.BigTextStyle bigTextStyle = new NotificationCompat.BigTextStyle();
        if (!StringUtils.isNullOrEmpty(textModalInteraction.getTitle())) {
            builder.setContentTitle(textModalInteraction.getTitle());
            bigTextStyle.setBigContentTitle(textModalInteraction.getTitle());
        }
        if (!StringUtils.isNullOrEmpty(textModalInteraction.getBody())) {
            builder.setContentText(textModalInteraction.getBody());
            bigTextStyle.bigText(textModalInteraction.getBody());
        }
        builder.setStyle(bigTextStyle);
        Actions actions = textModalInteraction.getActions();
        if (actions != null) {
            List<Action> asList = actions.getAsList();
            for (int i = 0; i < asList.size(); i++) {
                Action action = asList.get(i);
                if (i > 3) {
                    ApptentiveLog.m415d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Can't have more than 3 buttons on a Note.", new Object[0]);
                    return;
                }
                Action.Type type = action.getType();
                Intent intent2 = new Intent(context, ApptentiveNotificationInteractionBroadcastReceiver.class);
                intent2.putExtra(Constants.NOTIFICATION_EXTRA_ID, Constants.NOTIFICATION_ID_DEFAULT);
                intent2.putExtra(Constants.NOTIFICATION_EXTRA_INTERACTION_TYPE, textModalInteraction.getType().name());
                intent2.putExtra(Constants.NOTIFICATION_EXTRA_INTERACTION_DEFINITION, textModalInteraction.toString());
                intent2.putExtra(Constants.NOTIFICATION_EXTRA_NOTE_ACTION_INDEX, i);
                switch (C08375.f76xc0751b89[type.ordinal()]) {
                    case 1:
                    case 2:
                        intent2.setAction(Constants.NOTIFICATION_ACTION_NOTE_BUTTON_PRESSED);
                        break;
                    case 3:
                        return;
                }
                builder.addAction(new NotificationCompat.Action.Builder(0, action.getLabel(), PendingIntent.getBroadcast(context, new Random().nextInt(), intent2, 1073741824)).build());
            }
        }
        Resources.Theme buildApptentiveInteractionTheme = Util.buildApptentiveInteractionTheme(context);
        if (buildApptentiveInteractionTheme != null) {
            TypedValue typedValue = new TypedValue();
            if (buildApptentiveInteractionTheme.resolveAttribute(C0724R.C0725attr.apptentiveInteractionNotificationSmallIcon, typedValue, true)) {
                builder.setSmallIcon(typedValue.resourceId);
            } else {
                ApptentiveLog.m415d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unable to find icon in theme for setting Notification icon.", new Object[0]);
            }
            TypedValue typedValue2 = new TypedValue();
            if (buildApptentiveInteractionTheme.resolveAttribute(C0724R.C0725attr.apptentiveInteractionNotificationColor, typedValue2, true)) {
                builder.setColor(typedValue2.data);
            } else {
                ApptentiveLog.m415d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unable to find color in theme for setting Notification icon.", new Object[0]);
            }
        } else {
            ApptentiveLog.m415d(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unable to build theme for getting Notification icon.", new Object[0]);
        }
        ((NotificationManager) context.getSystemService("notification")).notify(Constants.NOTIFICATION_ID_DEFAULT, builder.build());
        final JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Interaction.KEY_DISPLAY_TYPE, textModalInteraction.getDisplayType().name());
        } catch (JSONException e) {
            ApptentiveLog.m410e(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, e, "Error creating Event data object.", new Object[0]);
        }
        ApptentiveHelper.dispatchConversationTask(new ConversationDispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.notification.NoteInteractionNotificationAdapter.1
            @Override // com.apptentive.android.sdk.conversation.ConversationDispatchTask
            protected boolean execute(Conversation conversation) {
                return EngagementModule.engageInternal(context, conversation, textModalInteraction, ApptentiveBaseFragment.EVENT_NAME_LAUNCH, jSONObject.toString());
            }
        }, "engage Note Notification launch");
    }

    @Override // com.apptentive.android.sdk.module.engagement.notification.InteractionNotificationAdapter
    public void handleInteractionNotificationAction(Context context, String str, Intent intent) {
        String action = intent.getAction();
        String stringExtra = intent.getStringExtra(Constants.NOTIFICATION_EXTRA_INTERACTION_DEFINITION);
        try {
            TextModalInteraction textModalInteraction = new TextModalInteraction(intent.getStringExtra(Constants.NOTIFICATION_EXTRA_INTERACTION_DEFINITION));
            if (StringUtils.equal(action, Constants.NOTIFICATION_ACTION_DISPLAY)) {
                actionDisplayNotification(context, str, textModalInteraction);
            } else if (StringUtils.equal(action, Constants.NOTIFICATION_ACTION_DELETE)) {
                actionDelete(context, textModalInteraction);
            } else if (StringUtils.equal(action, Constants.NOTIFICATION_ACTION_NOTE_BUTTON_PRESSED)) {
                actionButtonPressed(context, intent, textModalInteraction);
            } else {
                ApptentiveLog.m399w(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unsupported action %s for Interaction type %s", action, textModalInteraction.getType().name());
            }
        } catch (JSONException e) {
            ApptentiveLog.m399w(ApptentiveLogTag.NOTIFICATION_INTERACTIONS, "Unable to parse interaction: %s", stringExtra);
        }
    }
}
