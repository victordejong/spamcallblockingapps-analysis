package gogolook.callgogolook2.share;

import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/RedeemActivity_ViewBinding.class */
public class RedeemActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public RedeemActivity f12915a;

    /* renamed from: b */
    public View f12916b;

    /* renamed from: gogolook.callgogolook2.share.RedeemActivity_ViewBinding$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/share/RedeemActivity_ViewBinding$a.class */
    public class C5236a extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ RedeemActivity f12917a;

        public C5236a(RedeemActivity_ViewBinding redeemActivity_ViewBinding, RedeemActivity redeemActivity) {
            this.f12917a = redeemActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12917a.onClick();
        }
    }

    @UiThread
    public RedeemActivity_ViewBinding(RedeemActivity redeemActivity, View view) {
        this.f12915a = redeemActivity;
        redeemActivity.mEtCode = (EditText) Utils.findRequiredViewAsType(view, R$id.et_code, "field 'mEtCode'", EditText.class);
        View findRequiredView = Utils.findRequiredView(view, R$id.tv_ok, "field 'mTvOk' and method 'onClick'");
        redeemActivity.mTvOk = (TextView) Utils.castView(findRequiredView, R$id.tv_ok, "field 'mTvOk'", TextView.class);
        this.f12916b = findRequiredView;
        findRequiredView.setOnClickListener(new C5236a(this, redeemActivity));
        redeemActivity.mSvRoot = (ScrollView) Utils.findRequiredViewAsType(view, R$id.sv_root, "field 'mSvRoot'", ScrollView.class);
        redeemActivity.mIvPremiumDbIcon = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_premium_db_icon, "field 'mIvPremiumDbIcon'", ImageView.class);
        redeemActivity.mTvPremiumDbRemainingDays = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_premium_db_remaining_days, "field 'mTvPremiumDbRemainingDays'", TextView.class);
        redeemActivity.mDivider = Utils.findRequiredView(view, R$id.v_divider, "field 'mDivider'");
        redeemActivity.mIvAdfreeIcon = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_adfree_icon, "field 'mIvAdfreeIcon'", ImageView.class);
        redeemActivity.mTvAdfreeRemainingDays = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_adfree_remaining_days, "field 'mTvAdfreeRemainingDays'", TextView.class);
        redeemActivity.mLlAdFreeStatus = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_ad_free_status, "field 'mLlAdFreeStatus'", LinearLayout.class);
        redeemActivity.mLlPremiumDb = (LinearLayout) Utils.findRequiredViewAsType(view, R$id.ll_premium_db, "field 'mLlPremiumDb'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        RedeemActivity redeemActivity = this.f12915a;
        if (redeemActivity != null) {
            this.f12915a = null;
            redeemActivity.mEtCode = null;
            redeemActivity.mTvOk = null;
            redeemActivity.mSvRoot = null;
            redeemActivity.mIvPremiumDbIcon = null;
            redeemActivity.mTvPremiumDbRemainingDays = null;
            redeemActivity.mDivider = null;
            redeemActivity.mIvAdfreeIcon = null;
            redeemActivity.mTvAdfreeRemainingDays = null;
            redeemActivity.mLlAdFreeStatus = null;
            redeemActivity.mLlPremiumDb = null;
            this.f12916b.setOnClickListener(null);
            this.f12916b = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
