package androidx.recyclerview.widget;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g$i.class */
public class g$i {

    /* renamed from: a */
    public RecyclerView$d0 f2084a;

    /* renamed from: b */
    public RecyclerView$d0 f2085b;

    /* renamed from: c */
    public int f2086c;

    /* renamed from: d */
    public int f2087d;

    /* renamed from: e */
    public int f2088e;

    /* renamed from: f */
    public int f2089f;

    private g$i(RecyclerView$d0 recyclerView$d0, RecyclerView$d0 recyclerView$d02) {
        this.f2084a = recyclerView$d0;
        this.f2085b = recyclerView$d02;
    }

    g$i(RecyclerView$d0 recyclerView$d0, RecyclerView$d0 recyclerView$d02, int i, int i2, int i3, int i4) {
        this(recyclerView$d0, recyclerView$d02);
        this.f2086c = i;
        this.f2087d = i2;
        this.f2088e = i3;
        this.f2089f = i4;
    }

    public String toString() {
        return "ChangeInfo{oldHolder=" + this.f2084a + ", newHolder=" + this.f2085b + ", fromX=" + this.f2086c + ", fromY=" + this.f2087d + ", toX=" + this.f2088e + ", toY=" + this.f2089f + '}';
    }
}
