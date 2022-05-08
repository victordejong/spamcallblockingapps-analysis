package p459j.p460a.p550p;

import android.util.SparseIntArray;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;
import p459j.p460a.p604y0.p608d.C14508b;
/* renamed from: j.a.p.j */
/* loaded from: classes2-dex2jar.jar:j/a/p/j.class */
public class C13307j extends AbstractC13306i {
    @Nullable

    /* renamed from: d */
    public static final ViewDataBinding.IncludedLayouts f29929d = null;
    @Nullable

    /* renamed from: e */
    public static final SparseIntArray f29930e = null;

    /* renamed from: c */
    public long f29931c;

    public C13307j(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 1, f29929d, f29930e));
    }

    public C13307j(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (RecyclerView) objArr[0]);
        this.f29931c = -1L;
        this.f29927a.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // p459j.p460a.p550p.AbstractC13306i
    /* renamed from: a */
    public void mo4291a(@Nullable C14508b bVar) {
        this.f29928b = bVar;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f29931c = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f29931c != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f29931c = 2L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        boolean z;
        if (2 == i) {
            mo4291a((C14508b) obj);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
