package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import f.m.c;
/* renamed from: androidx.fragment.app.l */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/l.class */
public class LayoutInflater$Factory2C0278l implements LayoutInflater.Factory2 {

    /* renamed from: f */
    private final AbstractC0281n f1520f;

    public LayoutInflater$Factory2C0278l(AbstractC0281n abstractC0281n) {
        this.f1520f = abstractC0281n;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        C0296v c0296v;
        Fragment fragment;
        if (C0274h.class.getName().equals(str)) {
            return new C0274h(context, attributeSet, this.f1520f);
        }
        boolean equals = "fragment".equals(str);
        Fragment fragment2 = null;
        if (!equals) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a);
        String str2 = attributeValue;
        if (attributeValue == null) {
            str2 = obtainStyledAttributes.getString(c.b);
        }
        int resourceId = obtainStyledAttributes.getResourceId(c.c, -1);
        String string = obtainStyledAttributes.getString(c.d);
        obtainStyledAttributes.recycle();
        if (str2 == null || !C0277j.m5752b(context.getClassLoader(), str2)) {
            return null;
        }
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + str2);
        }
        if (resourceId != -1) {
            fragment2 = this.f1520f.m5658i0(resourceId);
        }
        Fragment fragment3 = fragment2;
        if (fragment2 == null) {
            fragment3 = fragment2;
            if (string != null) {
                fragment3 = this.f1520f.m5655j0(string);
            }
        }
        Fragment fragment4 = fragment3;
        if (fragment3 == null) {
            fragment4 = fragment3;
            if (id != -1) {
                fragment4 = this.f1520f.m5658i0(id);
            }
        }
        if (fragment4 == null) {
            Fragment m5753a = this.f1520f.m5625t0().m5753a(context.getClassLoader(), str2);
            m5753a.mFromLayout = true;
            m5753a.mFragmentId = resourceId != 0 ? resourceId : id;
            m5753a.mContainerId = id;
            m5753a.mTag = string;
            m5753a.mInLayout = true;
            AbstractC0281n abstractC0281n = this.f1520f;
            m5753a.mFragmentManager = abstractC0281n;
            m5753a.mHost = abstractC0281n.m5617w0();
            m5753a.onInflate(this.f1520f.m5617w0().f(), attributeSet, m5753a.mSavedFragmentState);
            C0296v m5616x = this.f1520f.m5616x(m5753a);
            this.f1520f.m5665g(m5753a);
            fragment = m5753a;
            c0296v = m5616x;
            if (AbstractC0281n.m5720H0(2)) {
                Log.v("FragmentManager", "Fragment " + m5753a + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                fragment = m5753a;
                c0296v = m5616x;
            }
        } else if (fragment4.mInLayout) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + str2);
        } else {
            fragment4.mInLayout = true;
            AbstractC0281n abstractC0281n2 = this.f1520f;
            fragment4.mFragmentManager = abstractC0281n2;
            fragment4.mHost = abstractC0281n2.m5617w0();
            fragment4.onInflate(this.f1520f.m5617w0().f(), attributeSet, fragment4.mSavedFragmentState);
            C0296v m5616x2 = this.f1520f.m5616x(fragment4);
            fragment = fragment4;
            c0296v = m5616x2;
            if (AbstractC0281n.m5720H0(2)) {
                Log.v("FragmentManager", "Retained Fragment " + fragment4 + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                c0296v = m5616x2;
                fragment = fragment4;
            }
        }
        fragment.mContainer = (ViewGroup) view;
        c0296v.m5575m();
        c0296v.m5578j();
        View view2 = fragment.mView;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragment.mView.getTag() == null) {
                fragment.mView.setTag(string);
            }
            return fragment.mView;
        }
        throw new IllegalStateException("Fragment " + str2 + " did not create a view.");
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
