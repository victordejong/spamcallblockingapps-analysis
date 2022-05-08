package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.p001v4.app.FragmentActivity;
import android.support.p004v7.widget.AppCompatImageView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.apptentive.android.sdk.ApptentiveHelper;
import com.apptentive.android.sdk.ApptentiveInternal;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.engagement.interaction.model.Interaction;
import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.Util;
import com.apptentive.android.sdk.util.threading.DispatchTask;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment.class */
public class MessageCenterErrorFragment extends ApptentiveBaseFragment<Interaction> {
    private static final String EVENT_NAME_NO_INTERACTION_ATTEMPTING = "no_interaction_attempting";
    private static final String EVENT_NAME_NO_INTERACTION_CLOSE = "no_interaction_close";
    private static final String EVENT_NAME_NO_INTERACTION_NO_INTERNET = "no_interaction_no_internet";
    private View progress;
    private View root;

    /* renamed from: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterErrorFragment$1 */
    /* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/MessageCenterErrorFragment$1.class */
    class C07861 extends DispatchTask {
        final /* synthetic */ boolean val$successful;

        C07861(boolean z) {
            this.val$successful = z;
        }

        @Override // com.apptentive.android.sdk.util.threading.DispatchTask
        protected void execute() {
            if (this.val$successful) {
                final FragmentActivity activity = MessageCenterErrorFragment.this.getActivity();
                ApptentiveHelper.dispatchOnConversationQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterErrorFragment.1.1
                    @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                    protected void execute() {
                        ApptentiveInternal.getInstance().showMessageCenterInternal(activity, null);
                        MessageCenterErrorFragment.this.dispatchOnMainQueue(new DispatchTask() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.MessageCenterErrorFragment.1.1.1
                            @Override // com.apptentive.android.sdk.util.threading.DispatchTask
                            protected void execute() {
                                MessageCenterErrorFragment.this.transit();
                            }
                        });
                    }
                });
                return;
            }
            MessageCenterErrorFragment.this.updateStatus();
        }
    }

    public static MessageCenterErrorFragment newInstance(Bundle bundle) {
        MessageCenterErrorFragment messageCenterErrorFragment = new MessageCenterErrorFragment();
        messageCenterErrorFragment.setArguments(bundle);
        return messageCenterErrorFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateStatus() {
        if (wasLastAttemptServerError(getContext()) || Util.isNetworkConnectionPresent()) {
            this.progress.setVisibility(0);
            ((AppCompatImageView) this.root.findViewById(C0724R.C0727id.icon)).setImageResource(C0724R.C0726drawable.apptentive_ic_error);
            ((TextView) this.root.findViewById(C0724R.C0727id.message)).setText(C0724R.string.apptentive_message_center_server_error);
            return;
        }
        this.progress.setVisibility(8);
        ((AppCompatImageView) this.root.findViewById(C0724R.C0727id.icon)).setImageResource(C0724R.C0726drawable.apptentive_ic_no_connection);
        ((TextView) this.root.findViewById(C0724R.C0727id.message)).setText(C0724R.string.apptentive_message_center_no_connection);
    }

    private boolean wasLastAttemptServerError(Context context) {
        return context.getSharedPreferences(Constants.PREF_NAME, 0).getBoolean(Constants.PREF_KEY_MESSAGE_CENTER_SERVER_ERROR_LAST_ATTEMPT, false);
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.root = layoutInflater.inflate(C0724R.C0728layout.apptentive_message_center_error, viewGroup, false);
        this.progress = this.root.findViewById(C0724R.C0727id.config_loading_progress);
        return this.root;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        engage("com.apptentive", "MessageCenter", null, EVENT_NAME_NO_INTERACTION_CLOSE, exitTypeToDataJson(apptentiveViewExitType), null, null);
        return false;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, com.apptentive.android.sdk.module.engagement.interaction.InteractionManager.InteractionUpdateListener
    public void onInteractionUpdated(boolean z) {
        dispatchOnMainQueue(new C07861(z));
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment, android.support.p001v4.app.Fragment
    public void onResume() {
        super.onResume();
        try {
            updateStatus();
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onResume()", MessageCenterErrorFragment.class.getSimpleName());
        }
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    protected void sendLaunchEvent(Activity activity) {
        if (wasLastAttemptServerError(getContext()) || Util.isNetworkConnectionPresent()) {
            engage("com.apptentive", "MessageCenter", null, EVENT_NAME_NO_INTERACTION_ATTEMPTING, null, null, null);
        } else {
            engage("com.apptentive", "MessageCenter", null, EVENT_NAME_NO_INTERACTION_NO_INTERNET, null, null, null);
        }
    }
}
