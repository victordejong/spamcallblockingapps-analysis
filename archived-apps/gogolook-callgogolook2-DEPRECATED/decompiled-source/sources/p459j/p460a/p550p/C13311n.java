package p459j.p460a.p550p;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p570v.p571a.View$OnClickListenerC13685a;
import p459j.p460a.p604y0.p608d.p609h.AbstractC14538b;
import p459j.p460a.p604y0.p608d.p609h.C14547f;
/* renamed from: j.a.p.n */
/* loaded from: classes2-dex2jar.jar:j/a/p/n.class */
public class C13311n extends AbstractC13310m implements View$OnClickListenerC13685a.AbstractC13686a {
    @Nullable

    /* renamed from: i */
    public static final ViewDataBinding.IncludedLayouts f29946i = null;
    @Nullable

    /* renamed from: j */
    public static final SparseIntArray f29947j = new SparseIntArray();
    @Nullable

    /* renamed from: g */
    public final View.OnClickListener f29948g;

    /* renamed from: h */
    public long f29949h;

    static {
        f29947j.put(R$id.tv_header_dollar_sign, 4);
        f29947j.put(R$id.tv_header_description, 5);
    }

    public C13311n(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 6, f29946i, f29947j));
    }

    public C13311n(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ConstraintLayout) objArr[0], (TextView) objArr[5], (TextView) objArr[4], (TextView) objArr[1], (TextView) objArr[2], (TextView) objArr[3]);
        this.f29949h = -1L;
        this.f29940a.setTag(null);
        this.f29941b.setTag(null);
        this.f29942c.setTag(null);
        this.f29943d.setTag(null);
        setRootTag(view);
        this.f29948g = new View$OnClickListenerC13685a(this, 1);
        invalidateAll();
    }

    @Override // p459j.p460a.p570v.p571a.View$OnClickListenerC13685a.AbstractC13686a
    /* renamed from: a */
    public final void mo3637a(int i, View view) {
        AbstractC14538b bVar = this.f29945f;
        if (bVar != null) {
            bVar.mo1125a();
        }
    }

    @Override // p459j.p460a.p550p.AbstractC13310m
    /* renamed from: a */
    public void mo4281a(@Nullable AbstractC14538b bVar) {
        this.f29945f = bVar;
        synchronized (this) {
            this.f29949h |= 2;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // p459j.p460a.p550p.AbstractC13310m
    /* renamed from: a */
    public void mo4280a(@Nullable C14547f fVar) {
        this.f29944e = fVar;
        synchronized (this) {
            this.f29949h |= 1;
        }
        notifyPropertyChanged(3);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        long j;
        String str;
        synchronized (this) {
            j = this.f29949h;
            this.f29949h = 0L;
        }
        C14547f fVar = this.f29944e;
        String str2 = null;
        int i = ((5 & j) > 0L ? 1 : ((5 & j) == 0L ? 0 : -1));
        if (i == 0 || fVar == null) {
            str = null;
        } else {
            str2 = fVar.m1137a();
            str = fVar.m1136b();
        }
        if (i != 0) {
            TextViewBindingAdapter.setText(this.f29941b, str);
            TextViewBindingAdapter.setText(this.f29943d, str2);
        }
        if ((j & 4) != 0) {
            this.f29942c.setOnClickListener(this.f29948g);
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f29949h != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f29949h = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        boolean z = true;
        if (3 == i) {
            mo4280a((C14547f) obj);
        } else if (1 == i) {
            mo4281a((AbstractC14538b) obj);
        } else {
            z = false;
        }
        return z;
    }
}
