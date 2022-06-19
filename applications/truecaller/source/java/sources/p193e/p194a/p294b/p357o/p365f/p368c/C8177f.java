package p193e.p194a.p294b.p357o.p365f.p368c;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p294b.p355m.C8105u0;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.b.o.f.c.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/c/f.class */
public final class C8177f extends RecyclerView.AbstractC0313c0 implements AbstractC8176e {

    /* renamed from: b */
    public static final /* synthetic */ l[] f25301b = {C22128a.m8621g0(C8177f.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/ItemDistrictListIndexBinding;", 0)};

    /* renamed from: a */
    public final C19351b f25302a = new C19351b(new C8178a());

    /* renamed from: e.a.b.o.f.c.f$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/c/f$a.class */
    public static final class C8178a extends m implements s1.z.b.l<C8177f, C8105u0> {
        public C8178a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28837d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            AppCompatTextView appCompatTextView = (AppCompatTextView) view;
            return new C8105u0(appCompatTextView, appCompatTextView);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8177f(View view) {
        super(view);
        s1.z.c.l.e(view, "itemView");
    }

    @Override // p193e.p194a.p294b.p357o.p365f.p368c.AbstractC8176e
    /* renamed from: s3 */
    public void mo28838s3(String str) {
        s1.z.c.l.e(str, "text");
        AppCompatTextView appCompatTextView = ((C8105u0) this.f25302a.m13418a(this, f25301b[0])).f25110a;
        s1.z.c.l.d(appCompatTextView, "binding.tvIndex");
        appCompatTextView.setText(str);
    }
}
