package com.privacystar.core.p011ui.widgets;

import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.ConfirmDialog */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ConfirmDialog.class */
public class ConfirmDialog extends PSDialogFragment {
    private static final String BODY_KEY = "body_key";
    private static final String BOLD_KEY = "bold_key";
    private static final String NO_BUTTON_KEY = "no_key";
    private static final String TITLE_KEY = "title_key";
    private static final String YES_BUTTON_KEY = "yes_key";
    private String bodyText;
    @BindView(C1566R.C1569id.confirm_dialog_body)
    TextView bodyTextView;
    private String boldText;
    private OnConfirmListener listener;
    @BindView(C1566R.C1569id.confirm_dialog_no)
    Button noButton;
    private String noButtonText;
    private String titleText;
    @BindView(C1566R.C1569id.confirm_dialog_title)
    TextView titleTextView;
    private Unbinder unbinder;
    @BindView(C1566R.C1569id.confirm_dialog_yes)
    Button yesButton;
    private String yesButtonText;

    /* renamed from: com.privacystar.core.ui.widgets.ConfirmDialog$OnConfirmListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ConfirmDialog$OnConfirmListener.class */
    public interface OnConfirmListener {
        void onCancel();

        void onConfirm();
    }

    public static ConfirmDialog newInstance(String str, String str2, String str3, String str4, String str5) {
        ConfirmDialog confirmDialog = new ConfirmDialog();
        Bundle bundle = new Bundle();
        bundle.putString(TITLE_KEY, str);
        bundle.putString(YES_BUTTON_KEY, str2);
        bundle.putString(NO_BUTTON_KEY, str3);
        bundle.putString(BODY_KEY, str4);
        bundle.putString(BOLD_KEY, str5);
        confirmDialog.setArguments(bundle);
        return confirmDialog;
    }

    @OnClick({C1566R.C1569id.confirm_dialog_no})
    public void cancelClicked() {
        if (this.listener != null) {
            this.listener.onCancel();
        }
        dismiss();
    }

    @OnClick({C1566R.C1569id.confirm_dialog_yes})
    public void okayClicked() {
        if (this.listener != null) {
            this.listener.onConfirm();
        }
        dismiss();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.titleText = getArguments().getString(TITLE_KEY);
        this.yesButtonText = getArguments().getString(YES_BUTTON_KEY);
        this.noButtonText = getArguments().getString(NO_BUTTON_KEY);
        this.bodyText = getArguments().getString(BODY_KEY);
        this.boldText = getArguments().getString(BOLD_KEY);
        setStyle(1, 0);
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.confirm_dialog, viewGroup);
        this.unbinder = ButterKnife.bind(this, inflate);
        this.yesButton.setText(this.yesButtonText);
        this.noButton.setText(this.noButtonText);
        this.titleTextView.setText(this.titleText);
        int indexOf = this.bodyText.indexOf(this.boldText);
        if (indexOf >= 0) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.bodyText);
            spannableStringBuilder.setSpan(new StyleSpan(1), indexOf, this.boldText.length() + indexOf, 33);
            this.bodyTextView.setText(spannableStringBuilder);
        } else {
            this.bodyTextView.setText(this.bodyText);
        }
        return inflate;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.unbinder.unbind();
    }

    public void setInputListener(OnConfirmListener onConfirmListener) {
        this.listener = onConfirmListener;
    }
}
