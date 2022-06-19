package p193e.p194a.p682e.p698c;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.analytics.common.event.ViewActionEvent;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1059m3.C18151c1;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p682e.p683a.DialogC12704d3;
import s1.a.l;
import s1.u.s;
import s1.z.c.m;
/* renamed from: e.a.e.c.m2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/m2.class */
public final class C13114m2 extends RecyclerView.AbstractC0317g<View$OnClickListenerC13115a> {

    /* renamed from: a */
    public List<String> f38056a = s.a;

    /* renamed from: b */
    public final AbstractC13110l2 f38057b;

    /* renamed from: e.a.e.c.m2$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/m2$a.class */
    public final class View$OnClickListenerC13115a extends RecyclerView.AbstractC0313c0 implements View.OnClickListener {

        /* renamed from: c */
        public static final /* synthetic */ l[] f38058c = {C22128a.m8621g0(View$OnClickListenerC13115a.class, "binding", "getBinding$truecaller_googlePlayRelease()Lcom/truecaller/databinding/ViewDetailsPictureBinding;", 0)};

        /* renamed from: a */
        public final C19351b f38059a = new C19351b(new C13116a());

        /* renamed from: b */
        public final /* synthetic */ C13114m2 f38060b;

        /* renamed from: e.a.e.c.m2$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/c/m2$a$a.class */
        public static final class C13116a extends m implements s1.z.b.l<View$OnClickListenerC13115a, C18151c1> {
            public C13116a() {
                super(1);
            }

            /* renamed from: d */
            public Object m22049d(Object obj) {
                RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
                s1.z.c.l.e(abstractC0313c0, "viewHolder");
                View view = abstractC0313c0.itemView;
                s1.z.c.l.d(view, "viewHolder.itemView");
                ImageView imageView = (ImageView) view.findViewById(2131365153);
                if (imageView != null) {
                    CardView cardView = (CardView) view;
                    return new C18151c1(cardView, imageView, cardView);
                }
                throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(2131365153)));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public View$OnClickListenerC13115a(C13114m2 c13114m2, View view) {
            super(view);
            s1.z.c.l.e(view, "itemView");
            this.f38060b = c13114m2;
            m22050N4().f51150b.setOnClickListener(this);
        }

        /* renamed from: N4 */
        public final C18151c1 m22050N4() {
            return (C18151c1) this.f38059a.m13418a(this, f38058c[0]);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s1.z.c.l.e(view, ViewAction.VIEW);
            AbstractC13110l2 abstractC13110l2 = this.f38060b.f38057b;
            ImageView imageView = m22050N4().f51149a;
            s1.z.c.l.d(imageView, "binding.pictureImageView");
            C13114m2 c13114m2 = this.f38060b;
            String str = c13114m2.f38056a.get(getAdapterPosition());
            View$OnClickListenerC13135s1 view$OnClickListenerC13135s1 = (View$OnClickListenerC13135s1) abstractC13110l2;
            Context context = view$OnClickListenerC13135s1.getContext();
            if (context != null) {
                new DialogC12704d3(context, Uri.parse(str), imageView).show();
                view$OnClickListenerC13135s1.f38188o.mo13274b(ViewActionEvent.m35945b("detailView", ViewActionEvent.BusinessProfilesAction.IMAGE_OPENEND));
            }
        }
    }

    public C13114m2(AbstractC13110l2 abstractC13110l2) {
        s1.z.c.l.e(abstractC13110l2, "pictureListener");
        this.f38057b = abstractC13110l2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f38056a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(View$OnClickListenerC13115a view$OnClickListenerC13115a, int i) {
        View$OnClickListenerC13115a view$OnClickListenerC13115a2 = view$OnClickListenerC13115a;
        s1.z.c.l.e(view$OnClickListenerC13115a2, "holder");
        String str = this.f38056a.get(i);
        s1.z.c.l.e(str, "picture");
        C18151c1 m22050N4 = view$OnClickListenerC13115a2.m22050N4();
        ImageView imageView = m22050N4.f51149a;
        s1.z.c.l.d(imageView, "pictureImageView");
        C22234h mo8414k = C17891a1.C17902k.m15664K1(imageView.getContext()).mo8414k();
        mo8414k.mo8420V(str);
        ((C21852d) mo8414k).mo8104c().mo8087u(C2752R.C2753drawable.business_image_placeholder).mo8097k(C2752R.C2753drawable.business_image_placeholder).m8427O(m22050N4.f51149a);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public View$OnClickListenerC13115a onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.view_details_picture, viewGroup, false);
        s1.z.c.l.d(inflate, ViewAction.VIEW);
        return new View$OnClickListenerC13115a(this, inflate);
    }
}
