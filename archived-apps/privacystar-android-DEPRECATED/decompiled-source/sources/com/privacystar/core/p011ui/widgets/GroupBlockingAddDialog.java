package com.privacystar.core.p011ui.widgets;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract;
import com.privacystar.core.p011ui.widgets.dialog.DialogButton;
import com.privacystar.core.p011ui.widgets.dialog.DialogType;
import com.privacystar.core.p011ui.widgets.dialog.InformationDialog;
/* renamed from: com.privacystar.core.ui.widgets.GroupBlockingAddDialog */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/GroupBlockingAddDialog.class */
public class GroupBlockingAddDialog extends PSDialogFragment {
    private BasicSettingsContract.OnAddBlockGroupListener listener;
    @BindView(C1566R.C1569id.string_input_edit_text)
    EditText numberTextView;
    private Unbinder unbinder;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.privacystar.core.ui.widgets.GroupBlockingAddDialog$1 */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/GroupBlockingAddDialog$1.class */
    public static /* synthetic */ class C16601 {

        /* renamed from: $SwitchMap$com$privacystar$core$ui$widgets$GroupBlockingAddDialog$ErrorTypes */
        static final /* synthetic */ int[] f294x615a9293 = new int[ErrorTypes.values().length];

        static {
            try {
                f294x615a9293[ErrorTypes.TOO_LONG.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.privacystar.core.ui.widgets.GroupBlockingAddDialog$ErrorTypes */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/GroupBlockingAddDialog$ErrorTypes.class */
    public enum ErrorTypes {
        TOO_SHORT,
        TOO_LONG
    }

    public static GroupBlockingAddDialog newInstance() {
        return new GroupBlockingAddDialog();
    }

    private void showError(ErrorTypes errorTypes) {
        new InformationDialog.Builder(DialogType.ERROR).withTitle(getString(C1566R.string.group_blocking_dialog_error_title)).withBody(getString(C16601.f294x615a9293[errorTypes.ordinal()] != 1 ? C1566R.string.group_blocking_dialog_error_too_short : C1566R.string.group_blocking_dialog_error_too_long)).withButtons(new DialogButton(getString(C1566R.string.info_dialog_okay))).build().show(getActivity().getSupportFragmentManager(), "group_add_too_short_dialog");
    }

    private boolean verifyGroupNumber(String str) {
        if (str.length() == 0) {
            showError(ErrorTypes.TOO_SHORT);
            return false;
        } else if (str.length() <= 3) {
            return true;
        } else {
            showError(ErrorTypes.TOO_LONG);
            return false;
        }
    }

    @OnClick({C1566R.C1569id.string_input_no})
    public void cancelClicked() {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$onCreateView$0$GroupBlockingAddDialog(View view, boolean z) {
        if (z && getDialog().getWindow() != null) {
            getDialog().getWindow().setSoftInputMode(5);
        }
    }

    @OnClick({C1566R.C1569id.string_input_yes})
    public void okayClicked() {
        String obj = this.numberTextView.getText().toString();
        if (verifyGroupNumber(obj)) {
            if (this.listener != null) {
                this.listener.onAddBlockGroup(obj);
            }
            dismiss();
        }
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(1, 0);
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.string_input_dialog, viewGroup);
        this.unbinder = ButterKnife.bind(this, inflate);
        this.numberTextView.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: com.privacystar.core.ui.widgets.GroupBlockingAddDialog$$Lambda$0
            private final GroupBlockingAddDialog arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                this.arg$1.lambda$onCreateView$0$GroupBlockingAddDialog(view, z);
            }
        });
        return inflate;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onDestroyView() {
        if (this.unbinder != null) {
            this.unbinder.unbind();
        }
        super.onDestroyView();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
    }

    public void setOnAddGroupBlockListener(BasicSettingsContract.OnAddBlockGroupListener onAddBlockGroupListener) {
        this.listener = onAddBlockGroupListener;
    }
}
