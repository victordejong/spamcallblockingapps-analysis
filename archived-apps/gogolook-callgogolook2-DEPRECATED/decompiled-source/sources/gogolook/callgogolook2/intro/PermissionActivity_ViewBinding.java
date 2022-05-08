package gogolook.callgogolook2.intro;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/PermissionActivity_ViewBinding.class */
public class PermissionActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public PermissionActivity f10871a;

    @UiThread
    public PermissionActivity_ViewBinding(PermissionActivity permissionActivity, View view) {
        this.f10871a = permissionActivity;
        permissionActivity.mLlConfirm = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_confirm, "field 'mLlConfirm'", LinearLayout.class);
        permissionActivity.mTvConfirmDesc = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_confirm_desc, "field 'mTvConfirmDesc'", TextView.class);
        permissionActivity.mTvConfirmBtn = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_confirm_btn, "field 'mTvConfirmBtn'", TextView.class);
        permissionActivity.mTvOtherEntrance = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_other_entrance, "field 'mTvOtherEntrance'", TextView.class);
        permissionActivity.mLlOtherEntrance = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_other_entrance, "field 'mLlOtherEntrance'", LinearLayout.class);
        permissionActivity.mLlHint = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_permission_hint, "field 'mLlHint'", LinearLayout.class);
        permissionActivity.mIvSms = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_sms, "field 'mIvSms'", ImageView.class);
        permissionActivity.mTvSms = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_sms, "field 'mTvSms'", TextView.class);
        permissionActivity.mIvPhone = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_phone, "field 'mIvPhone'", ImageView.class);
        permissionActivity.mTvPhone = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_phone, "field 'mTvPhone'", TextView.class);
        permissionActivity.mIvContact = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_contact, "field 'mIvContact'", ImageView.class);
        permissionActivity.mTvContact = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_contact, "field 'mTvContact'", TextView.class);
        permissionActivity.mIvLocation = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_location, "field 'mIvLocation'", ImageView.class);
        permissionActivity.mTvLocation = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_location, "field 'mTvLocation'", TextView.class);
        permissionActivity.mLlCallLog = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_call_log, "field 'mLlCallLog'", LinearLayout.class);
        permissionActivity.mIvCallLog = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_call_log, "field 'mIvCallLog'", ImageView.class);
        permissionActivity.mTvCallLog = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_call_log, "field 'mTvCallLog'", TextView.class);
        permissionActivity.mLlMore = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_more, "field 'mLlMore'", LinearLayout.class);
        permissionActivity.mTvTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_title, "field 'mTvTitle'", TextView.class);
        permissionActivity.mLlPermission = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_permission, "field 'mLlPermission'", LinearLayout.class);
        permissionActivity.mTvDesc = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_permission_desc, "field 'mTvDesc'", TextView.class);
        permissionActivity.mIvClickIcon = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_click_icon, "field 'mIvClickIcon'", ImageView.class);
        permissionActivity.mClGpPolicy = (ConstraintLayout) Utils.findRequiredViewAsType(view, R$id.cl_gp_policy, "field 'mClGpPolicy'", ConstraintLayout.class);
        permissionActivity.mSvGpContent = (ScrollView) Utils.findRequiredViewAsType(view, R$id.sv_gp_policy_content, "field 'mSvGpContent'", ScrollView.class);
        permissionActivity.mTvGpTitle1 = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_gp_title_1, "field 'mTvGpTitle1'", TextView.class);
        permissionActivity.mTvGpContent1 = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_gp_content_1, "field 'mTvGpContent1'", TextView.class);
        permissionActivity.mTvGpTitle2 = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_gp_title_2, "field 'mTvGpTitle2'", TextView.class);
        permissionActivity.mTvGpContent2 = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_gp_content_2, "field 'mTvGpContent2'", TextView.class);
        permissionActivity.mTvGpTitle3 = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_gp_title_3, "field 'mTvGpTitle3'", TextView.class);
        permissionActivity.mTvGpContent3 = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_gp_content_3, "field 'mTvGpContent3'", TextView.class);
        permissionActivity.mCvButtonAndDescription = (CardView) Utils.findRequiredViewAsType(view, R$id.cv_button_and_description, "field 'mCvButtonAndDescription'", CardView.class);
        permissionActivity.mBAgreePolicy = (TextView) Utils.findRequiredViewAsType(view, R$id.b_agree_policy, "field 'mBAgreePolicy'", TextView.class);
        permissionActivity.mTvPolicyDescription = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_description, "field 'mTvPolicyDescription'", TextView.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        PermissionActivity permissionActivity = this.f10871a;
        if (permissionActivity != null) {
            this.f10871a = null;
            permissionActivity.mLlConfirm = null;
            permissionActivity.mTvConfirmDesc = null;
            permissionActivity.mTvConfirmBtn = null;
            permissionActivity.mTvOtherEntrance = null;
            permissionActivity.mLlOtherEntrance = null;
            permissionActivity.mLlHint = null;
            permissionActivity.mIvSms = null;
            permissionActivity.mTvSms = null;
            permissionActivity.mIvPhone = null;
            permissionActivity.mTvPhone = null;
            permissionActivity.mIvContact = null;
            permissionActivity.mTvContact = null;
            permissionActivity.mIvLocation = null;
            permissionActivity.mTvLocation = null;
            permissionActivity.mLlCallLog = null;
            permissionActivity.mIvCallLog = null;
            permissionActivity.mTvCallLog = null;
            permissionActivity.mLlMore = null;
            permissionActivity.mTvTitle = null;
            permissionActivity.mLlPermission = null;
            permissionActivity.mTvDesc = null;
            permissionActivity.mIvClickIcon = null;
            permissionActivity.mClGpPolicy = null;
            permissionActivity.mSvGpContent = null;
            permissionActivity.mTvGpTitle1 = null;
            permissionActivity.mTvGpContent1 = null;
            permissionActivity.mTvGpTitle2 = null;
            permissionActivity.mTvGpContent2 = null;
            permissionActivity.mTvGpTitle3 = null;
            permissionActivity.mTvGpContent3 = null;
            permissionActivity.mCvButtonAndDescription = null;
            permissionActivity.mBAgreePolicy = null;
            permissionActivity.mTvPolicyDescription = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
