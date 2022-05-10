package p012b.p122v.p123d;

import android.view.View;
/* renamed from: b.v.d.l */
/* loaded from: classes-dex2jar.jar:b/v/d/l.class */
public class C1940l {

    /* renamed from: a */
    public final AbstractC1942b f7637a;

    /* renamed from: b */
    public C1941a f7638b = new C1941a();

    /* renamed from: b.v.d.l$a */
    /* loaded from: classes-dex2jar.jar:b/v/d/l$a.class */
    public static class C1941a {

        /* renamed from: a */
        public int f7639a = 0;

        /* renamed from: b */
        public int f7640b;

        /* renamed from: c */
        public int f7641c;

        /* renamed from: d */
        public int f7642d;

        /* renamed from: e */
        public int f7643e;

        /* renamed from: a */
        public int m31542a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            return i == i2 ? 2 : 4;
        }

        /* renamed from: a */
        public void m31543a(int i) {
            this.f7639a = i | this.f7639a;
        }

        /* renamed from: a */
        public void m31541a(int i, int i2, int i3, int i4) {
            this.f7640b = i;
            this.f7641c = i2;
            this.f7642d = i3;
            this.f7643e = i4;
        }

        /* renamed from: a */
        public boolean m31544a() {
            int i = this.f7639a;
            if ((i & 7) != 0 && (i & (m31542a(this.f7642d, this.f7640b) << 0)) == 0) {
                return false;
            }
            int i2 = this.f7639a;
            if ((i2 & 112) != 0 && (i2 & (m31542a(this.f7642d, this.f7641c) << 4)) == 0) {
                return false;
            }
            int i3 = this.f7639a;
            if ((i3 & 1792) != 0 && (i3 & (m31542a(this.f7643e, this.f7640b) << 8)) == 0) {
                return false;
            }
            int i4 = this.f7639a;
            return (i4 & 28672) == 0 || (i4 & (m31542a(this.f7643e, this.f7641c) << 12)) != 0;
        }

        /* renamed from: b */
        public void m31540b() {
            this.f7639a = 0;
        }
    }

    /* renamed from: b.v.d.l$b */
    /* loaded from: classes-dex2jar.jar:b/v/d/l$b.class */
    public interface AbstractC1942b {
        /* renamed from: a */
        int mo31539a();

        /* renamed from: a */
        int mo31537a(View view);

        /* renamed from: a */
        View mo31538a(int i);

        /* renamed from: b */
        int mo31536b();

        /* renamed from: b */
        int mo31535b(View view);
    }

    public C1940l(AbstractC1942b bVar) {
        this.f7637a = bVar;
    }

    /* renamed from: a */
    public View m31546a(int i, int i2, int i3, int i4) {
        int a = this.f7637a.mo31539a();
        int b = this.f7637a.mo31536b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View a2 = this.f7637a.mo31538a(i);
            this.f7638b.m31541a(a, b, this.f7637a.mo31537a(a2), this.f7637a.mo31535b(a2));
            if (i3 != 0) {
                this.f7638b.m31540b();
                this.f7638b.m31543a(i3);
                if (this.f7638b.m31544a()) {
                    return a2;
                }
            }
            view = view;
            if (i4 != 0) {
                this.f7638b.m31540b();
                this.f7638b.m31543a(i4);
                view = view;
                if (this.f7638b.m31544a()) {
                    view = a2;
                }
            }
            i += i5;
        }
        return view;
    }

    /* renamed from: a */
    public boolean m31545a(View view, int i) {
        this.f7638b.m31541a(this.f7637a.mo31539a(), this.f7637a.mo31536b(), this.f7637a.mo31537a(view), this.f7637a.mo31535b(view));
        if (i == 0) {
            return false;
        }
        this.f7638b.m31540b();
        this.f7638b.m31543a(i);
        return this.f7638b.m31544a();
    }
}
