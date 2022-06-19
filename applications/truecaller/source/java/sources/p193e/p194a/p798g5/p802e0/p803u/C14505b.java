package p193e.p194a.p798g5.p802e0.p803u;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.tagger.C4604R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p798g5.p801d0.C14473d;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.g5.e0.u.b */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/u/b.class */
public final class C14505b extends AbstractC14511f {

    /* renamed from: d */
    public static final /* synthetic */ l[] f41751d = {C22128a.m8621g0(C14505b.class, "binding", "getBinding()Lcom/truecaller/tagger/databinding/LayoutSearchSubcategoryBinding;", 0)};

    /* renamed from: a */
    public final C19351b f41752a = new C19351b(new C14506a());

    /* renamed from: b */
    public final View f41753b;

    /* renamed from: c */
    public final AbstractC19233h0 f41754c;

    /* renamed from: e.a.g5.e0.u.b$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/u/b$a.class */
    public static final class C14506a extends m implements s1.z.b.l<C14505b, C14473d> {
        public C14506a() {
            super(1);
        }

        /* renamed from: d */
        public Object m20047d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            int i = C4604R.C4606id.categoryText;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                return new C14473d((ConstraintLayout) view, textView);
            }
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14505b(View view, AbstractC19233h0 abstractC19233h0) {
        super(view);
        s1.z.c.l.e(view, "itemView");
        s1.z.c.l.e(abstractC19233h0, "themedResourceProvider");
        this.f41753b = view;
        this.f41754c = abstractC19233h0;
    }
}
