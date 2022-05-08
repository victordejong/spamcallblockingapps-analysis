package com.privacystar.core.p011ui.widgets;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.StringInputDialog */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/StringInputDialog.class */
public class StringInputDialog extends PSDialogFragment {
    private static final String HINT_KEY = "hint_button";
    private static final String NO_BUTTON_KEY = "no_button";
    private static final String TITLE_KEY = "title";
    private static final String YES_BUTTON_KEY = "yes_button";
    private String hintText;
    @BindView(C1566R.C1569id.string_input_edit_text)
    EditText inputEditText;
    private OnInputFinishedListener listener;
    @BindView(C1566R.C1569id.string_input_no)
    Button noButton;
    private String noButtonText;
    private String titleText;
    @BindView(C1566R.C1569id.string_input_dialog_title)
    TextView titleTextView;
    private Unbinder unbinder;
    @BindView(C1566R.C1569id.string_input_yes)
    Button yesButton;
    private String yesButtonText;

    /* renamed from: com.privacystar.core.ui.widgets.StringInputDialog$OnInputFinishedListener */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/StringInputDialog$OnInputFinishedListener.class */
    public interface OnInputFinishedListener {
        void onCanceled();

        void onSet(String str);
    }

    public static StringInputDialog newInstance(String str, String str2, String str3, String str4) {
        StringInputDialog stringInputDialog = new StringInputDialog();
        Bundle bundle = new Bundle();
        bundle.putString("title", str);
        bundle.putString(YES_BUTTON_KEY, str2);
        bundle.putString(NO_BUTTON_KEY, str3);
        bundle.putString(HINT_KEY, str4);
        stringInputDialog.setArguments(bundle);
        return stringInputDialog;
    }

    @OnClick({C1566R.C1569id.string_input_no})
    public void cancelClicked() {
        if (this.listener != null) {
            this.listener.onCanceled();
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onCreateView$0$StringInputDialog(View view, boolean z) {
        Window window;
        if (z && (window = getDialog().getWindow()) != null) {
            window.setSoftInputMode(5);
        }
    }

    @OnClick({C1566R.C1569id.string_input_yes})
    public void okayClicked() {
        String obj = this.inputEditText.getText().toString();
        if (this.listener != null) {
            this.listener.onSet(obj);
        }
        dismiss();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.titleText = getArguments().getString("title");
        this.yesButtonText = getArguments().getString(YES_BUTTON_KEY);
        this.noButtonText = getArguments().getString(NO_BUTTON_KEY);
        this.hintText = getArguments().getString(HINT_KEY);
        setStyle(1, 0);
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.string_input_dialog, viewGroup);
        this.unbinder = ButterKnife.bind(this, inflate);
        this.yesButton.setText(this.yesButtonText);
        this.noButton.setText(this.noButtonText);
        this.titleTextView.setText(this.titleText);
        this.inputEditText.setHint(this.hintText);
        this.inputEditText.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: com.privacystar.core.ui.widgets.StringInputDialog$$Lambda$0
            private final StringInputDialog arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                this.arg$1.lambda$onCreateView$0$StringInputDialog(view, z);
            }
        });
        return inflate;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.unbinder.unbind();
    }

    public void setInputListener(OnInputFinishedListener onInputFinishedListener) {
        this.listener = onInputFinishedListener;
    }
}
