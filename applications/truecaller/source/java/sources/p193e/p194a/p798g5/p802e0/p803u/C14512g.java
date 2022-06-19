package p193e.p194a.p798g5.p802e0.p803u;

import android.content.Context;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.tagger.C4604R;
import com.truecaller.tagger.tagPicker.adapter.TagSearchType;
import java.util.List;
import p1727n3.p1744b0.p1745a.C25570b;
import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p798g5.p801d0.C14473d;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.g5.e0.u.g */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/u/g.class */
public final class C14512g extends RecyclerView.AbstractC0317g<AbstractC14511f> {

    /* renamed from: a */
    public AbstractC19233h0 f41764a;

    /* renamed from: b */
    public final TagSearchType f41765b;

    /* renamed from: c */
    public String f41766c;

    /* renamed from: d */
    public List<C8551c> f41767d;

    /* renamed from: e */
    public final ComponentCallbacks2C22236i f41768e;

    /* renamed from: f */
    public final l<C8551c, s> f41769f;

    public C14512g(TagSearchType tagSearchType, String str, List list, ComponentCallbacks2C22236i componentCallbacks2C22236i, l lVar, int i) {
        tagSearchType = (i & 1) != 0 ? TagSearchType.TAGGER : tagSearchType;
        str = (i & 2) != 0 ? null : str;
        s1.z.c.l.e(tagSearchType, "tagSearchType");
        s1.z.c.l.e(list, "categories");
        s1.z.c.l.e(componentCallbacks2C22236i, "glideRequestManager");
        s1.z.c.l.e(lVar, "listener");
        this.f41765b = tagSearchType;
        this.f41766c = str;
        this.f41767d = list;
        this.f41768e = componentCallbacks2C22236i;
        this.f41769f = lVar;
    }

    /* renamed from: e */
    public final void m20044e(String str, List<C8551c> list) {
        s1.z.c.l.e(list, "filteredCategories");
        String str2 = this.f41766c;
        this.f41766c = str;
        C25586h.C25590d m3181a = C25586h.m3181a(new C14504a(this.f41767d, list), true);
        s1.z.c.l.d(m3181a, "DiffUtil.calculateDiff(C…ies, filteredCategories))");
        this.f41767d = list;
        if (s1.z.c.l.a(str2, str)) {
            m3181a.m3179b(new C25570b(this));
        } else {
            notifyDataSetChanged();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f41767d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f41767d.get(i).f26352c == 0 ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(AbstractC14511f abstractC14511f, int i) {
        AbstractC14511f abstractC14511f2 = abstractC14511f;
        s1.z.c.l.e(abstractC14511f2, "holder");
        if (!(abstractC14511f2 instanceof C14508d)) {
            if (!(abstractC14511f2 instanceof C14505b)) {
                return;
            }
            C14505b c14505b = (C14505b) abstractC14511f2;
            String str = this.f41766c;
            C8551c c8551c = this.f41767d.get(i);
            l<C8551c, s> lVar = this.f41769f;
            s1.z.c.l.e(c8551c, "category");
            s1.z.c.l.e(lVar, "listener");
            TextView textView = ((C14473d) c14505b.f41752a.m13418a(c14505b, C14505b.f41751d[0])).f41684a;
            s1.z.c.l.d(textView, "binding.categoryText");
            C17422k.m16089b(str, c8551c, textView, c14505b.f41754c.mo13758l(C4604R.attr.tcx_textPrimary));
            c14505b.f41753b.setOnClickListener(new View$OnClickListenerC14507c(lVar, c8551c));
            return;
        }
        C14508d c14508d = (C14508d) abstractC14511f2;
        String str2 = this.f41766c;
        C8551c c8551c2 = this.f41767d.get(i);
        l<C8551c, s> lVar2 = this.f41769f;
        ComponentCallbacks2C22236i componentCallbacks2C22236i = this.f41768e;
        s1.z.c.l.e(c8551c2, "category");
        s1.z.c.l.e(lVar2, "listener");
        s1.z.c.l.e(componentCallbacks2C22236i, "glideRequestManager");
        TextView textView2 = c14508d.m20046N4().f41683b;
        s1.z.c.l.d(textView2, "binding.rootCategoryText");
        C17422k.m16089b(str2, c8551c2, textView2, c14508d.f41760c.mo13758l(C4604R.attr.tcx_textPrimary));
        componentCallbacks2C22236i.mo8407r(c8551c2.f26354e).m8427O(c14508d.m20046N4().f41682a);
        if (c14508d.f41761d == TagSearchType.BIZMON) {
            int mo13758l = c14508d.f41760c.mo13758l(C4604R.attr.tcx_brandBackgroundBlue);
            ImageView imageView = c14508d.m20046N4().f41682a;
            s1.z.c.l.d(imageView, "binding.rootCategoryIcon");
            imageView.setImageTintList(ColorStateList.valueOf(mo13758l));
            c14508d.m20046N4().f41683b.setTextColor(mo13758l);
        }
        c14508d.f41759b.setOnClickListener(new View$OnClickListenerC14510e(lVar2, c8551c2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public AbstractC14511f onCreateViewHolder(ViewGroup viewGroup, int i) {
        C14508d c14508d;
        s1.z.c.l.e(viewGroup, "parent");
        if (this.f41764a == null) {
            Context context = viewGroup.getContext();
            s1.z.c.l.d(context, "parent.context");
            this.f41764a = new C19235i0(C17422k.m16113E(context, true));
        }
        if (i != 2) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C4604R.layout.layout_search_rootcategory, viewGroup, false);
            s1.z.c.l.d(inflate, "LayoutInflater.from(pare…tcategory, parent, false)");
            AbstractC19233h0 abstractC19233h0 = this.f41764a;
            if (abstractC19233h0 == null) {
                s1.z.c.l.l("themedResourceProvider");
                throw null;
            }
            c14508d = new C14508d(inflate, abstractC19233h0, this.f41765b);
        } else {
            View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(C4604R.layout.layout_search_subcategory, viewGroup, false);
            s1.z.c.l.d(inflate2, "LayoutInflater.from(pare…bcategory, parent, false)");
            AbstractC19233h0 abstractC19233h02 = this.f41764a;
            if (abstractC19233h02 == null) {
                s1.z.c.l.l("themedResourceProvider");
                throw null;
            }
            c14508d = new C14505b(inflate2, abstractC19233h02);
        }
        return c14508d;
    }
}
