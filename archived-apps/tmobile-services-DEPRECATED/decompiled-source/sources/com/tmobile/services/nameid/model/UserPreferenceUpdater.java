package com.tmobile.services.nameid.model;

import android.content.Context;
import androidx.annotation.StringRes;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentManager;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.Command;
import com.tmobile.services.nameid.utility.CustomToastBuilder;
import com.tmobile.services.nameid.utility.DualPrefChangeCommand;
import com.tmobile.services.nameid.utility.EmptyCommand;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.ManageDialog;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SinglePrefChangeCommand;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.annotations.NonNull;
import javax.annotation.Nullable;
import kotlin.jvm.functions.Function0;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceUpdater.class */
public class UserPreferenceUpdater {
    private static final String LOG_TAG = "UserPreferenceUpdater#";
    private boolean callerSettingExists;
    private Context context;
    private boolean messageUserPrefExists;
    private CallerSetting newCallerSetting;
    private MessageUserPreference newMessageUserPref;
    private final CallerSetting oldCallerSetting;
    private final MessageUserPreference oldMessageUserPref;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.model.UserPreferenceUpdater$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceUpdater$1.class */
    public static /* synthetic */ class C18261 {
        static final /* synthetic */ int[] $SwitchMap$com$tmobile$services$nameid$api$ApiUtils$Mode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ApiUtils.Mode.values().length];
            $SwitchMap$com$tmobile$services$nameid$api$ApiUtils$Mode = iArr;
            try {
                iArr[ApiUtils.Mode.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$tmobile$services$nameid$api$ApiUtils$Mode[ApiUtils.Mode.DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$tmobile$services$nameid$api$ApiUtils$Mode[ApiUtils.Mode.UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/model/UserPreferenceUpdater$DualUserPrefChangeListener.class */
    private class DualUserPrefChangeListener implements DualPrefChangeCommand.GenericUserPrefListener {
        boolean callBlockingUpdate;
        boolean smsBlockingUpdate;

        public DualUserPrefChangeListener(boolean z, boolean z2) {
            this.callBlockingUpdate = false;
            this.smsBlockingUpdate = false;
            this.callBlockingUpdate = z;
            this.smsBlockingUpdate = z2;
        }

        private void checkBlockingNotifs(Context context) {
            if (this.callBlockingUpdate || this.smsBlockingUpdate) {
                FragmentManager findFragmentManager = UserPreferenceUpdater.this.findFragmentManager(context);
                if (findFragmentManager != null) {
                    WidgetUtils.m5223l0(findFragmentManager, this.callBlockingUpdate, this.smsBlockingUpdate);
                } else {
                    LogUtil.m5631p(UserPreferenceUpdater.LOG_TAG, "Couldn't find a fragment manager");
                }
            }
        }

        private void showToast(@StringRes int i) {
            CustomToastBuilder customToastBuilder = new CustomToastBuilder();
            customToastBuilder.m5795b(i);
            customToastBuilder.m5796a(UserPreferenceUpdater.this.context).show();
        }

        @Override // com.tmobile.services.nameid.utility.DualPrefChangeCommand.GenericUserPrefListener
        public void onFail(final Command command, String str) {
            ManageDialog.m5621j(UserPreferenceUpdater.this.context, -1, -1, "", -1, str, new Function0() { // from class: com.tmobile.services.nameid.model.c
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return Command.this.execute();
                }
            }, null, 0);
        }

        @Override // com.tmobile.services.nameid.utility.DualPrefChangeCommand.GenericUserPrefListener
        public void onSuccess() {
            if (PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false) && UserPreferenceUpdater.this.context != null) {
                showToast(C1517R.string.toast_management_settings_updated);
                if (this.callBlockingUpdate || this.smsBlockingUpdate) {
                    checkBlockingNotifs(UserPreferenceUpdater.this.context);
                }
            }
        }
    }

    public UserPreferenceUpdater(CallerSetting callerSetting, MessageUserPreference messageUserPreference, Context context) {
        this.oldCallerSetting = callerSetting.copy();
        this.newCallerSetting = callerSetting.copy();
        boolean z = true;
        this.callerSettingExists = callerSetting.getAction() != CallerSetting.Action.NONE.getValue();
        this.oldMessageUserPref = messageUserPreference.copy();
        this.newMessageUserPref = messageUserPreference.copy();
        if (messageUserPreference.getAction() == MessageUserPreference.Action.NONE.getValue()) {
            z = false;
        }
        this.messageUserPrefExists = z;
        this.context = context;
    }

    private SinglePrefChangeCommand buildCallerCommand(ApiUtils.Mode mode) {
        SinglePrefChangeCommand singlePrefChangeCommand;
        String e164Number = this.oldCallerSetting.getE164Number();
        int action = this.oldCallerSetting.getAction();
        int action2 = this.newCallerSetting.getAction();
        if (mode == ApiUtils.Mode.ADD) {
            ManageDialog.ResponseAddObserver responseAddObserver = new ManageDialog.ResponseAddObserver(e164Number, action2, this.context);
            if (action2 == CallerSetting.Action.BLOCKED.getValue()) {
                responseAddObserver.m5604f(true);
            }
            singlePrefChangeCommand = new SinglePrefChangeCommand(this.newCallerSetting, mode, responseAddObserver, null);
        } else if (mode == ApiUtils.Mode.DELETE) {
            ManageDialog.UserPrefDeleteObserver userPrefDeleteObserver = new ManageDialog.UserPrefDeleteObserver(this.oldCallerSetting, this.context);
            SinglePrefChangeCommand singlePrefChangeCommand2 = new SinglePrefChangeCommand(this.newCallerSetting, mode, null, userPrefDeleteObserver);
            userPrefDeleteObserver.m5593d(singlePrefChangeCommand2);
            userPrefDeleteObserver.m5592e(getCallRollback(mode));
            return singlePrefChangeCommand2;
        } else {
            ManageDialog.ResponseObserver responseObserver = new ManageDialog.ResponseObserver(e164Number, action, action2, this.context);
            if (action2 == CallerSetting.Action.BLOCKED.getValue()) {
                responseObserver.m5598f(true);
            }
            singlePrefChangeCommand = new SinglePrefChangeCommand(this.newCallerSetting, mode, null, responseObserver);
        }
        return singlePrefChangeCommand;
    }

    private SinglePrefChangeCommand buildMessageCommand(ApiUtils.Mode mode) {
        SinglePrefChangeCommand singlePrefChangeCommand;
        String e164Number = this.oldMessageUserPref.getE164Number();
        int action = this.oldMessageUserPref.getAction();
        int action2 = this.newMessageUserPref.getAction();
        if (mode == ApiUtils.Mode.ADD) {
            ManageDialog.MessagePrefAddApiObserver messagePrefAddApiObserver = new ManageDialog.MessagePrefAddApiObserver(e164Number, action, action2, this.context);
            SinglePrefChangeCommand singlePrefChangeCommand2 = new SinglePrefChangeCommand(this.newMessageUserPref, mode, messagePrefAddApiObserver, null);
            messagePrefAddApiObserver.m5611e(singlePrefChangeCommand2);
            messagePrefAddApiObserver.m5610f(getMessageRollback(mode));
            singlePrefChangeCommand = singlePrefChangeCommand2;
        } else {
            ManageDialog.UserPrefDeleteObserver userPrefDeleteObserver = new ManageDialog.UserPrefDeleteObserver(this.oldMessageUserPref, this.context);
            SinglePrefChangeCommand singlePrefChangeCommand3 = new SinglePrefChangeCommand(this.oldMessageUserPref, mode, null, userPrefDeleteObserver);
            userPrefDeleteObserver.m5593d(singlePrefChangeCommand3);
            userPrefDeleteObserver.m5592e(getMessageRollback(mode));
            singlePrefChangeCommand = singlePrefChangeCommand3;
        }
        return singlePrefChangeCommand;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public FragmentManager findFragmentManager(Context context) {
        if (context == null || !(context instanceof AppCompatActivity)) {
            return null;
        }
        return ((AppCompatActivity) context).getSupportFragmentManager();
    }

    private Command getCallRollback(ApiUtils.Mode mode) {
        int i = C18261.$SwitchMap$com$tmobile$services$nameid$api$ApiUtils$Mode[mode.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? new EmptyCommand() : ApiUtils.m6898A(this.oldCallerSetting) : ApiUtils.m6822z(this.oldCallerSetting) : ApiUtils.m6824y(this.newCallerSetting);
    }

    private Command getMessageRollback(ApiUtils.Mode mode) {
        int i = C18261.$SwitchMap$com$tmobile$services$nameid$api$ApiUtils$Mode[mode.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? new EmptyCommand() : ApiUtils.m6898A(this.oldMessageUserPref) : ApiUtils.m6822z(this.oldMessageUserPref) : ApiUtils.m6824y(this.newMessageUserPref);
    }

    private void logAnalyticsForCall(UserPreference userPreference, UserPreference userPreference2, ApiUtils.Mode mode) {
        String n = MainApplication.m7526n();
        LogUtil.m5643d("UserPreferenceUpdater#logAnalyticsForCall", "Logging user PNB update with screen = " + n);
        int i = C18261.$SwitchMap$com$tmobile$services$nameid$api$ApiUtils$Mode[mode.ordinal()];
        if (i == 1) {
            AnalyticsWrapper.m5881G(n, userPreference2.getAction());
        } else if (i == 2) {
            AnalyticsWrapper.m5885C(n, userPreference.getAction());
        } else if (i == 3) {
            AnalyticsWrapper.m5854z(n, userPreference.getAction(), userPreference2.getAction());
        }
    }

    private void logAnalyticsForMessage(ApiUtils.Mode mode) {
        String n = MainApplication.m7526n();
        LogUtil.m5643d("UserPreferenceUpdater#logAnalyticsForMessage", "Logging user PNB update with screen = " + n);
        int i = C18261.$SwitchMap$com$tmobile$services$nameid$api$ApiUtils$Mode[mode.ordinal()];
        if (i == 1) {
            AnalyticsWrapper.m5882F(n);
        } else if (i == 2) {
            AnalyticsWrapper.m5886B(n);
        }
    }

    @NonNull
    public Command buildUserPrefChangeCommand() {
        ApiUtils.Mode callerMode = getCallerMode();
        ApiUtils.Mode messageMode = getMessageMode();
        return (callerMode == null || messageMode == null) ? callerMode != null ? buildCallerCommand(callerMode) : messageMode != null ? buildMessageCommand(messageMode) : new EmptyCommand() : new DualPrefChangeCommand(this, new DualUserPrefChangeListener(hasUpdatetoCallBlocking(), hasUpdatetoSmsBlocking()), this.context);
    }

    public ApiUtils.Mode getCallerMode() {
        if (!hasCallPrefChanges()) {
            return null;
        }
        return this.newCallerSetting.getAction() == CallerSetting.Action.NONE.getValue() ? ApiUtils.Mode.DELETE : this.callerSettingExists ? ApiUtils.Mode.UPDATE : ApiUtils.Mode.ADD;
    }

    public ApiUtils.Mode getMessageMode() {
        if (!hasMessagePrefChanges()) {
            return null;
        }
        return this.newMessageUserPref.getAction() == MessageUserPreference.Action.NONE.getValue() ? ApiUtils.Mode.DELETE : this.messageUserPrefExists ? ApiUtils.Mode.UPDATE : ApiUtils.Mode.ADD;
    }

    public CallerSetting getNewCallerSetting() {
        return this.newCallerSetting;
    }

    public MessageUserPreference getNewMessageUserPref() {
        return this.newMessageUserPref;
    }

    public CallerSetting getOldCallerSetting() {
        return this.oldCallerSetting;
    }

    public MessageUserPreference getOldMessageUserPref() {
        return this.oldMessageUserPref;
    }

    public boolean hasCallPrefChanges() {
        return this.oldCallerSetting.getAction() != this.newCallerSetting.getAction();
    }

    public boolean hasChanges() {
        return hasCallPrefChanges() || hasMessagePrefChanges();
    }

    public boolean hasMessagePrefChanges() {
        return this.oldMessageUserPref.getAction() != this.newMessageUserPref.getAction();
    }

    public boolean hasUpdateToBlocking() {
        return this.newCallerSetting.getAction() == CallerSetting.Action.BLOCKED.getValue() || this.newMessageUserPref.getAction() == MessageUserPreference.Action.BLOCKED.getValue();
    }

    public boolean hasUpdatetoCallBlocking() {
        return this.newCallerSetting.getAction() == CallerSetting.Action.BLOCKED.getValue();
    }

    public boolean hasUpdatetoSmsBlocking() {
        return this.newMessageUserPref.getAction() == MessageUserPreference.Action.BLOCKED.getValue();
    }

    public void logAnalytics() {
        ApiUtils.Mode callerMode = getCallerMode();
        if (callerMode != null) {
            logAnalyticsForCall(this.oldCallerSetting, this.newCallerSetting, callerMode);
        }
        ApiUtils.Mode messageMode = getMessageMode();
        if (messageMode != null) {
            logAnalyticsForMessage(messageMode);
        }
    }

    public void updateCallUserPref(CallerSetting.Action action) {
        this.newCallerSetting.setAction(action.getValue());
    }

    public void updateMessageUserPref(MessageUserPreference.Action action) {
        this.newMessageUserPref.setAction(action.getValue());
    }
}
