package com.apptentive.android.sdk.adapter;

import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentPagerAdapter;
import android.view.ViewGroup;
import com.apptentive.android.sdk.module.engagement.interaction.fragment.ApptentiveBaseFragment;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/adapter/ApptentiveViewPagerAdapter.class */
public class ApptentiveViewPagerAdapter extends FragmentPagerAdapter {
    private List<ApptentiveBaseFragment> fragments = new ArrayList();
    private List<String> tabTitles = new ArrayList();
    private List<String> tags = new ArrayList();

    public ApptentiveViewPagerAdapter(FragmentManager fragmentManager) {
        super(fragmentManager);
    }

    public void add(ApptentiveBaseFragment apptentiveBaseFragment, String str) {
        this.fragments.add(apptentiveBaseFragment);
        this.tabTitles.add(str);
        this.tags.add("");
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public int getCount() {
        return this.fragments.size();
    }

    public String getFragmentTag(int i) {
        return this.tags.get(i);
    }

    @Override // android.support.p001v4.app.FragmentPagerAdapter
    public Fragment getItem(int i) {
        return this.fragments.get(i);
    }

    @Override // android.support.p001v4.view.PagerAdapter
    public CharSequence getPageTitle(int i) {
        return this.tabTitles.get(i);
    }

    @Override // android.support.p001v4.app.FragmentPagerAdapter, android.support.p001v4.view.PagerAdapter
    public Object instantiateItem(ViewGroup viewGroup, int i) {
        ApptentiveBaseFragment apptentiveBaseFragment = (ApptentiveBaseFragment) super.instantiateItem(viewGroup, i);
        this.fragments.set(i, apptentiveBaseFragment);
        this.tabTitles.set(i, apptentiveBaseFragment.getTitle());
        this.tags.set(i, apptentiveBaseFragment.getTag());
        return getItem(i);
    }

    public void removeItem(int i) {
        if (i <= getCount()) {
            this.fragments.remove(i);
            this.tabTitles.remove(i);
            this.tags.remove(i);
        }
    }
}
