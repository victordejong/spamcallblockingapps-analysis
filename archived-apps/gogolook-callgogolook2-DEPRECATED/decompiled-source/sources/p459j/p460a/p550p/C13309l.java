package p459j.p460a.p550p;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ObservableField;
import androidx.databinding.ViewDataBinding;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p604y0.p608d.C14508b;
/* renamed from: j.a.p.l */
/* loaded from: classes2-dex2jar.jar:j/a/p/l.class */
public class C13309l extends AbstractC13308k {
    @Nullable

    /* renamed from: g */
    public static final ViewDataBinding.IncludedLayouts f29936g = null;
    @Nullable

    /* renamed from: h */
    public static final SparseIntArray f29937h = new SparseIntArray();
    @NonNull

    /* renamed from: e */
    public final ConstraintLayout f29938e;

    /* renamed from: f */
    public long f29939f;

    static {
        f29937h.put(R$id.anim_container, 4);
        f29937h.put(R$id.iv_tail, 5);
        f29937h.put(R$id.iv_body, 6);
        f29937h.put(R$id.iv_shake, 7);
        f29937h.put(R$id.iv_bottom_envelope, 8);
        f29937h.put(R$id.iv_head, 9);
        f29937h.put(R$id.iv_top_envelope, 10);
    }

    public C13309l(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, ViewDataBinding.mapBindings(dataBindingComponent, view, 11, f29936g, f29937h));
    }

    public C13309l(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 3, (FrameLayout) objArr[4], (ImageView) objArr[6], (ImageView) objArr[8], (ImageView) objArr[9], (ImageView) objArr[7], (ImageView) objArr[5], (ImageView) objArr[10], (TextView) objArr[3], (TextView) objArr[2], (TextView) objArr[1]);
        this.f29939f = -1L;
        this.f29938e = (ConstraintLayout) objArr[0];
        this.f29938e.setTag(null);
        this.f29932a.setTag(null);
        this.f29933b.setTag(null);
        this.f29934c.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // p459j.p460a.p550p.AbstractC13308k
    /* renamed from: a */
    public void mo4286a(@Nullable C14508b bVar) {
        this.f29935d = bVar;
        synchronized (this) {
            this.f29939f |= 8;
        }
        notifyPropertyChanged(2);
        super.requestRebind();
    }

    /* renamed from: a */
    public final boolean m4287a(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f29939f |= 4;
        }
        return true;
    }

    /* renamed from: b */
    public final boolean m4285b(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f29939f |= 1;
        }
        return true;
    }

    /* renamed from: c */
    public final boolean m4284c(ObservableField<String> observableField, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.f29939f |= 2;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a4  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeBindings() {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p550p.C13309l.executeBindings():void");
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f29939f != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f29939f = 16L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean onFieldChange(int i, Object obj, int i2) {
        if (i == 0) {
            return m4285b((ObservableField) obj, i2);
        }
        if (i == 1) {
            return m4284c((ObservableField) obj, i2);
        }
        if (i != 2) {
            return false;
        }
        return m4287a((ObservableField) obj, i2);
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        boolean z;
        if (2 == i) {
            mo4286a((C14508b) obj);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
