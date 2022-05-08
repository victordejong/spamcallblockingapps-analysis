package gogolook.callgogolook2.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.util.ProgressWheel;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SimpleInAppDialog_ViewBinding.class */
public class SimpleInAppDialog_ViewBinding implements Unbinder {

    /* renamed from: a */
    public SimpleInAppDialog f13108a;

    @UiThread
    public SimpleInAppDialog_ViewBinding(SimpleInAppDialog simpleInAppDialog, View view) {
        this.f13108a = simpleInAppDialog;
        simpleInAppDialog.mPbLoading = (ProgressWheel) Utils.findRequiredViewAsType(view, R$id.pb_loading, "field 'mPbLoading'", ProgressWheel.class);
        simpleInAppDialog.mImgvImage = (AdjustableImageView) Utils.findRequiredViewAsType(view, R$id.imgv_image, "field 'mImgvImage'", AdjustableImageView.class);
        simpleInAppDialog.mRlytImage = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.rlyt_image, "field 'mRlytImage'", RelativeLayout.class);
        simpleInAppDialog.mTitle = (TextView) Utils.findRequiredViewAsType(view, 2131363296, "field 'mTitle'", TextView.class);
        simpleInAppDialog.mContent = (TextView) Utils.findRequiredViewAsType(view, 2131362136, "field 'mContent'", TextView.class);
        simpleInAppDialog.mTextArea = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.text_area, "field 'mTextArea'", LinearLayout.class);
        simpleInAppDialog.mLine1 = Utils.findRequiredView(view, R$id.line_1, "field 'mLine1'");
        simpleInAppDialog.mTxvPositive = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_positive, "field 'mTxvPositive'", TextView.class);
        simpleInAppDialog.mLine2 = Utils.findRequiredView(view, R$id.line_2, "field 'mLine2'");
        simpleInAppDialog.mTxvNeutral = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_neutral, "field 'mTxvNeutral'", TextView.class);
        simpleInAppDialog.mLine3 = Utils.findRequiredView(view, R$id.line_3, "field 'mLine3'");
        simpleInAppDialog.mTxvNegative = (TextView) Utils.findRequiredViewAsType(view, R$id.txv_negative, "field 'mTxvNegative'", TextView.class);
        simpleInAppDialog.mSrlvAll = (ScrollView) Utils.findRequiredViewAsType(view, R$id.srlv_all, "field 'mSrlvAll'", ScrollView.class);
        simpleInAppDialog.mIvClose = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_close, "field 'mIvClose'", ImageView.class);
        simpleInAppDialog.mVBg = Utils.findRequiredView(view, R$id.v_bg, "field 'mVBg'");
        simpleInAppDialog.mIvCopyright = (ImageView) Utils.findRequiredViewAsType(view, R$id.copyright, "field 'mIvCopyright'", ImageView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        SimpleInAppDialog simpleInAppDialog = this.f13108a;
        if (simpleInAppDialog != null) {
            this.f13108a = null;
            simpleInAppDialog.mPbLoading = null;
            simpleInAppDialog.mImgvImage = null;
            simpleInAppDialog.mRlytImage = null;
            simpleInAppDialog.mTitle = null;
            simpleInAppDialog.mContent = null;
            simpleInAppDialog.mTextArea = null;
            simpleInAppDialog.mLine1 = null;
            simpleInAppDialog.mTxvPositive = null;
            simpleInAppDialog.mLine2 = null;
            simpleInAppDialog.mTxvNeutral = null;
            simpleInAppDialog.mLine3 = null;
            simpleInAppDialog.mTxvNegative = null;
            simpleInAppDialog.mSrlvAll = null;
            simpleInAppDialog.mIvClose = null;
            simpleInAppDialog.mVBg = null;
            simpleInAppDialog.mIvCopyright = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
