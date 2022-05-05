package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
/* renamed from: androidx.recyclerview.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/s.class */
final class RunnableC1139s implements Runnable {

    /* renamed from: a */
    static final ThreadLocal<RunnableC1139s> f4886a = new ThreadLocal<>();

    /* renamed from: e */
    static Comparator<C1141b> f4887e = new C1142t();

    /* renamed from: c */
    long f4889c;

    /* renamed from: d */
    long f4890d;

    /* renamed from: b */
    ArrayList<RecyclerView> f4888b = new ArrayList<>();

    /* renamed from: f */
    private ArrayList<C1141b> f4891f = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.recyclerview.widget.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/s$a.class */
    public static final class C1140a implements RecyclerView.AbstractC1066i.AbstractC1067a {

        /* renamed from: a */
        int f4892a;

        /* renamed from: b */
        int f4893b;

        /* renamed from: c */
        int[] f4894c;

        /* renamed from: d */
        int f4895d;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m6729a() {
            int[] iArr = this.f4894c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            this.f4895d = 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC1066i.AbstractC1067a
        /* renamed from: a */
        public final void mo6727a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            } else if (i2 >= 0) {
                int i3 = this.f4895d * 2;
                int[] iArr = this.f4894c;
                if (iArr == null) {
                    this.f4894c = new int[4];
                    Arrays.fill(this.f4894c, -1);
                } else if (i3 >= iArr.length) {
                    this.f4894c = new int[i3 * 2];
                    System.arraycopy(iArr, 0, this.f4894c, 0, iArr.length);
                }
                int[] iArr2 = this.f4894c;
                iArr2[i3] = i;
                iArr2[i3 + 1] = i2;
                this.f4895d++;
            } else {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
        }

        /* renamed from: a */
        final void m6726a(RecyclerView recyclerView, boolean z) {
            this.f4895d = 0;
            int[] iArr = this.f4894c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.AbstractC1066i iVar = recyclerView.f4550n;
            if (recyclerView.f4549m != null && iVar != null && iVar.m7106l()) {
                if (z) {
                    if (!recyclerView.f4542f.m6867d()) {
                        iVar.mo7149a(recyclerView.f4549m.mo979c(), this);
                    }
                } else if (!recyclerView.m7200k()) {
                    iVar.mo6991a(this.f4892a, this.f4893b, recyclerView.f4492C, this);
                }
                if (this.f4895d > iVar.f4597x) {
                    iVar.f4597x = this.f4895d;
                    iVar.f4598y = z;
                    recyclerView.f4541e.m7072b();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final boolean m6728a(int i) {
            if (this.f4894c == null) {
                return false;
            }
            int i2 = this.f4895d;
            for (int i3 = 0; i3 < i2 * 2; i3 += 2) {
                if (this.f4894c[i3] == i) {
                    return true;
                }
            }
            return false;
        }
    }

    /* renamed from: androidx.recyclerview.widget.s$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/s$b.class */
    static final class C1141b {

        /* renamed from: a */
        public boolean f4896a;

        /* renamed from: b */
        public int f4897b;

        /* renamed from: c */
        public int f4898c;

        /* renamed from: d */
        public RecyclerView f4899d;

        /* renamed from: e */
        public int f4900e;

        C1141b() {
        }
    }

    /* renamed from: a */
    private static RecyclerView.AbstractC1082t m6730a(RecyclerView recyclerView, int i, long j) {
        boolean z;
        int c = recyclerView.f4543g.m6801c();
        int i2 = 0;
        while (true) {
            if (i2 >= c) {
                z = false;
                break;
            }
            RecyclerView.AbstractC1082t d = RecyclerView.m7217d(recyclerView.f4543g.m6800c(i2));
            if (d.f4660c == i && !d.m7009m()) {
                z = true;
                break;
            }
            i2++;
        }
        if (z) {
            return null;
        }
        RecyclerView.C1074n nVar = recyclerView.f4541e;
        try {
            recyclerView.m7215e();
            RecyclerView.AbstractC1082t a = nVar.m7079a(i, j);
            if (a != null) {
                if (!a.m7007o() || a.m7009m()) {
                    nVar.m7073a(a, false);
                } else {
                    nVar.m7077a(a.f4658a);
                }
            }
            return a;
        } finally {
            recyclerView.m7237a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m6731a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.isAttachedToWindow() && this.f4889c == 0) {
            this.f4889c = RecyclerView.m7199l();
            recyclerView.post(this);
        }
        C1140a aVar = recyclerView.f4491B;
        aVar.f4892a = i;
        aVar.f4893b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [java.util.concurrent.TimeUnit] */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v6 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Unknown variable types count: 3 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 751
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RunnableC1139s.run():void");
    }
}
