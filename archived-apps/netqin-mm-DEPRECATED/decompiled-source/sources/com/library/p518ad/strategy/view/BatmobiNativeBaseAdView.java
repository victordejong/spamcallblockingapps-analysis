package com.library.p518ad.strategy.view;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.etap.Ad;
import com.etap.EtapNative;
import com.library.p518ad.core.AbstractAdView;
import java.util.List;
/* renamed from: com.library.ad.strategy.view.BatmobiNativeBaseAdView */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/view/BatmobiNativeBaseAdView.class */
public abstract class BatmobiNativeBaseAdView extends AbstractAdView<EtapNative> {
    public BatmobiNativeBaseAdView(Context context) {
        super(context, "BM");
    }

    public abstract String buttonText();

    public void onBindData(EtapNative etapNative) {
        View.inflate(getContext(), getLayoutId(), this);
        ImageView imageView = (ImageView) getView(imageId());
        ImageView imageView2 = imageView;
        if (imageView == null) {
            ViewGroup viewGroup = (ViewGroup) getView(imageContainerId());
            imageView2 = imageView;
            if (viewGroup != null) {
                imageView2 = new ImageView(this.mContext);
                viewGroup.addView(imageView2, new FrameLayout.LayoutParams(-1, -2));
            }
        }
        if (etapNative.getAds() != null && etapNative.getAds().size() > 0) {
            Ad ad = (Ad) etapNative.getAds().get(0);
            List creatives = ad.getCreatives(Ad.AD_CREATIVE_SIZE_1200x627);
            if (creatives != null && creatives.size() > 0) {
                loadBigImage(imageView2, (String) creatives.get(0));
            }
            loadIconImage((ImageView) getView(iconId()), ad.getIcon());
            TextView textView = (TextView) getView(titleId());
            TextView textView2 = (TextView) getView(bodyId());
            TextView textView3 = (TextView) getView(buttonId());
            if (textView != null) {
                textView.setText(ad.getName());
            }
            if (textView2 != null) {
                textView2.setText(ad.getDescription());
            }
            if (textView3 != null) {
                String adCallToAction = ad.getAdCallToAction();
                textView3.setClickable(false);
                if (!TextUtils.isEmpty(adCallToAction)) {
                    textView3.setText(adCallToAction);
                } else {
                    textView3.setText(buttonText());
                }
            }
            etapNative.registerView(this, ad);
        }
    }

    @Override // android.view.View
    public boolean performClick() {
        onAdClick();
        return super.performClick();
    }
}
