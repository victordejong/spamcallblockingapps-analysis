package p193e.p194a.p682e.p699c2;

import android.content.Context;
import android.content.res.TypedArray;
import android.view.ViewGroup;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.listitem.ListItemX;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p194a.p1041l0.p1042u.p1043d.AbstractC17373b;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1342w4.p1344s.C21260k0;
import p193e.p194a.p1405z2.AbstractC21847a;
import p193e.p194a.p288a0.AbstractC7401p;
import p193e.p194a.p288a0.AbstractC7407v;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import p193e.p194a.p798g5.AbstractC14537p;
/* renamed from: e.a.e.c2.j0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/j0.class */
public class C13199j0 extends AbstractC13217x<AbstractC13209t.C13211b, AbstractC17373b> {

    /* renamed from: d */
    public final Context f38334d;

    /* renamed from: e */
    public final AbstractC14537p f38335e;

    /* renamed from: f */
    public final AbstractC17405c f38336f;

    /* renamed from: g */
    public final AbstractC19222c f38337g;

    /* renamed from: h */
    public final AbstractC21847a f38338h;

    /* renamed from: i */
    public final int f38339i;

    /* renamed from: j */
    public final ComponentCallbacks2C22236i f38340j;

    /* renamed from: k */
    public final AbstractC18904l f38341k;

    /* renamed from: l */
    public final AbstractC7401p f38342l;

    /* renamed from: m */
    public final boolean f38343m;

    /* renamed from: n */
    public final AbstractC7407v f38344n;

    public C13199j0(Context context, AbstractC17373b abstractC17373b, AbstractC14537p abstractC14537p, AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c, AbstractC21847a abstractC21847a, ComponentCallbacks2C22236i componentCallbacks2C22236i, AbstractC18904l abstractC18904l, AbstractC7401p abstractC7401p, boolean z, AbstractC7407v abstractC7407v) {
        super(null);
        this.f38334d = context;
        this.f38335e = abstractC14537p;
        this.f38336f = abstractC17405c;
        this.f38337g = abstractC19222c;
        this.f38340j = componentCallbacks2C22236i;
        this.f38338h = abstractC21847a;
        this.f38341k = abstractC18904l;
        this.f38342l = abstractC7401p;
        this.f38343m = z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{16842829});
        this.f38339i = obtainStyledAttributes.getDimensionPixelSize(0, -2);
        this.f38344n = abstractC7407v;
        obtainStyledAttributes.recycle();
        setHasStableIds(true);
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: g */
    public AbstractC13209t.C13211b mo10011g(ViewGroup viewGroup, int i) {
        ListItemX listItemX = new ListItemX(viewGroup.getContext());
        listItemX.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        listItemX.setBackgroundColor(C19291g.m13612L(this.f38334d, 2130970002));
        return new C21260k0(listItemX, this.f38336f, this.f38337g, this.f38340j, this.f38341k);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        C c = this.f38386b;
        int count = c != 0 ? c.getCount() : 0;
        return count == 0 ? 0 : Math.max(3, count);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return C2752R.C2754id.view_type_history;
    }
}
