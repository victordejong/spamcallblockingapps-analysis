package gogolook.callgogolook2.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/ToastDialog_ViewBinding.class */
public class ToastDialog_ViewBinding implements Unbinder {

    /* renamed from: a */
    public ToastDialog f13121a;

    @UiThread
    public ToastDialog_ViewBinding(ToastDialog toastDialog, View view) {
        this.f13121a = toastDialog;
        toastDialog.ivIcon = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_icon, "field 'ivIcon'", ImageView.class);
        toastDialog.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_title, "field 'mTvTitle'", TextView.class);
        toastDialog.mTvMessage = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_message, "field 'mTvMessage'", TextView.class);
        toastDialog.vOutside = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.v_outside, "field 'vOutside'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        ToastDialog toastDialog = this.f13121a;
        if (toastDialog != null) {
            this.f13121a = null;
            toastDialog.ivIcon = null;
            toastDialog.mTvTitle = null;
            toastDialog.mTvMessage = null;
            toastDialog.vOutside = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
