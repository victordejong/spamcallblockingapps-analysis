package p193e.p194a.p739f0.p741e;

import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import s1.z.c.l;
/* renamed from: e.a.f0.e.b */
/* loaded from: classes13-dex2jar.jar:e/a/f0/e/b.class */
public class C13877b extends AbstractC13876a {

    /* renamed from: g */
    public final ConstraintLayout f40249g;

    /* renamed from: h */
    public long f40250h;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C13877b(p1727n3.p1849n.AbstractC26865f r9, android.view.View r10) {
        /*
            r8 = this;
            r0 = r9
            r1 = r10
            r2 = 3
            r3 = 0
            r4 = 0
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
            android.widget.TextView r5 = (android.widget.TextView) r5
            r0.<init>(r1, r2, r3, r4, r5)
            r0 = r8
            r1 = -1
            r0.f40250h = r1
            r0 = r8
            android.widget.ImageView r0 = r0.f40244a
            r1 = 0
            r0.setTag(r1)
            r0 = r11
            r1 = 0
            r0 = r0[r1]
            androidx.constraintlayout.widget.ConstraintLayout r0 = (androidx.constraintlayout.widget.ConstraintLayout) r0
            r9 = r0
            r0 = r8
            r1 = r9
            r0.f40249g = r1
            r0 = r9
            r1 = 0
            r0.setTag(r1)
            r0 = r8
            android.widget.TextView r0 = r0.f40245b
            r1 = 0
            r0.setTag(r1)
            r0 = r8
            r1 = r10
            r0.setRootTag(r1)
            r0 = r8
            monitor-enter(r0)
            r0 = r8
            r1 = 8
            r0.f40250h = r1     // Catch: java.lang.Throwable -> L59
            r0 = r8
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L59
            r0 = r8
            r0.requestRebind()
            return
        L59:
            r9 = move-exception
            r0 = r8
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L59
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p739f0.p741e.C13877b.<init>(n3.n.f, android.view.View):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p739f0.p741e.AbstractC13876a
    /* renamed from: a */
    public void mo20978a(Integer num) {
        this.f40247d = num;
        synchronized (this) {
            this.f40250h |= 2;
        }
        notifyPropertyChanged(7);
        C13877b.super.requestRebind();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p739f0.p741e.AbstractC13876a
    /* renamed from: b */
    public void mo20977b(View.OnClickListener onClickListener) {
        this.f40248e = onClickListener;
        synchronized (this) {
            this.f40250h |= 4;
        }
        notifyPropertyChanged(12);
        C13877b.super.requestRebind();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p739f0.p741e.AbstractC13876a
    /* renamed from: c */
    public void mo20976c(CharSequence charSequence) {
        this.f40246c = charSequence;
        synchronized (this) {
            this.f40250h |= 1;
        }
        notifyPropertyChanged(16);
        C13877b.super.requestRebind();
    }

    public void executeBindings() {
        long j;
        synchronized (this) {
            j = this.f40250h;
            this.f40250h = 0L;
        }
        CharSequence charSequence = this.f40246c;
        Integer num = this.f40247d;
        View.OnClickListener onClickListener = this.f40248e;
        if ((10 & j) != 0) {
            ImageView imageView = this.f40244a;
            l.e(imageView, "imageView");
            if (num != null) {
                imageView.setImageResource(num.intValue());
            } else {
                imageView.setImageDrawable(null);
            }
        }
        if ((j & 12) != 0) {
            this.f40249g.setOnClickListener(onClickListener);
        }
        if ((9 & j) != 0) {
            MediaSessionCompat.m43194u1(this.f40245b, charSequence);
        }
    }

    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f40250h != 0;
        }
    }

    public void invalidateAll() {
        synchronized (this) {
            this.f40250h = 8L;
        }
        requestRebind();
    }

    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public boolean setVariable(int i, Object obj) {
        boolean z;
        if (16 == i) {
            mo20976c((CharSequence) obj);
        } else if (7 == i) {
            mo20978a((Integer) obj);
        } else if (12 != i) {
            z = false;
            return z;
        } else {
            mo20977b((View.OnClickListener) obj);
        }
        z = true;
        return z;
    }
}
