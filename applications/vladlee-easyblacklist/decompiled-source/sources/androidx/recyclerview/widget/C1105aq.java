package androidx.recyclerview.widget;

import android.view.View;
/* renamed from: androidx.recyclerview.widget.aq */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/aq.class */
final class C1105aq {

    /* renamed from: a */
    final AbstractC1107b f4755a;

    /* renamed from: b */
    C1106a f4756b = new C1106a();

    /* renamed from: androidx.recyclerview.widget.aq$a */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/aq$a.class */
    static final class C1106a {

        /* renamed from: a */
        int f4757a = 0;

        /* renamed from: b */
        int f4758b;

        /* renamed from: c */
        int f4759c;

        /* renamed from: d */
        int f4760d;

        /* renamed from: e */
        int f4761e;

        C1106a() {
        }

        /* renamed from: a */
        private static int m6839a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* renamed from: a */
        final void m6840a(int i) {
            this.f4757a = i | this.f4757a;
        }

        /* renamed from: a */
        final void m6838a(int i, int i2, int i3, int i4) {
            this.f4758b = i;
            this.f4759c = i2;
            this.f4760d = i3;
            this.f4761e = i4;
        }

        /* renamed from: a */
        final boolean m6841a() {
            int i = this.f4757a;
            if ((i & 7) != 0 && (i & (m6839a(this.f4760d, this.f4758b) << 0)) == 0) {
                return false;
            }
            int i2 = this.f4757a;
            if ((i2 & 112) != 0 && (i2 & (m6839a(this.f4760d, this.f4759c) << 4)) == 0) {
                return false;
            }
            int i3 = this.f4757a;
            if ((i3 & 1792) != 0 && (i3 & (m6839a(this.f4761e, this.f4758b) << 8)) == 0) {
                return false;
            }
            int i4 = this.f4757a;
            return (i4 & 28672) == 0 || ((m6839a(this.f4761e, this.f4759c) << 12) & i4) != 0;
        }
    }

    /* renamed from: androidx.recyclerview.widget.aq$b */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/aq$b.class */
    interface AbstractC1107b {
        /* renamed from: a */
        int mo6837a();

        /* renamed from: a */
        int mo6835a(View view);

        /* renamed from: a */
        View mo6836a(int i);

        /* renamed from: b */
        int mo6834b();

        /* renamed from: b */
        int mo6833b(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1105aq(AbstractC1107b bVar) {
        this.f4755a = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final View m6843a(int i, int i2, int i3, int i4) {
        int a = this.f4755a.mo6837a();
        int b = this.f4755a.mo6834b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View a2 = this.f4755a.mo6836a(i);
            this.f4756b.m6838a(a, b, this.f4755a.mo6835a(a2), this.f4755a.mo6833b(a2));
            if (i3 != 0) {
                C1106a aVar = this.f4756b;
                aVar.f4757a = 0;
                aVar.m6840a(i3);
                if (this.f4756b.m6841a()) {
                    return a2;
                }
            }
            view = view;
            if (i4 != 0) {
                C1106a aVar2 = this.f4756b;
                aVar2.f4757a = 0;
                aVar2.m6840a(i4);
                view = view;
                if (this.f4756b.m6841a()) {
                    view = a2;
                }
            }
            i += i5;
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m6842a(View view) {
        this.f4756b.m6838a(this.f4755a.mo6837a(), this.f4755a.mo6834b(), this.f4755a.mo6835a(view), this.f4755a.mo6833b(view));
        C1106a aVar = this.f4756b;
        aVar.f4757a = 0;
        aVar.m6840a(24579);
        return this.f4756b.m6841a();
    }
}
