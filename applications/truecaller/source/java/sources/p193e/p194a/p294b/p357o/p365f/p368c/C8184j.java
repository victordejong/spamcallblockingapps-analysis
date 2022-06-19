package p193e.p194a.p294b.p357o.p365f.p368c;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.bizmon.C3478R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p294b.p355m.C8103t0;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.b.o.f.c.j */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/c/j.class */
public final class C8184j extends RecyclerView.AbstractC0313c0 implements AbstractC8183i {

    /* renamed from: b */
    public static final /* synthetic */ l[] f25312b = {C22128a.m8621g0(C8184j.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/ItemDistrictListBinding;", 0)};

    /* renamed from: a */
    public final C19351b f25313a = new C19351b(new C8185a());

    /* renamed from: e.a.b.o.f.c.j$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/c/j$a.class */
    public static final class C8185a extends m implements s1.z.b.l<C8184j, C8103t0> {
        public C8185a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28833d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            int i = C3478R.C3480id.tvContacts;
            AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(i);
            if (appCompatTextView != null) {
                i = C3478R.C3480id.tvDistrictName;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(i);
                if (appCompatTextView2 != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    return new C8103t0(constraintLayout, appCompatTextView, appCompatTextView2, constraintLayout);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8184j(View view) {
        super(view);
        s1.z.c.l.e(view, "itemView");
    }

    @Override // p193e.p194a.p294b.p357o.p365f.p368c.AbstractC8183i
    /* renamed from: M4 */
    public void mo28835M4(String str) {
        s1.z.c.l.e(str, "text");
        AppCompatTextView appCompatTextView = ((C8103t0) this.f25313a.m13418a(this, f25312b[0])).f25105a;
        s1.z.c.l.d(appCompatTextView, "binding.tvContacts");
        appCompatTextView.setText(str);
    }

    @Override // p193e.p194a.p294b.p357o.p365f.p368c.AbstractC8183i
    /* renamed from: x1 */
    public void mo28834x1(String str) {
        s1.z.c.l.e(str, "text");
        AppCompatTextView appCompatTextView = ((C8103t0) this.f25313a.m13418a(this, f25312b[0])).f25106b;
        s1.z.c.l.d(appCompatTextView, "binding.tvDistrictName");
        appCompatTextView.setText(str);
    }
}
