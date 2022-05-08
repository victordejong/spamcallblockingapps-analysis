package com.privacystar.core.p011ui.walkthrough;

import android.content.Context;
import android.support.p001v4.content.res.ResourcesCompat;
import android.support.p001v4.view.PagerAdapter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.walkthrough.WalkthroughImageAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/walkthrough/WalkthroughImageAdapter.class */
public class WalkthroughImageAdapter extends PagerAdapter {
    private Context context;
    private final int[] images;

    public WalkthroughImageAdapter(Context context, int[] iArr) {
        this.context = context;
        this.images = iArr;
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public int getCount() {
        return this.images.length;
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return "";
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(this.context).inflate(C1566R.C1571layout.walkthrough_viewpager_container, viewGroup, false);
        ImageView imageView = (ImageView) viewGroup2.findViewById(C1566R.C1569id.imageView);
        imageView.setImageDrawable(ResourcesCompat.getDrawable(this.context.getResources(), this.images[i], null));
        imageView.setScaleType(ImageView.ScaleType.FIT_END);
        imageView.setAdjustViewBounds(true);
        viewGroup.addView(viewGroup2);
        return viewGroup2;
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }
}
