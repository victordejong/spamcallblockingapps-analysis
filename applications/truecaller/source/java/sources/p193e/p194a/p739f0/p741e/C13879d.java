package p193e.p194a.p739f0.p741e;

import android.util.SparseIntArray;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.truecaller.social_media.C4497R;
import s1.z.c.l;
/* renamed from: e.a.f0.e.d */
/* loaded from: classes13-dex2jar.jar:e/a/f0/e/d.class */
public class C13879d extends AbstractC13878c {

    /* renamed from: g */
    public static final SparseIntArray f40255g;

    /* renamed from: e */
    public final ConstraintLayout f40256e;

    /* renamed from: f */
    public long f40257f;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f40255g = sparseIntArray;
        sparseIntArray.put(C4497R.C4499id.items_recycler_view, 2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C13879d(p1727n3.p1849n.AbstractC26865f r9, android.view.View r10) {
        /*
            r8 = this;
            r0 = r9
            r1 = r10
            r2 = 3
            r3 = 0
            android.util.SparseIntArray r4 = p193e.p194a.p739f0.p741e.C13879d.f40255g
            java.lang.Object[] r0 = androidx.databinding.ViewDataBinding.mapBindings(r0, r1, r2, r3, r4)
            r11 = r0
            r0 = r8
            r1 = r9
            r2 = r10
            r3 = 0
            r4 = r11
            r5 = 1
            r4 = r4[r5]
            android.widget.ImageView r4 = (android.widget.ImageView) r4
            r5 = r11
            r6 = 2
            r5 = r5[r6]
            androidx.recyclerview.widget.RecyclerView r5 = (androidx.recyclerview.widget.RecyclerView) r5
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r8
            r1 = -1
            r0.f40257f = r1
            r0 = r8
            android.widget.ImageView r0 = r0.f40252a
            r1 = 0
            r0.setTag(r1)
            r0 = r11
            r1 = 0
            r0 = r0[r1]
            androidx.constraintlayout.widget.ConstraintLayout r0 = (androidx.constraintlayout.widget.ConstraintLayout) r0
            r9 = r0
            r0 = r8
            r1 = r9
            r0.f40256e = r1
            r0 = r9
            r1 = 0
            r0.setTag(r1)
            r0 = r8
            r1 = r10
            r0.setRootTag(r1)
            r0 = r8
            monitor-enter(r0)
            r0 = r8
            r1 = 2
            r0.f40257f = r1     // Catch: java.lang.Throwable -> L53
            r0 = r8
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            r0 = r8
            r0.requestRebind()
            return
        L53:
            r9 = move-exception
            r0 = r8
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L53
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p739f0.p741e.C13879d.<init>(n3.n.f, android.view.View):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p739f0.p741e.AbstractC13878c
    /* renamed from: a */
    public void mo20975a(Integer num) {
        this.f40254c = num;
        synchronized (this) {
            this.f40257f |= 1;
        }
        notifyPropertyChanged(1);
        C13879d.super.requestRebind();
    }

    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f40257f;
            this.f40257f = 0L;
        }
        Integer num = this.f40254c;
        if ((j & 3) != 0) {
            ImageView imageView = this.f40252a;
            l.e(imageView, "imageView");
            if (num != null) {
                imageView.setImageResource(num.intValue());
            } else {
                imageView.setImageDrawable(null);
            }
        }
    }

    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f40257f != 0;
        }
    }

    public void invalidateAll() {
        synchronized (this) {
            this.f40257f = 2L;
        }
        requestRebind();
    }

    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public boolean setVariable(int i, Object obj) {
        boolean z = true;
        if (1 == i) {
            mo20975a((Integer) obj);
        } else {
            z = false;
        }
        return z;
    }
}
