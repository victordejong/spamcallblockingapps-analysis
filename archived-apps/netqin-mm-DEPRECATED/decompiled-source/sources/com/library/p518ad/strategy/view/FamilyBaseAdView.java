package com.library.p518ad.strategy.view;

import android.content.Context;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.library.p518ad.core.AbstractAdView;
import p131c.p396i.p397a.p406i.p416g.C6611a;
/* renamed from: com.library.ad.strategy.view.FamilyBaseAdView */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/view/FamilyBaseAdView.class */
public abstract class FamilyBaseAdView extends AbstractAdView<Pair<String, String>> {
    public View.OnClickListener mClickListener;

    /* renamed from: com.library.ad.strategy.view.FamilyBaseAdView$a */
    /* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/view/FamilyBaseAdView$a.class */
    public final class View$OnClickListenerC8528a implements View.OnClickListener {

        /* renamed from: a */
        public final String f33193a;

        /* renamed from: b */
        public final String f33194b;

        public View$OnClickListenerC8528a(String str, String str2) {
            this.f33194b = str;
            this.f33193a = str2;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            FamilyBaseAdView.this.onAdViewClick(this.f33194b, this.f33193a);
            FamilyBaseAdView.this.onAdClick();
        }
    }

    public FamilyBaseAdView(Context context) {
        super(context, "FM");
    }

    public abstract String buttonText();

    public abstract int getCoverImage(String str);

    public abstract int getLogo(String str);

    public abstract int getSubtitle(String str);

    public abstract int getTitle(String str);

    public void loadBigImage(ImageView imageView, int i) {
        if (imageView != null) {
            new C6611a(imageView).m20375a(i);
        }
    }

    public void loadIconImage(ImageView imageView, int i) {
        if (imageView != null) {
            imageView.setImageResource(i);
        }
    }

    public abstract void onAdViewClick(String str, String str2);

    public void onBindData(Pair<String, String> pair) {
        View.inflate(getContext(), getLayoutId(), this);
        String str = (String) pair.first;
        String str2 = (String) pair.second;
        this.mClickListener = new View$OnClickListenerC8528a(str, str2);
        setClickListener(this);
        ImageView imageView = (ImageView) getView(imageId());
        ImageView imageView2 = imageView;
        if (imageView == null) {
            ViewGroup viewGroup = (ViewGroup) getView(imageContainerId());
            imageView2 = imageView;
            if (viewGroup != null) {
                imageView2 = new ImageView(this.mContext);
                viewGroup.addView(imageView2);
            }
        }
        loadBigImage(imageView2, getCoverImage(str2));
        loadIconImage((ImageView) getView(iconId()), getLogo(str2));
        TextView textView = (TextView) getView(titleId());
        if (textView != null) {
            textView.setText(getTitle(str2));
        }
        TextView textView2 = (TextView) getView(bodyId());
        if (textView2 != null) {
            textView2.setText(getSubtitle(str2));
        }
        TextView textView3 = (TextView) getView(buttonId());
        if (textView3 != null) {
            textView3.setText(buttonText());
        }
    }

    public void setClickListener(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                setClickListener((ViewGroup) childAt);
            }
            childAt.setOnClickListener(this.mClickListener);
        }
    }
}
