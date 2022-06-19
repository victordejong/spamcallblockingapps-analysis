package p193e.p194a.p294b.p355m;

import android.util.SparseIntArray;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LiveData;
import com.truecaller.bizmon.C3478R;
import p1727n3.p1868v.C27010k0;
import p193e.p194a.p294b.p295a.p296a.p306d.C7633b;
/* renamed from: e.a.b.m.k */
/* loaded from: classes6-dex2jar.jar:e/a/b/m/k.class */
public class C8077k extends AbstractC8074j {

    /* renamed from: h */
    public static final SparseIntArray f24957h;

    /* renamed from: f */
    public final ConstraintLayout f24958f;

    /* renamed from: g */
    public long f24959g;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f24957h = sparseIntArray;
        sparseIntArray.put(C3478R.C3480id.ttlDesc, 2);
        sparseIntArray.put(C3478R.C3480id.etDesc, 3);
        sparseIntArray.put(C3478R.C3480id.btnSave, 4);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8077k(p1727n3.p1849n.AbstractC26865f r11, android.view.View r12) {
        /*
            r10 = this;
            r0 = r11
            r1 = r12
            r2 = 5
            r3 = 0
            android.util.SparseIntArray r4 = p193e.p194a.p294b.p355m.C8077k.f24957h
            java.lang.Object[] r0 = androidx.databinding.ViewDataBinding.mapBindings(r0, r1, r2, r3, r4)
            r13 = r0
            r0 = r10
            r1 = r11
            r2 = r12
            r3 = 1
            r4 = r13
            r5 = 4
            r4 = r4[r5]
            com.google.android.material.button.MaterialButton r4 = (com.google.android.material.button.MaterialButton) r4
            r5 = r13
            r6 = 3
            r5 = r5[r6]
            com.google.android.material.textfield.TextInputEditText r5 = (com.google.android.material.textfield.TextInputEditText) r5
            r6 = r13
            r7 = 1
            r6 = r6[r7]
            android.widget.ProgressBar r6 = (android.widget.ProgressBar) r6
            r7 = r13
            r8 = 2
            r7 = r7[r8]
            com.google.android.material.textfield.TextInputLayout r7 = (com.google.android.material.textfield.TextInputLayout) r7
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            r0 = r10
            r1 = -1
            r0.f24959g = r1
            r0 = r13
            r1 = 0
            r0 = r0[r1]
            androidx.constraintlayout.widget.ConstraintLayout r0 = (androidx.constraintlayout.widget.ConstraintLayout) r0
            r11 = r0
            r0 = r10
            r1 = r11
            r0.f24958f = r1
            r0 = r11
            r1 = 0
            r0.setTag(r1)
            r0 = r10
            android.widget.ProgressBar r0 = r0.f24944c
            r1 = 0
            r0.setTag(r1)
            r0 = r10
            r1 = r12
            r0.setRootTag(r1)
            r0 = r10
            monitor-enter(r0)
            r0 = r10
            r1 = 4
            r0.f24959g = r1     // Catch: java.lang.Throwable -> L5f
            r0 = r10
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5f
            r0 = r10
            r0.requestRebind()
            return
        L5f:
            r11 = move-exception
            r0 = r10
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5f
            r0 = r11
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p355m.C8077k.<init>(n3.n.f, android.view.View):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p294b.p355m.AbstractC8074j
    /* renamed from: a */
    public void mo28914a(C7633b c7633b) {
        this.f24946e = c7633b;
        synchronized (this) {
            this.f24959g |= 2;
        }
        notifyPropertyChanged(18);
        C8077k.super.requestRebind();
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    public void executeBindings() {
        ?? r0;
        synchronized (this) {
            r0 = this.f24959g;
            this.f24959g = 0L;
        }
        C7633b c7633b = this.f24946e;
        int i = ((r0 & 7) > 0L ? 1 : ((r0 & 7) == 0L ? 0 : -1));
        char c = r0;
        int i2 = 0;
        if (i != 0) {
            Boolean bool = null;
            C27010k0<Boolean> c27010k0 = c7633b != null ? c7633b.f23986c : null;
            updateLiveDataRegistration(0, c27010k0);
            if (c27010k0 != null) {
                bool = c27010k0.m42869d();
            }
            boolean safeUnbox = ViewDataBinding.safeUnbox(bool);
            char c2 = r0;
            if (i != 0) {
                c2 = r0 | (safeUnbox ? true : true ? 1L : 0L);
            }
            if (safeUnbox) {
                i2 = 0;
                c = c2;
            } else {
                i2 = 8;
                c = c2;
            }
        }
        if ((c & 7) != 0) {
            this.f24944c.setVisibility(i2);
        }
    }

    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f24959g != 0;
        }
    }

    public void invalidateAll() {
        synchronized (this) {
            this.f24959g = 4L;
        }
        requestRebind();
    }

    public boolean onFieldChange(int i, Object obj, int i2) {
        boolean z = false;
        if (i != 0) {
            return false;
        }
        LiveData liveData = (LiveData) obj;
        if (i2 == 0) {
            synchronized (this) {
                this.f24959g |= 1;
            }
            z = true;
        }
        return z;
    }

    public boolean setVariable(int i, Object obj) {
        boolean z;
        if (18 == i) {
            mo28914a((C7633b) obj);
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
