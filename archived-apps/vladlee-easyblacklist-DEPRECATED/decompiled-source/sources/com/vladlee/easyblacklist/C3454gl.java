package com.vladlee.easyblacklist;

import android.os.Build;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ViewGroup;
import androidx.fragment.app.AbstractC0867ab;
import androidx.fragment.app.AbstractC0897m;
import androidx.fragment.app.AbstractC0916z;
import androidx.fragment.app.Fragment;
/* renamed from: com.vladlee.easyblacklist.gl */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/gl.class */
public final class C3454gl extends AbstractC0916z {

    /* renamed from: b */
    AbstractC0897m f19635b;

    /* renamed from: d */
    private int f19637d;

    /* renamed from: a */
    SparseArray<Fragment> f19634a = new SparseArray<>();

    /* renamed from: c */
    boolean f19636c = false;

    public C3454gl(AbstractC0897m mVar, int i) {
        super(mVar);
        this.f19637d = 3;
        this.f19635b = null;
        this.f19635b = mVar;
        if (Build.VERSION.SDK_INT >= 19) {
            this.f19637d = i;
        }
    }

    @Override // androidx.fragment.app.AbstractC0916z
    /* renamed from: a */
    public final Fragment mo43a(int i) {
        Fragment fragment = this.f19634a.get(i);
        Fragment fragment2 = fragment;
        if (fragment == null) {
            if (mo39c() == 3) {
                if (i == 0) {
                    fragment = new SharedPreferences$OnSharedPreferenceChangeListenerC3472l();
                } else if (i == 1) {
                    fragment = new C3284aw();
                } else if (i == 2) {
                    fragment = new C3396eh();
                }
            } else if (i == 0) {
                fragment = new C3439fx();
            } else if (i == 1) {
                fragment = new SharedPreferences$OnSharedPreferenceChangeListenerC3472l();
            } else if (i == 2) {
                fragment = new C3284aw();
            } else if (i == 3) {
                fragment = new C3396eh();
            }
            this.f19634a.put(i, fragment);
            fragment2 = fragment;
        }
        return fragment2;
    }

    @Override // androidx.fragment.app.AbstractC0916z, androidx.viewpager.widget.AbstractC1289a
    /* renamed from: a */
    public final /* synthetic */ Object mo41a(ViewGroup viewGroup, int i) {
        Fragment fragment;
        Fragment a = this.f19635b.mo7699a(String.valueOf(i));
        if (a == null) {
            Fragment a2 = mo43a(i);
            AbstractC0867ab a3 = this.f19635b.mo7727a();
            a3.m7832a(viewGroup.getId(), a2, String.valueOf(i));
            if (!this.f19636c) {
                a3.mo7822c();
                fragment = a2;
            } else {
                a3.mo7819e();
                fragment = a2;
            }
        } else {
            this.f19634a.put(i, a);
            fragment = a;
        }
        return fragment;
    }

    @Override // androidx.fragment.app.AbstractC0916z, androidx.viewpager.widget.AbstractC1289a
    /* renamed from: a */
    public final void mo42a(int i, Object obj) {
        if (obj != null) {
            AbstractC0867ab a = this.f19635b.mo7727a();
            a.mo7830a((Fragment) obj);
            if (!this.f19636c) {
                a.mo7822c();
            } else {
                a.mo7819e();
            }
            this.f19634a.put(i, null);
        }
    }

    @Override // androidx.fragment.app.AbstractC0916z, androidx.viewpager.widget.AbstractC1289a
    /* renamed from: b */
    public final Parcelable mo40b() {
        return null;
    }

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: c */
    public final int mo39c() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.f19637d;
        }
        return 3;
    }

    @Override // androidx.viewpager.widget.AbstractC1289a
    /* renamed from: d */
    public final int mo38d() {
        return -2;
    }

    /* renamed from: f */
    public final void m37f() {
        this.f19637d = 4;
        this.f19634a.clear();
        this.f19636c = true;
        m6375e();
        this.f19636c = false;
    }
}
