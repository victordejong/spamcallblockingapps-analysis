package p193e.p194a.p682e.p698c;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.C2752R;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18148b1;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.a.l;
import s1.u.s;
import s1.z.c.m;
/* renamed from: e.a.e.c.k1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/k1.class */
public final class C13102k1 extends RecyclerView.AbstractC0317g<C13103a> {

    /* renamed from: a */
    public List<C13098j1> f38014a = s.a;

    /* renamed from: b */
    public final boolean f38015b;

    /* renamed from: e.a.e.c.k1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/k1$a.class */
    public final class C13103a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: b */
        public static final /* synthetic */ l[] f38016b = {C22128a.m8621g0(C13103a.class, "binding", "getBinding()Lcom/truecaller/databinding/ViewDetailsOpenHourBinding;", 0)};

        /* renamed from: a */
        public final C19351b f38017a = new C19351b(new C13104a());

        /* renamed from: e.a.e.c.k1$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/c/k1$a$a.class */
        public static final class C13104a extends m implements s1.z.b.l<C13103a, C18148b1> {
            public C13104a() {
                super(1);
            }

            /* renamed from: d */
            public Object m22058d(Object obj) {
                RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
                s1.z.c.l.e(abstractC0313c0, "viewHolder");
                View view = abstractC0313c0.itemView;
                s1.z.c.l.d(view, "viewHolder.itemView");
                int i = 2131365017;
                TextView textView = (TextView) view.findViewById(C2752R.C2754id.openDaysTextView);
                if (textView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    TextView textView2 = (TextView) view.findViewById(C2752R.C2754id.statusTextView);
                    if (textView2 != null) {
                        return new C18148b1(constraintLayout, textView, constraintLayout, textView2);
                    }
                    i = 2131366077;
                }
                throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13103a(C13102k1 c13102k1, View view) {
            super(view);
            s1.z.c.l.e(view, "itemView");
        }
    }

    public C13102k1(boolean z) {
        this.f38015b = z;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f38014a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C13103a c13103a, int i) {
        C13103a c13103a2 = c13103a;
        s1.z.c.l.e(c13103a2, "holder");
        C13098j1 c13098j1 = this.f38014a.get(i);
        s1.z.c.l.e(c13098j1, "openHours");
        C18148b1 c18148b1 = (C18148b1) c13103a2.f38017a.m13418a(c13103a2, C13103a.f38016b[0]);
        TextView textView = c18148b1.f51136a;
        s1.z.c.l.d(textView, "openDaysTextView");
        textView.setText(c13098j1.f37999a);
        if (!c13098j1.f38000b.isEmpty()) {
            TextView textView2 = c18148b1.f51137b;
            s1.z.c.l.d(textView2, "statusTextView");
            textView2.setText(C8605o.m28239a(TextUtils.join(", ", c13098j1.f38000b)));
            return;
        }
        TextView textView3 = c18148b1.f51137b;
        s1.z.c.l.d(textView3, "statusTextView");
        TextView textView4 = c18148b1.f51137b;
        s1.z.c.l.d(textView4, "statusTextView");
        textView3.setText(textView4.getContext().getString(2131886271));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C13103a onCreateViewHolder(ViewGroup viewGroup, int i) {
        View view;
        s1.z.c.l.e(viewGroup, "parent");
        if (this.f38015b) {
            LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
            s1.z.c.l.d(from, "LayoutInflater.from(parent.context)");
            view = C17422k.m16060p0(from, false).inflate(C2752R.layout.view_details_open_hour, viewGroup, false);
        } else {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.view_details_open_hour, viewGroup, false);
        }
        s1.z.c.l.d(view, "if (forceDarkTheme) {\n  … parent, false)\n        }");
        return new C13103a(this, view);
    }
}
