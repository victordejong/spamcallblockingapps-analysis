package p459j.p460a.p550p;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p604y0.p608d.C14508b;
/* renamed from: j.a.p.d */
/* loaded from: classes2-dex2jar.jar:j/a/p/d.class */
public class C13301d extends AbstractC13300c {
    @Nullable

    /* renamed from: d */
    public static final ViewDataBinding.IncludedLayouts f29913d = null;
    @Nullable

    /* renamed from: e */
    public static final SparseIntArray f29914e = new SparseIntArray();
    @NonNull

    /* renamed from: b */
    public final ConstraintLayout f29915b;

    /* renamed from: c */
    public long f29916c;

    static {
        f29914e.put(R$id.iv_empty_check, 1);
        f29914e.put(R$id.tv_empty_title, 2);
        f29914e.put(R$id.tv_empty_description, 3);
        f29914e.put(R$id.tv_empty_scan, 4);
        f29914e.put(R$id.tv_last_scan, 5);
        f29914e.put(R$id.tv_disclaimer, 6);
    }

    public C13301d(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 7, f29913d, f29914e));
    }

    public C13301d(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (ImageView) objArr[1], (TextView) objArr[6], (TextView) objArr[3], (TextView) objArr[4], (TextView) objArr[2], (TextView) objArr[5]);
        this.f29916c = -1L;
        this.f29915b = (ConstraintLayout) objArr[0];
        this.f29915b.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // p459j.p460a.p550p.AbstractC13300c
    /* renamed from: a */
    public void mo4303a(@Nullable C14508b bVar) {
        this.f29912a = bVar;
    }

    @Override // androidx.databinding.ViewDataBinding
    public void executeBindings() {
        synchronized (this) {
            this.f29916c = 0L;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f29916c != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f29916c = 2L;
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
            mo4303a((C14508b) obj);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
