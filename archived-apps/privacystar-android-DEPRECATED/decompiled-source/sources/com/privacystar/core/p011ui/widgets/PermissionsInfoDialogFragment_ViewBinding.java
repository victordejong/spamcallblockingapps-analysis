package com.privacystar.core.p011ui.widgets;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.PermissionsInfoDialogFragment_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/PermissionsInfoDialogFragment_ViewBinding.class */
public class PermissionsInfoDialogFragment_ViewBinding implements Unbinder {
    private PermissionsInfoDialogFragment target;
    private View view2131296673;

    @UiThread
    public PermissionsInfoDialogFragment_ViewBinding(final PermissionsInfoDialogFragment permissionsInfoDialogFragment, View view) {
        this.target = permissionsInfoDialogFragment;
        View findRequiredView = Utils.findRequiredView(view, C1566R.C1569id.dialog_close_button, "method 'onCancelClick'");
        this.view2131296673 = findRequiredView;
        findRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.privacystar.core.ui.widgets.PermissionsInfoDialogFragment_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                permissionsInfoDialogFragment.onCancelClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        if (this.target == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        this.view2131296673.setOnClickListener(null);
        this.view2131296673 = null;
    }
}
