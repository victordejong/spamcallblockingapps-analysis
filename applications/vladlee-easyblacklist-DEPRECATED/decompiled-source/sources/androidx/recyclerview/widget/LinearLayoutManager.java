package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.p037g.C0741t;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.common.api.Api;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager.class */
public class LinearLayoutManager extends RecyclerView.AbstractC1066i implements RecyclerView.AbstractC1076p.AbstractC1078b {

    /* renamed from: a */
    private C1055c f4441a;

    /* renamed from: b */
    private boolean f4442b;

    /* renamed from: c */
    private boolean f4443c;

    /* renamed from: d */
    private boolean f4444d;

    /* renamed from: e */
    private boolean f4445e;

    /* renamed from: f */
    private boolean f4446f;

    /* renamed from: g */
    private final C1054b f4447g;

    /* renamed from: h */
    private int f4448h;

    /* renamed from: i */
    int f4449i;

    /* renamed from: j */
    AbstractC1148y f4450j;

    /* renamed from: k */
    boolean f4451k;

    /* renamed from: l */
    int f4452l;

    /* renamed from: m */
    int f4453m;

    /* renamed from: n */
    SavedState f4454n;

    /* renamed from: o */
    final C1053a f4455o;

    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$SavedState.class */
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C1144v();

        /* renamed from: a */
        int f4456a;

        /* renamed from: b */
        int f4457b;

        /* renamed from: c */
        boolean f4458c;

        public SavedState() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public SavedState(Parcel parcel) {
            this.f4456a = parcel.readInt();
            this.f4457b = parcel.readInt();
            this.f4458c = parcel.readInt() != 1 ? false : true;
        }

        public SavedState(SavedState savedState) {
            this.f4456a = savedState.f4456a;
            this.f4457b = savedState.f4457b;
            this.f4458c = savedState.f4458c;
        }

        /* renamed from: a */
        final boolean m7292a() {
            return this.f4456a >= 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f4456a);
            parcel.writeInt(this.f4457b);
            parcel.writeInt(this.f4458c ? 1 : 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$a.class */
    public static final class C1053a {

        /* renamed from: a */
        AbstractC1148y f4459a;

        /* renamed from: b */
        int f4460b;

        /* renamed from: c */
        int f4461c;

        /* renamed from: d */
        boolean f4462d;

        /* renamed from: e */
        boolean f4463e;

        C1053a() {
            m7291a();
        }

        /* renamed from: a */
        final void m7291a() {
            this.f4460b = -1;
            this.f4461c = Integer.MIN_VALUE;
            this.f4462d = false;
            this.f4463e = false;
        }

        /* renamed from: a */
        public final void m7290a(View view, int i) {
            int b = this.f4459a.m6715b();
            if (b >= 0) {
                m7288b(view, i);
                return;
            }
            this.f4460b = i;
            if (this.f4462d) {
                int d = (this.f4459a.mo6709d() - b) - this.f4459a.mo6712b(view);
                this.f4461c = this.f4459a.mo6709d() - d;
                if (d > 0) {
                    int e = this.f4459a.mo6706e(view);
                    int i2 = this.f4461c;
                    int c = this.f4459a.mo6711c();
                    int min = (i2 - e) - (c + Math.min(this.f4459a.mo6713a(view) - c, 0));
                    if (min < 0) {
                        this.f4461c += Math.min(d, -min);
                        return;
                    }
                    return;
                }
                return;
            }
            int a = this.f4459a.mo6713a(view);
            int c2 = a - this.f4459a.mo6711c();
            this.f4461c = a;
            if (c2 > 0) {
                int e2 = this.f4459a.mo6706e(view);
                int d2 = (this.f4459a.mo6709d() - Math.min(0, (this.f4459a.mo6709d() - b) - this.f4459a.mo6712b(view))) - (a + e2);
                if (d2 < 0) {
                    this.f4461c -= Math.min(c2, -d2);
                }
            }
        }

        /* renamed from: b */
        final void m7289b() {
            this.f4461c = this.f4462d ? this.f4459a.mo6709d() : this.f4459a.mo6711c();
        }

        /* renamed from: b */
        public final void m7288b(View view, int i) {
            this.f4461c = this.f4462d ? this.f4459a.mo6712b(view) + this.f4459a.m6715b() : this.f4459a.mo6713a(view);
            this.f4460b = i;
        }

        public final String toString() {
            return "AnchorInfo{mPosition=" + this.f4460b + ", mCoordinate=" + this.f4461c + ", mLayoutFromEnd=" + this.f4462d + ", mValid=" + this.f4463e + '}';
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$b.class */
    public static final class C1054b {

        /* renamed from: a */
        public int f4464a;

        /* renamed from: b */
        public boolean f4465b;

        /* renamed from: c */
        public boolean f4466c;

        /* renamed from: d */
        public boolean f4467d;

        protected C1054b() {
        }

        /* renamed from: a */
        final void m7287a() {
            this.f4464a = 0;
            this.f4465b = false;
            this.f4466c = false;
            this.f4467d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.LinearLayoutManager$c */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/LinearLayoutManager$c.class */
    public static final class C1055c {

        /* renamed from: b */
        int f4469b;

        /* renamed from: c */
        int f4470c;

        /* renamed from: d */
        int f4471d;

        /* renamed from: e */
        int f4472e;

        /* renamed from: f */
        int f4473f;

        /* renamed from: g */
        int f4474g;

        /* renamed from: j */
        int f4477j;

        /* renamed from: l */
        boolean f4479l;

        /* renamed from: a */
        boolean f4468a = true;

        /* renamed from: h */
        int f4475h = 0;

        /* renamed from: i */
        boolean f4476i = false;

        /* renamed from: k */
        List<RecyclerView.AbstractC1082t> f4478k = null;

        C1055c() {
        }

        /* renamed from: b */
        private View m7283b(View view) {
            View view2;
            int size = this.f4478k.size();
            View view3 = null;
            int i = Api.BaseClientBuilder.API_PRIORITY_OTHER;
            int i2 = 0;
            while (true) {
                view2 = view3;
                if (i2 >= size) {
                    break;
                }
                View view4 = this.f4478k.get(i2).f4658a;
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view4.getLayoutParams();
                view3 = view3;
                i = i;
                if (view4 != view) {
                    view3 = view3;
                    i = i;
                    if (!layoutParams.f4563c.m7006p()) {
                        int f = (layoutParams.f4563c.m7016f() - this.f4471d) * this.f4472e;
                        view3 = view3;
                        i = i;
                        if (f >= 0) {
                            view3 = view3;
                            i = i;
                            if (f < i) {
                                view2 = view4;
                                if (f == 0) {
                                    break;
                                }
                                i = f;
                                view3 = view4;
                            } else {
                                continue;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                i2++;
            }
            return view2;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final View m7285a(RecyclerView.C1074n nVar) {
            List<RecyclerView.AbstractC1082t> list = this.f4478k;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    View view = this.f4478k.get(i).f4658a;
                    RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                    if (!layoutParams.f4563c.m7006p() && this.f4471d == layoutParams.f4563c.m7016f()) {
                        m7286a(view);
                        return view;
                    }
                }
                return null;
            }
            View b = nVar.m7071b(this.f4471d);
            this.f4471d += this.f4472e;
            return b;
        }

        /* renamed from: a */
        public final void m7286a(View view) {
            View b = m7283b(view);
            this.f4471d = b == null ? -1 : ((RecyclerView.LayoutParams) b.getLayoutParams()).f4563c.m7016f();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final boolean m7284a(RecyclerView.C1079q qVar) {
            int i = this.f4471d;
            return i >= 0 && i < qVar.m7040a();
        }
    }

    public LinearLayoutManager() {
        this((byte) 0);
    }

    public LinearLayoutManager(byte b) {
        this.f4449i = 1;
        this.f4443c = false;
        this.f4451k = false;
        this.f4444d = false;
        this.f4445e = true;
        this.f4452l = -1;
        this.f4453m = Integer.MIN_VALUE;
        this.f4454n = null;
        this.f4455o = new C1053a();
        this.f4447g = new C1054b();
        this.f4448h = 2;
        m7298j(1);
        m7309b(false);
    }

    public LinearLayoutManager(Context context, AttributeSet attributeSet, int i, int i2) {
        this.f4449i = 1;
        this.f4443c = false;
        this.f4451k = false;
        this.f4444d = false;
        this.f4445e = true;
        this.f4452l = -1;
        this.f4453m = Integer.MIN_VALUE;
        this.f4454n = null;
        this.f4455o = new C1053a();
        this.f4447g = new C1054b();
        this.f4448h = 2;
        RecyclerView.AbstractC1066i.C1068b a = m7147a(context, attributeSet, i, i2);
        m7298j(a.f4599a);
        m7309b(a.f4601c);
        mo7312a(a.f4602d);
    }

    /* renamed from: A */
    private boolean m7328A() {
        return this.f4450j.mo6702h() == 0 && this.f4450j.mo6707e() == 0;
    }

    /* renamed from: B */
    private View m7327B() {
        return m7122e(this.f4451k ? m7102o() - 1 : 0);
    }

    /* renamed from: C */
    private View m7326C() {
        return m7122e(this.f4451k ? 0 : m7102o() - 1);
    }

    /* renamed from: D */
    private View m7325D() {
        return m7295k(0, m7102o());
    }

    /* renamed from: E */
    private View m7324E() {
        return m7295k(m7102o() - 1, -1);
    }

    /* renamed from: a */
    private int m7321a(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, boolean z) {
        int d;
        int d2 = this.f4450j.mo6709d() - i;
        if (d2 <= 0) {
            return 0;
        }
        int i2 = -m7308c(-d2, nVar, qVar);
        if (!z || (d = this.f4450j.mo6709d() - (i + i2)) <= 0) {
            return i2;
        }
        this.f4450j.mo6714a(d);
        return d + i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0091, code lost:
        if (r9.f4639g == false) goto L_0x0094;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int m7317a(androidx.recyclerview.widget.RecyclerView.C1074n r7, androidx.recyclerview.widget.LinearLayoutManager.C1055c r8, androidx.recyclerview.widget.RecyclerView.C1079q r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.m7317a(androidx.recyclerview.widget.RecyclerView$n, androidx.recyclerview.widget.LinearLayoutManager$c, androidx.recyclerview.widget.RecyclerView$q, boolean):int");
    }

    /* renamed from: a */
    private View m7323a(int i, int i2, boolean z) {
        m7301i();
        return (this.f4449i == 0 ? this.f4591r : this.f4592s).m6843a(i, i2, z ? 24579 : 320, 320);
    }

    /* renamed from: a */
    private void m7322a(int i, int i2, boolean z, RecyclerView.C1079q qVar) {
        int i3;
        this.f4441a.f4479l = m7328A();
        this.f4441a.f4475h = m7302h(qVar);
        C1055c cVar = this.f4441a;
        cVar.f4473f = i;
        int i4 = -1;
        if (i == 1) {
            cVar.f4475h += this.f4450j.mo6703g();
            View C = m7326C();
            C1055c cVar2 = this.f4441a;
            if (!this.f4451k) {
                i4 = 1;
            }
            cVar2.f4472e = i4;
            this.f4441a.f4471d = m7120e(C) + this.f4441a.f4472e;
            this.f4441a.f4469b = this.f4450j.mo6712b(C);
            i3 = this.f4450j.mo6712b(C) - this.f4450j.mo6709d();
        } else {
            View B = m7327B();
            this.f4441a.f4475h += this.f4450j.mo6711c();
            C1055c cVar3 = this.f4441a;
            if (this.f4451k) {
                i4 = 1;
            }
            cVar3.f4472e = i4;
            this.f4441a.f4471d = m7120e(B) + this.f4441a.f4472e;
            this.f4441a.f4469b = this.f4450j.mo6713a(B);
            i3 = (-this.f4450j.mo6713a(B)) + this.f4450j.mo6711c();
        }
        C1055c cVar4 = this.f4441a;
        cVar4.f4470c = i2;
        if (z) {
            cVar4.f4470c -= i3;
        }
        this.f4441a.f4474g = i3;
    }

    /* renamed from: a */
    private void m7320a(C1053a aVar) {
        m7300i(aVar.f4460b, aVar.f4461c);
    }

    /* renamed from: a */
    private void m7319a(RecyclerView.C1074n nVar, int i, int i2) {
        if (i != i2) {
            if (i2 > i) {
                while (true) {
                    i2--;
                    if (i2 >= i) {
                        m7148a(i2, nVar);
                    } else {
                        return;
                    }
                }
            } else {
                for (int i3 = i; i3 > i2; i3--) {
                    m7148a(i3, nVar);
                }
            }
        }
    }

    /* renamed from: a */
    private void m7318a(RecyclerView.C1074n nVar, C1055c cVar) {
        if (cVar.f4468a && !cVar.f4479l) {
            int i = cVar.f4473f;
            int i2 = cVar.f4474g;
            if (i == -1) {
                int o = m7102o();
                if (i2 >= 0) {
                    int e = this.f4450j.mo6707e() - i2;
                    if (this.f4451k) {
                        for (int i3 = 0; i3 < o; i3++) {
                            View e2 = m7122e(i3);
                            if (this.f4450j.mo6713a(e2) < e || this.f4450j.mo6708d(e2) < e) {
                                m7319a(nVar, 0, i3);
                                return;
                            }
                        }
                        return;
                    }
                    int i4 = o - 1;
                    for (int i5 = i4; i5 >= 0; i5--) {
                        View e3 = m7122e(i5);
                        if (this.f4450j.mo6713a(e3) < e || this.f4450j.mo6708d(e3) < e) {
                            m7319a(nVar, i4, i5);
                            return;
                        }
                    }
                }
            } else if (i2 >= 0) {
                int o2 = m7102o();
                if (this.f4451k) {
                    int i6 = o2 - 1;
                    for (int i7 = i6; i7 >= 0; i7--) {
                        View e4 = m7122e(i7);
                        if (this.f4450j.mo6712b(e4) > i2 || this.f4450j.mo6710c(e4) > i2) {
                            m7319a(nVar, i6, i7);
                            return;
                        }
                    }
                    return;
                }
                for (int i8 = 0; i8 < o2; i8++) {
                    View e5 = m7122e(i8);
                    if (this.f4450j.mo6712b(e5) > i2 || this.f4450j.mo6710c(e5) > i2) {
                        m7319a(nVar, 0, i8);
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: b */
    private int m7311b(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, boolean z) {
        int c = i - this.f4450j.mo6711c();
        if (c <= 0) {
            return 0;
        }
        int i2 = -m7308c(c, nVar, qVar);
        int i3 = i2;
        if (z) {
            int c2 = (i + i2) - this.f4450j.mo6711c();
            i3 = i2;
            if (c2 > 0) {
                this.f4450j.mo6714a(-c2);
                i3 = i2 - c2;
            }
        }
        return i3;
    }

    /* renamed from: b */
    private void m7310b(C1053a aVar) {
        m7297j(aVar.f4460b, aVar.f4461c);
    }

    /* renamed from: b */
    private void m7309b(boolean z) {
        mo6967a((String) null);
        if (z != this.f4443c) {
            this.f4443c = z;
            m7108k();
        }
    }

    /* renamed from: c */
    private int m7308c(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        if (m7102o() == 0 || i == 0) {
            return 0;
        }
        this.f4441a.f4468a = true;
        m7301i();
        int i2 = i > 0 ? 1 : -1;
        int abs = Math.abs(i);
        m7322a(i2, abs, true, qVar);
        int a = this.f4441a.f4474g + m7317a(nVar, this.f4441a, qVar, false);
        if (a < 0) {
            return 0;
        }
        if (abs > a) {
            i = i2 * a;
        }
        this.f4450j.mo6714a(-i);
        this.f4441a.f4477j = i;
        return i;
    }

    /* renamed from: c */
    private View m7307c(boolean z) {
        int i;
        int o;
        if (this.f4451k) {
            i = m7102o() - 1;
            o = -1;
        } else {
            i = 0;
            o = m7102o();
        }
        return m7323a(i, o, z);
    }

    /* renamed from: d */
    private View m7305d(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        return mo7316a(nVar, qVar, m7102o() - 1, -1, qVar.m7040a());
    }

    /* renamed from: d */
    private View m7304d(boolean z) {
        int o;
        int i;
        if (this.f4451k) {
            o = 0;
            i = m7102o();
        } else {
            o = m7102o() - 1;
            i = -1;
        }
        return m7323a(o, i, z);
    }

    /* renamed from: h */
    private int m7302h(RecyclerView.C1079q qVar) {
        if (qVar.f4633a != -1) {
            return this.f4450j.mo6705f();
        }
        return 0;
    }

    /* renamed from: i */
    private int m7299i(RecyclerView.C1079q qVar) {
        if (m7102o() == 0) {
            return 0;
        }
        m7301i();
        return C1100al.m6850a(qVar, this.f4450j, m7307c(!this.f4445e), m7304d(!this.f4445e), this, this.f4445e, this.f4451k);
    }

    /* renamed from: i */
    private void m7300i(int i, int i2) {
        this.f4441a.f4470c = this.f4450j.mo6709d() - i2;
        this.f4441a.f4472e = this.f4451k ? -1 : 1;
        C1055c cVar = this.f4441a;
        cVar.f4471d = i;
        cVar.f4473f = 1;
        cVar.f4469b = i2;
        cVar.f4474g = Integer.MIN_VALUE;
    }

    /* renamed from: j */
    private int m7296j(RecyclerView.C1079q qVar) {
        if (m7102o() == 0) {
            return 0;
        }
        m7301i();
        return C1100al.m6851a(qVar, this.f4450j, m7307c(!this.f4445e), m7304d(!this.f4445e), this, this.f4445e);
    }

    /* renamed from: j */
    private void m7298j(int i) {
        if (i == 0 || i == 1) {
            mo6967a((String) null);
            if (i != this.f4449i || this.f4450j == null) {
                this.f4450j = AbstractC1148y.m6716a(this, i);
                this.f4455o.f4459a = this.f4450j;
                this.f4449i = i;
                m7108k();
                return;
            }
            return;
        }
        throw new IllegalArgumentException("invalid orientation:".concat(String.valueOf(i)));
    }

    /* renamed from: j */
    private void m7297j(int i, int i2) {
        this.f4441a.f4470c = i2 - this.f4450j.mo6711c();
        C1055c cVar = this.f4441a;
        cVar.f4471d = i;
        cVar.f4472e = this.f4451k ? 1 : -1;
        C1055c cVar2 = this.f4441a;
        cVar2.f4473f = -1;
        cVar2.f4469b = i2;
        cVar2.f4474g = Integer.MIN_VALUE;
    }

    /* renamed from: k */
    private int m7294k(RecyclerView.C1079q qVar) {
        if (m7102o() == 0) {
            return 0;
        }
        m7301i();
        return C1100al.m6849b(qVar, this.f4450j, m7307c(!this.f4445e), m7304d(!this.f4445e), this, this.f4445e);
    }

    /* renamed from: k */
    private View m7295k(int i, int i2) {
        int i3;
        int i4;
        m7301i();
        if ((i2 > i ? (char) 1 : i2 < i ? (char) 65535 : (char) 0) == 0) {
            return m7122e(i);
        }
        if (this.f4450j.mo6713a(m7122e(i)) < this.f4450j.mo6711c()) {
            i4 = 16644;
            i3 = 16388;
        } else {
            i4 = 4161;
            i3 = 4097;
        }
        return (this.f4449i == 0 ? this.f4591r : this.f4592s).m6843a(i, i2, i4, i3);
    }

    /* renamed from: z */
    private void m7293z() {
        boolean z = true;
        if (this.f4449i == 1 || !m7303h()) {
            z = this.f4443c;
        } else if (this.f4443c) {
            z = false;
        }
        this.f4451k = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public int mo6990a(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        if (this.f4449i == 1) {
            return 0;
        }
        return m7308c(i, nVar, qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final View mo7152a(int i) {
        int o = m7102o();
        if (o == 0) {
            return null;
        }
        int e = i - m7120e(m7122e(0));
        if (e >= 0 && e < o) {
            View e2 = m7122e(e);
            if (m7120e(e2) == i) {
                return e2;
            }
        }
        return super.mo7152a(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public View mo6984a(View view, int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        int d;
        m7293z();
        if (m7102o() == 0 || (d = m7306d(i)) == Integer.MIN_VALUE) {
            return null;
        }
        m7301i();
        m7301i();
        m7322a(d, (int) (this.f4450j.mo6705f() * 0.33333334f), false, qVar);
        C1055c cVar = this.f4441a;
        cVar.f4474g = Integer.MIN_VALUE;
        cVar.f4468a = false;
        m7317a(nVar, cVar, qVar, true);
        boolean z = this.f4451k;
        View E = (d != -1 ? !z : z) ? m7324E() : m7325D();
        View B = d == -1 ? m7327B() : m7326C();
        if (!B.hasFocusable()) {
            return E;
        }
        if (E == null) {
            return null;
        }
        return B;
    }

    /* renamed from: a */
    View mo7316a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, int i, int i2, int i3) {
        m7301i();
        int c = this.f4450j.mo6711c();
        int d = this.f4450j.mo6709d();
        int i4 = i2 > i ? 1 : -1;
        View view = null;
        View view2 = null;
        while (i != i2) {
            View e = m7122e(i);
            int e2 = m7120e(e);
            view = view;
            view2 = view2;
            if (e2 >= 0) {
                view = view;
                view2 = view2;
                if (e2 >= i3) {
                    continue;
                } else if (((RecyclerView.LayoutParams) e.getLayoutParams()).f4563c.m7006p()) {
                    view = view;
                    view2 = view2;
                    if (view2 == null) {
                        view2 = e;
                        view = view;
                    }
                } else if (this.f4450j.mo6713a(e) < d && this.f4450j.mo6712b(e) >= c) {
                    return e;
                } else {
                    view = view;
                    view2 = view2;
                    if (view == null) {
                        view = e;
                        view2 = view2;
                    }
                }
            }
            i += i4;
        }
        return view != null ? view : view2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6991a(int i, int i2, RecyclerView.C1079q qVar, RecyclerView.AbstractC1066i.AbstractC1067a aVar) {
        if (this.f4449i != 0) {
            i = i2;
        }
        if (m7102o() != 0 && i != 0) {
            m7301i();
            m7322a(i > 0 ? 1 : -1, Math.abs(i), true, qVar);
            mo7313a(qVar, this.f4441a, aVar);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo7149a(int i, RecyclerView.AbstractC1066i.AbstractC1067a aVar) {
        boolean z;
        int i2;
        SavedState savedState = this.f4454n;
        int i3 = -1;
        if (savedState == null || !savedState.m7292a()) {
            m7293z();
            boolean z2 = this.f4451k;
            int i4 = this.f4452l;
            z = z2;
            i2 = i4;
            if (i4 == -1) {
                if (z2) {
                    i2 = i - 1;
                    z = z2;
                } else {
                    i2 = 0;
                    z = z2;
                }
            }
        } else {
            z = this.f4454n.f4458c;
            i2 = this.f4454n.f4456a;
        }
        if (!z) {
            i3 = 1;
        }
        for (int i5 = 0; i5 < this.f4448h && i2 >= 0 && i2 < i; i5++) {
            aVar.mo6727a(i2, 0);
            i2 += i3;
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6986a(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.f4454n = (SavedState) parcelable;
            m7108k();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6980a(AccessibilityEvent accessibilityEvent) {
        super.mo6980a(accessibilityEvent);
        if (m7102o() > 0) {
            View a = m7323a(0, m7102o(), false);
            int i = -1;
            accessibilityEvent.setFromIndex(a == null ? -1 : m7120e(a));
            View a2 = m7323a(m7102o() - 1, -1, false);
            if (a2 != null) {
                i = m7120e(a2);
            }
            accessibilityEvent.setToIndex(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void mo7315a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, C1053a aVar, int i) {
    }

    /* renamed from: a */
    void mo7314a(RecyclerView.C1074n nVar, RecyclerView.C1079q qVar, C1055c cVar, C1054b bVar) {
        int i;
        int i2;
        int i3;
        int i4;
        View a = cVar.m7285a(nVar);
        if (a == null) {
            bVar.f4465b = true;
            return;
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) a.getLayoutParams();
        if (cVar.f4478k == null) {
            if (this.f4451k == (cVar.f4473f == -1)) {
                m7126c(a);
            } else {
                m7123d(a);
            }
        } else {
            if (this.f4451k == (cVar.f4473f == -1)) {
                m7146a(a);
            } else {
                m7132b(a);
            }
        }
        RecyclerView.LayoutParams layoutParams2 = (RecyclerView.LayoutParams) a.getLayoutParams();
        Rect g = this.f4590q.m7207g(a);
        int i5 = g.left;
        int i6 = g.right;
        int i7 = g.top;
        int i8 = g.bottom;
        int a2 = RecyclerView.AbstractC1066i.m7150a(m7099r(), m7101p(), m7097t() + m7095v() + layoutParams2.leftMargin + layoutParams2.rightMargin + i5 + i6 + 0, layoutParams2.width, mo6940f());
        int a3 = RecyclerView.AbstractC1066i.m7150a(m7098s(), m7100q(), m7096u() + m7094w() + layoutParams2.topMargin + layoutParams2.bottomMargin + i7 + i8 + 0, layoutParams2.height, mo6937g());
        if (m7131b(a, a2, a3, layoutParams2)) {
            a.measure(a2, a3);
        }
        bVar.f4464a = this.f4450j.mo6706e(a);
        if (this.f4449i == 1) {
            if (m7303h()) {
                i = m7099r() - m7095v();
                i2 = i - this.f4450j.mo6704f(a);
            } else {
                i2 = m7097t();
                i = this.f4450j.mo6704f(a) + i2;
            }
            if (cVar.f4473f == -1) {
                i3 = cVar.f4469b;
                i4 = cVar.f4469b - bVar.f4464a;
            } else {
                i4 = cVar.f4469b;
                i3 = cVar.f4469b + bVar.f4464a;
            }
        } else {
            int u = m7096u();
            i3 = u + this.f4450j.mo6704f(a);
            if (cVar.f4473f == -1) {
                i = cVar.f4469b;
                i2 = cVar.f4469b - bVar.f4464a;
                i4 = u;
            } else {
                i2 = cVar.f4469b;
                i4 = u;
                i = cVar.f4469b + bVar.f4464a;
            }
        }
        m7144a(a, i2, i4, i, i3);
        if (layoutParams.f4563c.m7006p() || layoutParams.f4563c.m6999w()) {
            bVar.f4466c = true;
        }
        bVar.f4467d = a.hasFocusable();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public void mo6972a(RecyclerView.C1079q qVar) {
        super.mo6972a(qVar);
        this.f4454n = null;
        this.f4452l = -1;
        this.f4453m = Integer.MIN_VALUE;
        this.f4455o.m7291a();
    }

    /* renamed from: a */
    void mo7313a(RecyclerView.C1079q qVar, C1055c cVar, RecyclerView.AbstractC1066i.AbstractC1067a aVar) {
        int i = cVar.f4471d;
        if (i >= 0 && i < qVar.m7040a()) {
            aVar.mo6727a(i, Math.max(0, cVar.f4474g));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6971a(RecyclerView recyclerView, RecyclerView.C1074n nVar) {
        super.mo6971a(recyclerView, nVar);
        if (this.f4446f) {
            m7125c(nVar);
            nVar.m7081a();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: a */
    public final void mo6967a(String str) {
        if (this.f4454n == null) {
            super.mo6967a(str);
        }
    }

    /* renamed from: a */
    public void mo7312a(boolean z) {
        mo6967a((String) null);
        if (this.f4444d != z) {
            this.f4444d = z;
            m7108k();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public int mo6961b(int i, RecyclerView.C1074n nVar, RecyclerView.C1079q qVar) {
        if (this.f4449i == 0) {
            return 0;
        }
        return m7308c(i, nVar, qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public final int mo6956b(RecyclerView.C1079q qVar) {
        return m7299i(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1076p.AbstractC1078b
    /* renamed from: b */
    public final PointF mo6964b(int i) {
        if (m7102o() == 0) {
            return null;
        }
        boolean z = false;
        int i2 = 1;
        if (i < m7120e(m7122e(0))) {
            z = true;
        }
        if (z != this.f4451k) {
            i2 = -1;
        }
        return this.f4449i == 0 ? new PointF(i2, 0.0f) : new PointF(0.0f, i2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: b */
    public RecyclerView.LayoutParams mo6965b() {
        return new RecyclerView.LayoutParams(-2, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public final int mo6948c(RecyclerView.C1079q qVar) {
        return m7299i(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public final void mo6953c(int i) {
        this.f4452l = i;
        this.f4453m = Integer.MIN_VALUE;
        SavedState savedState = this.f4454n;
        if (savedState != null) {
            savedState.f4456a = -1;
        }
        m7108k();
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x02f0, code lost:
        r10 = m7305d(r8, r9);
     */
    /* JADX WARN: Removed duplicated region for block: B:130:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0270  */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo6949c(androidx.recyclerview.widget.RecyclerView.C1074n r8, androidx.recyclerview.widget.RecyclerView.C1079q r9) {
        /*
            Method dump skipped, instructions count: 2120
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.LinearLayoutManager.mo6949c(androidx.recyclerview.widget.RecyclerView$n, androidx.recyclerview.widget.RecyclerView$q):void");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: c */
    public boolean mo6954c() {
        return this.f4454n == null && this.f4442b == this.f4444d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final int m7306d(int i) {
        return i != 1 ? i != 2 ? i != 17 ? i != 33 ? i != 66 ? (i == 130 && this.f4449i == 1) ? 1 : Integer.MIN_VALUE : this.f4449i == 0 ? 1 : Integer.MIN_VALUE : this.f4449i == 1 ? -1 : Integer.MIN_VALUE : this.f4449i == 0 ? -1 : Integer.MIN_VALUE : (this.f4449i != 1 && m7303h()) ? -1 : 1 : (this.f4449i != 1 && m7303h()) ? 1 : -1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: d */
    public final int mo6943d(RecyclerView.C1079q qVar) {
        return m7296j(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: d */
    public final boolean mo6946d() {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: e */
    public final int mo6941e(RecyclerView.C1079q qVar) {
        return m7296j(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: e */
    public final Parcelable mo6942e() {
        int i;
        SavedState savedState = this.f4454n;
        if (savedState != null) {
            return new SavedState(savedState);
        }
        SavedState savedState2 = new SavedState();
        if (m7102o() > 0) {
            m7301i();
            boolean z = this.f4442b ^ this.f4451k;
            savedState2.f4458c = z;
            if (z) {
                View C = m7326C();
                savedState2.f4457b = this.f4450j.mo6709d() - this.f4450j.mo6712b(C);
                i = m7120e(C);
            } else {
                View B = m7327B();
                savedState2.f4456a = m7120e(B);
                savedState2.f4457b = this.f4450j.mo6713a(B) - this.f4450j.mo6711c();
                return savedState2;
            }
        } else {
            i = -1;
        }
        savedState2.f4456a = i;
        return savedState2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: f */
    public final int mo6938f(RecyclerView.C1079q qVar) {
        return m7294k(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: f */
    public final boolean mo6940f() {
        return this.f4449i == 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: g */
    public final int mo6935g(RecyclerView.C1079q qVar) {
        return m7294k(qVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: g */
    public final boolean mo6937g() {
        return this.f4449i == 1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public final boolean m7303h() {
        return C0741t.m8325g(this.f4590q) == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final void m7301i() {
        if (this.f4441a == null) {
            this.f4441a = new C1055c();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i
    /* renamed from: j */
    final boolean mo7110j() {
        boolean z;
        if (m7100q() == 1073741824 || m7101p() == 1073741824) {
            return false;
        }
        int o = m7102o();
        int i = 0;
        while (true) {
            if (i >= o) {
                z = false;
                break;
            }
            ViewGroup.LayoutParams layoutParams = m7122e(i).getLayoutParams();
            if (layoutParams.width < 0 && layoutParams.height < 0) {
                z = true;
                break;
            }
            i++;
        }
        return z;
    }
}
