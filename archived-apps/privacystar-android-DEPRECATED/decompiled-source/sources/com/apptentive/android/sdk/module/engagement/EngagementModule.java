package com.apptentive.android.sdk.module.engagement;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.debug.Assert;
import com.apptentive.android.sdk.model.EventPayload;
import com.apptentive.android.sdk.model.ExtendedData;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.module.engagement.interaction.model.MessageCenterInteraction;
import com.apptentive.android.sdk.module.metric.MetricModule;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchQueue;
import com.apptentive.android.sdk.util.threading.DispatchTask;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelperConstants;
import io.fabric.sdk.android.services.settings.SettingsJsonConstants;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/EngagementModule.class */
public class EngagementModule {
    private static final InteractionLauncherFactory LAUNCHER_FACTORY = new DefaultInteractionLauncherFactory();

    private static boolean canShowInteraction(Conversation conversation, String str) {
        ApptentiveHelper.checkConversationQueue();
        if (conversation == null) {
            throw new IllegalArgumentException("Conversation is null");
        }
        boolean z = false;
        if (conversation.getApplicableInteraction(str, false) != null) {
            z = true;
        }
        return z;
    }

    public static boolean canShowInteraction(Conversation conversation, String str, String str2, String str3) {
        return canShowInteraction(conversation, generateEventLabel(str3, str, str2));
    }

    private static boolean doEngage(Conversation conversation, Context context, String str) {
        ApptentiveHelper.checkConversationQueue();
        Interaction applicableInteraction = conversation.getApplicableInteraction(str, true);
        if (applicableInteraction != null) {
            conversation.getEventData().storeInteractionForCurrentAppVersion(Util.currentTimeSeconds(), ApptentiveInternal.getInstance().getApplicationVersionCode(), ApptentiveInternal.getInstance().getApplicationVersionName(), applicableInteraction.getId());
            launchInteraction(context, applicableInteraction);
            return true;
        }
        ApptentiveLog.m415d(ApptentiveLogTag.INTERACTIONS, "No interaction to show for event: '%s'", str);
        return false;
    }

    private static String encodeEventLabelPart(String str) {
        return str.replace(DatabaseHelperConstants.ARG_WILDCARD, "%25").replace("/", "%2F").replace("#", "%23");
    }

    public static boolean engage(Context context, Conversation conversation, String str, String str2, String str3, String str4, String str5, Map<String, Object> map, ExtendedData... extendedDataArr) {
        synchronized (EngagementModule.class) {
            try {
                ApptentiveHelper.checkConversationQueue();
                if (context == null) {
                    throw new IllegalArgumentException("Context is null");
                } else if (conversation == null) {
                    throw new IllegalArgumentException("Conversation is null");
                } else {
                    Assert.assertTrue(ApptentiveInternal.isApptentiveRegistered());
                    if (!ApptentiveInternal.isApptentiveRegistered()) {
                        return false;
                    }
                    try {
                        String generateEventLabel = generateEventLabel(str, str2, str4);
                        ApptentiveLog.m407i(ApptentiveLogTag.INTERACTIONS, "Engage event: '%s'", generateEventLabel);
                        conversation.getEventData().storeEventForCurrentAppVersion(Util.currentTimeSeconds(), ApptentiveInternal.getInstance().getApplicationVersionCode(), ApptentiveInternal.getInstance().getApplicationVersionName(), generateEventLabel);
                        conversation.addPayload(new EventPayload(generateEventLabel, str3, str5, map, extendedDataArr));
                        return doEngage(conversation, context, generateEventLabel);
                    } catch (Exception e) {
                        ApptentiveLog.m410e(ApptentiveLogTag.INTERACTIONS, e, "Exception while engaging event '%s'", str4);
                        MetricModule.sendError(e, null, null);
                        return false;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean engageInternal(Context context, Conversation conversation, Interaction interaction, String str) {
        boolean engage;
        synchronized (EngagementModule.class) {
            try {
                engage = engage(context, conversation, "com.apptentive", interaction.getType().name(), interaction.getId(), str, null, null, null);
            } catch (Throwable th) {
                throw th;
            }
        }
        return engage;
    }

    public static boolean engageInternal(Context context, Conversation conversation, Interaction interaction, String str, String str2) {
        boolean engage;
        synchronized (EngagementModule.class) {
            try {
                engage = engage(context, conversation, "com.apptentive", interaction.getType().name(), interaction.getId(), str, str2, null, null);
            } catch (Throwable th) {
                throw th;
            }
        }
        return engage;
    }

    public static boolean engageInternal(Context context, Conversation conversation, String str) {
        boolean engage;
        synchronized (EngagementModule.class) {
            try {
                engage = engage(context, conversation, "com.apptentive", SettingsJsonConstants.APP_KEY, null, str, null, null, null);
            } catch (Throwable th) {
                throw th;
            }
        }
        return engage;
    }

    public static boolean engageInternal(Context context, Conversation conversation, String str, String str2) {
        boolean engage;
        synchronized (EngagementModule.class) {
            try {
                engage = engage(context, conversation, "com.apptentive", SettingsJsonConstants.APP_KEY, null, str, str2, null, null);
            } catch (Throwable th) {
                throw th;
            }
        }
        return engage;
    }

    public static String generateEventLabel(String str, String str2, String str3) {
        return String.format("%s#%s#%s", encodeEventLabelPart(str), encodeEventLabelPart(str2), encodeEventLabelPart(str3));
    }

    public static void launchInteraction(final Context context, final Interaction interaction) {
        if (context == null) {
            ApptentiveLog.m409e("Unable to launch interaction: context is null", new Object[0]);
        } else if (interaction == null) {
            ApptentiveLog.m409e("Unable to launch interaction: interaction instance is null", new Object[0]);
        } else if (!DispatchQueue.isMainQueue()) {
            DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.EngagementModule.1
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    EngagementModule.launchInteraction(context, interaction);
                }
            });
        } else {
            try {
                ApptentiveLog.m407i(ApptentiveLogTag.INTERACTIONS, "Launching interaction: '%s'", interaction.getType());
                InteractionLauncher launcherForInteraction = LAUNCHER_FACTORY.launcherForInteraction(interaction);
                if (launcherForInteraction != null) {
                    ApptentiveLog.m413d("Interaction %slaunched", launcherForInteraction.launch(context, interaction) ? "" : "NOT ");
                } else {
                    ApptentiveLog.m409e("Interaction not launched: can't create launcher for interaction: %s", interaction);
                }
            } catch (Exception e) {
                ApptentiveLog.m408e(e, "Exception while launching interaction: %s", interaction);
            }
        }
    }

    public static void launchMessageCenterErrorActivity(final Context context) {
        if (!DispatchQueue.isMainQueue()) {
            DispatchQueue.mainQueue().dispatchAsync(new DispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.EngagementModule.2
                @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                protected void execute() {
                    EngagementModule.launchMessageCenterErrorActivity(context);
                }
            });
        } else if (context != null) {
            Intent generateMessageCenterErrorIntent = MessageCenterInteraction.generateMessageCenterErrorIntent(context);
            if (!(context instanceof Activity)) {
                generateMessageCenterErrorIntent.addFlags(402653184);
            }
            context.startActivity(generateMessageCenterErrorIntent);
        }
    }
}
