package gogolook.callgogolook2.offline.offlinedb;

import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import androidx.appcompat.widget.Toolbar;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.airbnb.lottie.LottieAnimationView;
import gogolook.callgogolook2.R$id;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbActivity_ViewBinding.class */
public class OfflineDbActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public OfflineDbActivity f12102a;

    @UiThread
    public OfflineDbActivity_ViewBinding(OfflineDbActivity offlineDbActivity, View view) {
        this.f12102a = offlineDbActivity;
        offlineDbActivity.mRlAdView = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.mrl_ad_view, "field 'mRlAdView'", RelativeLayout.class);
        offlineDbActivity.mRlWhole = (RelativeLayout) Utils.findRequiredViewAsType(view, R$id.rl_whole, "field 'mRlWhole'", RelativeLayout.class);
        offlineDbActivity.mIvBackground = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_background, "field 'mIvBackground'", ImageView.class);
        offlineDbActivity.toolbar = (Toolbar) Utils.findRequiredViewAsType(view, R$id.tb_offlinedb, "field 'toolbar'", Toolbar.class);
        offlineDbActivity.mTvResultContent = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_result_content, "field 'mTvResultContent'", TextView.class);
        offlineDbActivity.mTvResultTitle = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_result_title, "field 'mTvResultTitle'", TextView.class);
        offlineDbActivity.mFlUpdating = Utils.findRequiredView(view, R$id.fl_updating, "field 'mFlUpdating'");
        offlineDbActivity.mIvStart = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_bg_start, "field 'mIvStart'", ImageView.class);
        offlineDbActivity.mIvEnd = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_bg_end, "field 'mIvEnd'", ImageView.class);
        offlineDbActivity.mIvThemeBottomStart = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_theme_bottom_start, "field 'mIvThemeBottomStart'", ImageView.class);
        offlineDbActivity.mIvThemeBottomEnd = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_theme_bottom_end, "field 'mIvThemeBottomEnd'", ImageView.class);
        offlineDbActivity.mRlUpdating = Utils.findRequiredView(view, R$id.rl_updating, "field 'mRlUpdating'");
        offlineDbActivity.mLavUpdateAnim = (LottieAnimationView) Utils.findRequiredViewAsType(view, R$id.lav_update_anim, "field 'mLavUpdateAnim'", LottieAnimationView.class);
        offlineDbActivity.mIvClose = (ImageView) Utils.findRequiredViewAsType(view, R$id.iv_close, "field 'mIvClose'", ImageView.class);
        offlineDbActivity.mTvUpdateProgress = (TextView) Utils.findRequiredViewAsType(view, R$id.tv_update_progress, "field 'mTvUpdateProgress'", TextView.class);
        offlineDbActivity.mFragmentContainer = Utils.findRequiredView(view, R$id.fragment_container, "field 'mFragmentContainer'");
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        OfflineDbActivity offlineDbActivity = this.f12102a;
        if (offlineDbActivity != null) {
            this.f12102a = null;
            offlineDbActivity.mRlAdView = null;
            offlineDbActivity.mRlWhole = null;
            offlineDbActivity.mIvBackground = null;
            offlineDbActivity.toolbar = null;
            offlineDbActivity.mTvResultContent = null;
            offlineDbActivity.mTvResultTitle = null;
            offlineDbActivity.mFlUpdating = null;
            offlineDbActivity.mIvStart = null;
            offlineDbActivity.mIvEnd = null;
            offlineDbActivity.mIvThemeBottomStart = null;
            offlineDbActivity.mIvThemeBottomEnd = null;
            offlineDbActivity.mRlUpdating = null;
            offlineDbActivity.mLavUpdateAnim = null;
            offlineDbActivity.mIvClose = null;
            offlineDbActivity.mTvUpdateProgress = null;
            offlineDbActivity.mFragmentContainer = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
