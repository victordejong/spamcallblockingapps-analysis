package com.apptentive.android.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.apptentive.android.sdk.Apptentive;
import com.apptentive.android.sdk.comm.ApptentiveHttpClient;
import com.apptentive.android.sdk.conversation.Conversation;
import com.apptentive.android.sdk.conversation.ConversationProxy;
import com.apptentive.android.sdk.module.engagement.interaction.InteractionManager;
import com.apptentive.android.sdk.module.engagement.interaction.model.TermsAndConditions;
import com.apptentive.android.sdk.module.rating.IRatingProvider;
import com.apptentive.android.sdk.module.survey.OnSurveyFinishedListener;
import com.apptentive.android.sdk.storage.AppRelease;
import com.apptentive.android.sdk.storage.ApptentiveTaskManager;
import com.apptentive.android.sdk.util.Nullsafe;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/ApptentiveInstance.class */
public interface ApptentiveInstance extends Nullsafe {
    void addInteractionUpdateListener(InteractionManager.InteractionUpdateListener interactionUpdateListener);

    @Nullable
    Map<String, Object> getAndClearCustomData();

    @Nullable
    AppRelease getAppRelease();

    @Nullable
    Context getApplicationContext();

    int getApplicationVersionCode();

    String getApplicationVersionName();

    @Nullable
    ApptentiveHttpClient getApptentiveHttpClient();

    @Nullable
    ApptentiveTaskManager getApptentiveTaskManager();

    Resources.Theme getApptentiveToolbarTheme();

    @Nullable
    Conversation getConversation();

    @Nullable
    ConversationProxy getConversationProxy();

    Activity getCurrentTaskStackTopActivity();

    String getDefaultAppDisplayName();

    int getDefaultStatusBarColor();

    @Nullable
    SharedPreferences getGlobalSharedPrefs();

    OnSurveyFinishedListener getOnSurveyFinishedListener();

    @Nullable
    IRatingProvider getRatingProvider();

    @Nullable
    Map<String, String> getRatingProviderArgs();

    TermsAndConditions getSurveyTermsAndConditions();

    void login(String str, Apptentive.LoginCallback loginCallback);

    void logout();

    void notifyInteractionUpdated(boolean z);

    void removeInteractionUpdateListener(InteractionManager.InteractionUpdateListener interactionUpdateListener);

    void setOnSurveyFinishedListener(OnSurveyFinishedListener onSurveyFinishedListener);

    void showAboutInternal(Context context, boolean z);

    boolean showMessageCenterInternal(@NonNull Context context, @Nullable Map<String, Object> map);

    void updateApptentiveInteractionTheme(Context context, Resources.Theme theme);
}
