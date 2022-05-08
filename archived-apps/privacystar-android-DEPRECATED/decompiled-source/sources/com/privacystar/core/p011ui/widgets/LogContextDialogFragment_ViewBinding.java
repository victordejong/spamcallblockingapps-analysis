package com.privacystar.core.p011ui.widgets;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.LogContextDialogFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/LogContextDialogFragment_ViewBinding.class */
public class LogContextDialogFragment_ViewBinding implements Unbinder {
    private LogContextDialogFragment target;
    private View view2131296884;

    @UiThread
    public LogContextDialogFragment_ViewBinding(final LogContextDialogFragment logContextDialogFragment, View view) {
        this.target = logContextDialogFragment;
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.log_context_dialog_cancel, "field 'itemCancel' and method 'onCancelClick'");
        logContextDialogFragment.itemCancel = (TextView) Utils.castView(findRequiredView, C1566R.C1569id.log_context_dialog_cancel, "field 'itemCancel'", TextView.class);
        this.view2131296884 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.LogContextDialogFragment_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                logContextDialogFragment.onCancelClick();
            }
        });
        logContextDialogFragment.callButton = (LinearLayout) Utils.findRequiredViewAsType(view, C1566R.C1569id.log_item_expanded_call_ll, "field 'callButton'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LogContextDialogFragment logContextDialogFragment = this.target;
        if (logContextDialogFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        logContextDialogFragment.itemCancel = null;
        logContextDialogFragment.callButton = null;
        this.view2131296884.setOnClickListener(null);
        this.view2131296884 = null;
    }
}
