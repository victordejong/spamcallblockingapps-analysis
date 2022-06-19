package p193e.p194a.p682e.p684b.p686b;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import e.m.d.y.n;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.e.b.b.l */
/* loaded from: classes15-dex2jar.jar:e/a/e/b/b/l.class */
public final class C12894l extends RecyclerView.AbstractC0313c0 implements AbstractC12892j {

    /* renamed from: a */
    public final TextView f37465a;

    /* renamed from: b */
    public final TextView f37466b;

    /* renamed from: c */
    public final View f37467c;

    /* renamed from: d */
    public final AbstractC18905m f37468d;

    /* renamed from: e.a.e.b.b.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/b/b/l$a.class */
    public static final class View$OnClickListenerC12895a implements View.OnClickListener {
        public View$OnClickListenerC12895a() {
            C12894l.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C12894l c12894l = C12894l.this;
            c12894l.f37468d.mo14327t(new C18900h("lang.pack.ACTION_DELETE", c12894l, (View) null, (Object) null, 12));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12894l(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f37467c = view;
        this.f37468d = abstractC18905m;
        this.f37465a = (TextView) view.findViewById(2131366265);
        this.f37466b = (TextView) view.findViewById(C2752R.C2754id.size);
        view.findViewById(C2752R.C2754id.delete).setOnClickListener(new View$OnClickListenerC12895a());
        n.d1(view, abstractC18905m, this, (String) null, (Object) null, 12);
        n.f1(view, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12892j
    /* renamed from: b */
    public void mo22472b(boolean z) {
        this.f37467c.setActivated(z);
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12892j
    /* renamed from: q0 */
    public void mo22471q0(String str) {
        l.e(str, "size");
        TextView textView = this.f37466b;
        l.d(textView, "sizeView");
        textView.setText(str);
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12892j
    public void setText(String str) {
        l.e(str, "text");
        TextView textView = this.f37465a;
        l.d(textView, "textView");
        textView.setText(str);
    }

    @Override // p193e.p194a.p682e.p684b.p686b.AbstractC12892j
    /* renamed from: z2 */
    public void mo22470z2(boolean z) {
        TextView textView = this.f37466b;
        l.d(textView, "sizeView");
        C19286f.m13683U(textView, z);
    }
}
