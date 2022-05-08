package com.privacystar.core.p011ui.widgets.dialog;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.StringRes;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.p011ui.widgets.PSDialogFragment;
import com.privacystar.core.util.OffenderUtil;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.widgets.dialog.InformationDialog */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/InformationDialog.class */
public class InformationDialog extends PSDialogFragment {
    public static final String BODY_KEY = "body";
    public static final String BUTTONS_KEY = "buttons";
    public static final String DIALOG_TYPE_KEY = "dtype";
    public static final String TITLE_KEY = "title";
    @BindView(C1566R.C1569id.information_dialog_explanation)
    TextView bodyTextView;
    private DialogButton[] buttons;
    @BindView(C1566R.C1569id.information_dialog_buttons_ll)
    LinearLayout dialogButtons;
    private DialogType dialogType;
    @BindView(C1566R.C1569id.information_dialog_icon)
    ImageView iconImageView;
    @BindView(C1566R.C1569id.information_dialog_title)
    TextView titleTextView;
    private int type;
    private Unbinder unbinder;
    private String title = "";
    private String body = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.ui.widgets.dialog.InformationDialog$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/InformationDialog$1.class */
    public static /* synthetic */ class C16721 {
        static final /* synthetic */ int[] $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi = new int[OffenderUtil.OffenderTypeUi.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0065 -> B:33:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:29:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x006d -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0071 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0075 -> B:31:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0079 -> B:27:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007d -> B:39:0x0058). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.NUISANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.TELEMARKETING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.ACCOUNT_SERVICES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.POLITICAL.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.CHARITY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.SURVEY.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.PRISON.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.OffenderTypeUi.SCAM.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    /* renamed from: com.privacystar.core.ui.widgets.dialog.InformationDialog$Builder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/InformationDialog$Builder.class */
    public static class Builder {
        private Builder builder;
        private DialogType dialogType;
        private InformationDialog dialog = new InformationDialog();
        private String title = "";
        private String body = "";
        private DialogButton[] buttons = null;

        public Builder() {
            this.dialogType = DialogType.INFORMATION;
            this.dialogType = DialogType.NO_HEADER;
        }

        public Builder(DialogType dialogType) {
            this.dialogType = DialogType.INFORMATION;
            this.dialogType = dialogType;
        }

        public InformationDialog build() {
            Bundle bundle = new Bundle();
            bundle.putInt(InformationDialog.DIALOG_TYPE_KEY, this.dialogType.getId());
            bundle.putString("title", this.title);
            bundle.putString("body", this.body);
            bundle.putParcelableArray(InformationDialog.BUTTONS_KEY, this.buttons);
            this.dialog.setArguments(bundle);
            return this.dialog;
        }

        public Builder withBody(@StringRes int i) {
            this.body = PSApplication.context().getString(i);
            return this;
        }

        public Builder withBody(String str) {
            this.body = str;
            return this;
        }

        public Builder withButtons(DialogButton... dialogButtonArr) {
            this.buttons = dialogButtonArr;
            return this;
        }

        public Builder withTitle(@StringRes int i) {
            this.title = PSApplication.context().getString(i);
            return this;
        }

        public Builder withTitle(String str) {
            this.title = str;
            return this;
        }
    }

    private View createButton(final DialogButton dialogButton, ViewGroup viewGroup, Bundle bundle) {
        DialogButtonView dialogButtonView = (DialogButtonView) getLayoutInflater(bundle).inflate(C1566R.C1571layout.information_dialog_button, viewGroup, false);
        dialogButtonView.setContent(dialogButton.getButtonText());
        dialogButtonView.setOnClickListener(new View.OnClickListener(this, dialogButton) { // from class: com.privacystar.core.ui.widgets.dialog.InformationDialog$$Lambda$0
            private final InformationDialog arg$1;
            private final DialogButton arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = dialogButton;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.arg$1.lambda$createButton$0$InformationDialog(this.arg$2, view);
            }
        });
        return dialogButtonView;
    }

    public static String formatBlockedByCategoryBody(Context context, int i) {
        int i2;
        int i3;
        switch (C16721.$SwitchMap$com$privacystar$core$util$OffenderUtil$OffenderTypeUi[OffenderUtil.getOffenderTypeUiFromID(i).ordinal()]) {
            case 1:
                i2 = C1566R.string.blocked_type_nuisance;
                i3 = C1566R.string.blocked_type_nuisance_blocker;
                break;
            case 2:
                i2 = C1566R.string.blocked_type_telemarketing;
                i3 = C1566R.string.blocked_type_telemarketing_blocker;
                break;
            case 3:
                i2 = C1566R.string.blocked_type_account_services;
                i3 = C1566R.string.blocked_type_account_services_blocker;
                break;
            case 4:
                i2 = C1566R.string.blocked_type_political;
                i3 = C1566R.string.blocked_type_political_blocker;
                break;
            case 5:
                i2 = C1566R.string.blocked_type_charities;
                i3 = C1566R.string.blocked_type_charity_blocker;
                break;
            case 6:
                i2 = C1566R.string.blocked_type_surveys;
                i3 = C1566R.string.blocked_type_survey_blocker;
                break;
            case 7:
                i2 = C1566R.string.blocked_type_prisons;
                i3 = C1566R.string.blocked_type_prison_blocker;
                break;
            default:
                Timber.m37d("Generating a dialog for a category type that isn't mapped to a UI name.", new Object[0]);
            case 8:
                i2 = C1566R.string.blocked_type_scammer;
                i3 = C1566R.string.blocked_type_scammer_blocker;
                break;
        }
        return context.getString(C1566R.string.blocked_type_dialog_explanation, context.getString(i2), context.getString(i3));
    }

    private void onButtonClicked(DialogButton dialogButton) {
        if (dialogButton == null || dialogButton.getAction() == null) {
            Timber.m37d("Closing dialog.", new Object[0]);
            dismiss();
            return;
        }
        Timber.m37d("Launching onClick action: %s", dialogButton.getButtonText());
        dialogButton.getAction().performAction(getContext());
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$createButton$0$InformationDialog(DialogButton dialogButton, View view) {
        onButtonClicked(dialogButton);
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.dialogType = DialogType.getDialogType(getArguments().getInt(DIALOG_TYPE_KEY));
        this.title = getArguments().getString("title");
        this.body = getArguments().getString("body");
        Parcelable[] parcelableArray = getArguments().getParcelableArray(BUTTONS_KEY);
        if (parcelableArray != null) {
            this.buttons = new DialogButton[parcelableArray.length];
            for (int i = 0; i < this.buttons.length; i++) {
                this.buttons[i] = (DialogButton) parcelableArray[i];
            }
        }
        setStyle(1, 0);
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.information_dialog, viewGroup);
        this.unbinder = ButterKnife.bind(this, inflate);
        if (this.dialogType != null) {
            if (this.dialogType != DialogType.NO_HEADER) {
                this.iconImageView.setVisibility(0);
                this.iconImageView.setImageResource(this.dialogType.getIcon());
                this.iconImageView.setColorFilter(getResources().getColor(this.dialogType.getTint()));
            } else {
                this.iconImageView.setVisibility(8);
            }
        }
        if (this.title != null) {
            this.titleTextView.setText(this.title);
        }
        if (this.body != null) {
            this.bodyTextView.setText(this.body);
        }
        if (this.buttons != null) {
            for (DialogButton dialogButton : this.buttons) {
                this.dialogButtons.addView(createButton(dialogButton, this.dialogButtons, bundle));
            }
        }
        return inflate;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.unbinder.unbind();
    }

    public void setButtonAction(DialogButton dialogButton, ButtonAction buttonAction) {
        DialogButton[] dialogButtonArr;
        if (!(this.buttons == null || dialogButton == null)) {
            for (DialogButton dialogButton2 : this.buttons) {
                if (dialogButton.equals(dialogButton2)) {
                    dialogButton2.setAction(buttonAction);
                    return;
                }
            }
        }
    }
}
