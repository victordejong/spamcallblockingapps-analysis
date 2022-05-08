package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.module.engagement.interaction.model.RatingDialogInteraction;
import com.apptentive.android.sdk.util.Util;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/RatingDialogFragment.class */
public class RatingDialogFragment extends ApptentiveBaseFragment<RatingDialogInteraction> {
    private static final String CODE_POINT_CANCEL = "cancel";
    private static final String CODE_POINT_DECLINE = "decline";
    private static final String CODE_POINT_RATE = "rate";
    private static final String CODE_POINT_REMIND = "remind";

    public static RatingDialogFragment newInstance(Bundle bundle) {
        RatingDialogFragment ratingDialogFragment = new RatingDialogFragment();
        ratingDialogFragment.setArguments(bundle);
        return ratingDialogFragment;
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C0724R.C0728layout.apptentive_rating_dialog_interaction, viewGroup, false);
        try {
            String title = ((RatingDialogInteraction) this.interaction).getTitle();
            if (title != null) {
                ((TextView) inflate.findViewById(C0724R.C0727id.title)).setText(title);
            }
            ((TextView) inflate.findViewById(C0724R.C0727id.body)).setText(((RatingDialogInteraction) this.interaction).getBody(getContext()));
            Button button = (Button) inflate.findViewById(C0724R.C0727id.rate);
            button.setText(((RatingDialogInteraction) this.interaction).getRateText(getContext()));
            button.setActivated(true);
            button.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.RatingDialogFragment.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    RatingDialogFragment.this.engageInternal(RatingDialogFragment.CODE_POINT_RATE);
                    RatingDialogFragment.this.transit();
                }
            }));
            Button button2 = (Button) inflate.findViewById(C0724R.C0727id.remind);
            String remindText = ((RatingDialogInteraction) this.interaction).getRemindText();
            if (remindText != null) {
                button2.setText(remindText);
            }
            button2.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.RatingDialogFragment.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    RatingDialogFragment.this.engageInternal(RatingDialogFragment.CODE_POINT_REMIND);
                    RatingDialogFragment.this.transit();
                }
            }));
            Button button3 = (Button) inflate.findViewById(C0724R.C0727id.decline);
            String declineText = ((RatingDialogInteraction) this.interaction).getDeclineText();
            if (declineText != null) {
                button3.setText(declineText);
            }
            button3.setOnClickListener(Util.guarded(new View.OnClickListener() { // from class: com.apptentive.android.sdk.module.engagement.interaction.fragment.RatingDialogFragment.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    RatingDialogFragment.this.engageInternal(RatingDialogFragment.CODE_POINT_DECLINE);
                    RatingDialogFragment.this.transit();
                }
            }));
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onCreateView()", RatingDialogFragment.class.getSimpleName());
        }
        return inflate;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        engageInternal("cancel", exitTypeToDataJson(apptentiveViewExitType));
        return false;
    }
}
