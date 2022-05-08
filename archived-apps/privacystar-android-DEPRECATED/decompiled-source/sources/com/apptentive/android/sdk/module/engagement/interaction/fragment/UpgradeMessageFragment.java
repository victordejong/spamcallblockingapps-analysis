package com.apptentive.android.sdk.module.engagement.interaction.fragment;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.p001v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveViewExitType;
import com.apptentive.android.sdk.C0724R;
import com.apptentive.android.sdk.model.Configuration;
import com.apptentive.android.sdk.module.engagement.interaction.model.UpgradeMessageInteraction;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/module/engagement/interaction/fragment/UpgradeMessageFragment.class */
public class UpgradeMessageFragment extends ApptentiveBaseFragment<UpgradeMessageInteraction> {
    private static final String CODE_POINT_DISMISS = "dismiss";

    private Drawable getIconDrawableResourceId() {
        try {
            Context context = getContext();
            return ContextCompat.getDrawable(getContext(), context.getPackageManager().getPackageInfo(context.getPackageName(), 0).applicationInfo.icon);
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Error loading app icon.", new Object[0]);
            return null;
        }
    }

    public static UpgradeMessageFragment newInstance(Bundle bundle) {
        UpgradeMessageFragment upgradeMessageFragment = new UpgradeMessageFragment();
        upgradeMessageFragment.setArguments(bundle);
        return upgradeMessageFragment;
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C0724R.C0728layout.apptentive_upgrade_message_interaction, viewGroup, false);
        try {
            ImageView imageView = (ImageView) inflate.findViewById(C0724R.C0727id.icon);
            Drawable iconDrawableResourceId = getIconDrawableResourceId();
            if (iconDrawableResourceId != null) {
                imageView.setImageDrawable(iconDrawableResourceId);
            } else {
                imageView.setVisibility(8);
            }
            WebView webView = (WebView) inflate.findViewById(C0724R.C0727id.webview);
            webView.loadData(((UpgradeMessageInteraction) this.interaction).getBody(), "text/html", "UTF-8");
            webView.setBackgroundColor(0);
            View findViewById = inflate.findViewById(C0724R.C0727id.apptentive_branding_view);
            if (findViewById != null && (!((UpgradeMessageInteraction) this.interaction).isShowPoweredBy() || Configuration.load().isHideBranding(getContext()))) {
                findViewById.setVisibility(8);
            }
        } catch (Exception e) {
            ApptentiveLog.m408e(e, "Exception in %s.onCreateView()", UpgradeMessageFragment.class.getSimpleName());
        }
        return inflate;
    }

    @Override // com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment
    public boolean onFragmentExit(ApptentiveViewExitType apptentiveViewExitType) {
        engageInternal("dismiss", exitTypeToDataJson(apptentiveViewExitType));
        return false;
    }
}
