package com.privacystar.core.p011ui.widgets;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.ConfirmDialog_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/ConfirmDialog_ViewBinding.class */
public class ConfirmDialog_ViewBinding implements Unbinder {
    private ConfirmDialog target;
    private View view2131296582;
    private View view2131296584;

    @UiThread
    public ConfirmDialog_ViewBinding(final ConfirmDialog confirmDialog, View view) {
        this.target = confirmDialog;
        confirmDialog.titleTextView = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.confirm_dialog_title, "field 'titleTextView'", TextView.class);
        confirmDialog.bodyTextView = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.confirm_dialog_body, "field 'bodyTextView'", TextView.class);
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.confirm_dialog_yes, "field 'yesButton' and method 'okayClicked'");
        confirmDialog.yesButton = (Button) Utils.castView(findRequiredView, C1566R.C1569id.confirm_dialog_yes, "field 'yesButton'", Button.class);
        this.view2131296584 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.ConfirmDialog_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                confirmDialog.okayClicked();
            }
        });
        View findRequiredView2 = Utils.findRequiredView(view, C1566R.C1569id.confirm_dialog_no, "field 'noButton' and method 'cancelClicked'");
        confirmDialog.noButton = (Button) Utils.castView(findRequiredView2, C1566R.C1569id.confirm_dialog_no, "field 'noButton'", Button.class);
        this.view2131296582 = findRequiredView2;
        findRequiredView2.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.ConfirmDialog_ViewBinding.2
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                confirmDialog.cancelClicked();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ConfirmDialog confirmDialog = this.target;
        if (confirmDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        confirmDialog.titleTextView = null;
        confirmDialog.bodyTextView = null;
        confirmDialog.yesButton = null;
        confirmDialog.noButton = null;
        this.view2131296584.setOnClickListener(null);
        this.view2131296584 = null;
        this.view2131296582.setOnClickListener(null);
        this.view2131296582 = null;
    }
}
