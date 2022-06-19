package p193e.p194a.p798g5.p802e0.p803u;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.tagger.C4604R;
import com.truecaller.tagger.tagPicker.adapter.TagSearchType;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p798g5.p801d0.C14472c;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.g5.e0.u.d */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/u/d.class */
public final class C14508d extends AbstractC14511f {

    /* renamed from: e */
    public static final /* synthetic */ l[] f41757e = {C22128a.m8621g0(C14508d.class, "binding", "getBinding()Lcom/truecaller/tagger/databinding/LayoutSearchRootcategoryBinding;", 0)};

    /* renamed from: a */
    public final C19351b f41758a = new C19351b(new C14509a());

    /* renamed from: b */
    public final View f41759b;

    /* renamed from: c */
    public final AbstractC19233h0 f41760c;

    /* renamed from: d */
    public final TagSearchType f41761d;

    /* renamed from: e.a.g5.e0.u.d$a */
    /* loaded from: classes14-dex2jar.jar:e/a/g5/e0/u/d$a.class */
    public static final class C14509a extends m implements s1.z.b.l<C14508d, C14472c> {
        public C14509a() {
            super(1);
        }

        /* renamed from: d */
        public Object m20045d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            int i = C4604R.C4606id.rootCategoryIcon;
            ImageView imageView = (ImageView) view.findViewById(i);
            if (imageView != null) {
                i = C4604R.C4606id.rootCategoryText;
                TextView textView = (TextView) view.findViewById(i);
                if (textView != null) {
                    return new C14472c((ConstraintLayout) view, imageView, textView);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14508d(View view, AbstractC19233h0 abstractC19233h0, TagSearchType tagSearchType) {
        super(view);
        s1.z.c.l.e(view, "itemView");
        s1.z.c.l.e(abstractC19233h0, "themedResourceProvider");
        s1.z.c.l.e(tagSearchType, "tagSearchType");
        this.f41759b = view;
        this.f41760c = abstractC19233h0;
        this.f41761d = tagSearchType;
    }

    /* renamed from: N4 */
    public final C14472c m20046N4() {
        return (C14472c) this.f41758a.m13418a(this, f41757e[0]);
    }
}
