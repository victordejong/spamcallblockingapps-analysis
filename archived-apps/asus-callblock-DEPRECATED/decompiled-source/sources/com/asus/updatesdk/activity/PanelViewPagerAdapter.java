package com.asus.updatesdk.activity;

import android.content.Context;
import android.support.v4.view.p;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.asus.updatesdk.AppInfo;
import com.asus.updatesdk.ZenUiFamily;
import com.asus.updatesdk.analytic.AnalyticUtils;
import com.asus.updatesdk.analytic.TrackerManager;
import com.asus.updatesdk.cache.ImageFetcher;
import com.asus.updatesdk.utility.GeneralUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/asus/updatesdk/activity/PanelViewPagerAdapter.class */
public class PanelViewPagerAdapter extends p {

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<AppInfo> f3130a;

    /* renamed from: b  reason: collision with root package name */
    private int f3131b;
    private List<ImageView> c = new ArrayList();
    private Context d;
    private ImageFetcher e;
    private String f;

    public PanelViewPagerAdapter(Context context, ArrayList<AppInfo> arrayList, ImageFetcher imageFetcher, String str) {
        this.f3130a = arrayList;
        this.f3131b = this.f3130a.size();
        this.d = context;
        this.e = imageFetcher;
        this.f = str;
    }

    @Override // android.support.v4.view.p
    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView(this.c.get(i));
    }

    @Override // android.support.v4.view.p
    public int getCount() {
        return this.f3131b;
    }

    public void initImage() {
        Iterator<AppInfo> it = this.f3130a.iterator();
        while (it.hasNext()) {
            final AppInfo next = it.next();
            ImageView imageView = new ImageView(this.d);
            imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.e.loadImage(next.getPlayImageUrl(), next.getCDNImageUrl(), imageView);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.asus.updatesdk.activity.PanelViewPagerAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    String packageName = next.getPackageName();
                    ZenUiFamily.AppStatus status = next.getStatus();
                    String goToGooglePlayUrl = next.getGoToGooglePlayUrl();
                    if (ZenUiFamily.AppStatus.UP_TO_DATE != status) {
                        GeneralUtils.startCheckAppUpdateAlarm(PanelViewPagerAdapter.this.d, packageName);
                        GeneralUtils.openGooglePlayPage(PanelViewPagerAdapter.this.d, packageName, goToGooglePlayUrl, PanelViewPagerAdapter.this.f);
                    } else if (!GeneralUtils.openAsusApp(PanelViewPagerAdapter.this.d, packageName)) {
                        GeneralUtils.openGooglePlayPage(PanelViewPagerAdapter.this.d, packageName, goToGooglePlayUrl, PanelViewPagerAdapter.this.f);
                    }
                    TrackerManager.sendEvents(PanelViewPagerAdapter.this.d, TrackerManager.GA_TRACKER, AnalyticUtils.Category.CLICK_PANEL_APPS, packageName, status.getName(), 0L);
                }
            });
            this.c.add(imageView);
        }
    }

    @Override // android.support.v4.view.p
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        viewGroup.addView(this.c.get(i));
        return this.c.get(i);
    }

    @Override // android.support.v4.view.p
    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    @Override // android.support.v4.view.p
    public void notifyDataSetChanged() {
        this.f3131b = this.f3130a.size();
        initImage();
        super.notifyDataSetChanged();
    }

    public void refreshImagePanel() {
        this.c.clear();
        initImage();
    }
}
