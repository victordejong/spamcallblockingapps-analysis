package p193e.p194a.p294b.p357o.p365f.p367b;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.bizmon.C3478R;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p294b.p355m.C8107v0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.b.o.f.b.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/b/c.class */
public final class C8170c extends RecyclerView.AbstractC0313c0 {

    /* renamed from: c */
    public static final /* synthetic */ l[] f25294c = {C22128a.m8621g0(C8170c.class, "binding", "getBinding$bizmon_release()Lcom/truecaller/bizmon/databinding/ItemGovServicesContactBinding;", 0)};

    /* renamed from: a */
    public final C19351b f25295a = new C19351b(new C8171a());

    /* renamed from: b */
    public C8243a f25296b;

    /* renamed from: e.a.b.o.f.b.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/f/b/c$a.class */
    public static final class C8171a extends m implements s1.z.b.l<C8170c, C8107v0> {
        public C8171a() {
            super(1);
        }

        /* renamed from: d */
        public Object m28845d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            int i = C3478R.C3480id.avatar;
            AvatarXView avatarXView = (AvatarXView) view.findViewById(i);
            if (avatarXView != null) {
                i = C3478R.C3480id.buttonCall;
                AppCompatImageView appCompatImageView = (AppCompatImageView) view.findViewById(i);
                if (appCompatImageView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) view;
                    i = C3478R.C3480id.textDepartment;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) view.findViewById(i);
                    if (appCompatTextView != null) {
                        i = C3478R.C3480id.textName;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) view.findViewById(i);
                        if (appCompatTextView2 != null) {
                            i = C3478R.C3480id.textNumber;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) view.findViewById(i);
                            if (appCompatTextView3 != null) {
                                return new C8107v0(constraintLayout, avatarXView, appCompatImageView, constraintLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8170c(View view) {
        super(view);
        s1.z.c.l.e(view, "itemView");
        Context context = view.getContext();
        s1.z.c.l.d(context, "itemView.context");
        this.f25296b = new C8243a(new C19235i0(context));
        m28847N4().f25145a.setPresenter(this.f25296b);
    }

    /* renamed from: N4 */
    public final C8107v0 m28847N4() {
        return (C8107v0) this.f25295a.m13418a(this, f25294c[0]);
    }

    /* renamed from: O4 */
    public void m28846O4(boolean z) {
        AppCompatTextView appCompatTextView = m28847N4().f25147c;
        s1.z.c.l.d(appCompatTextView, "binding.textDepartment");
        C19286f.m13683U(appCompatTextView, z);
    }

    public void setName(String str) {
        s1.z.c.l.e(str, AnalyticsConstants.NAME);
        AppCompatTextView appCompatTextView = m28847N4().f25148d;
        s1.z.c.l.d(appCompatTextView, "binding.textName");
        appCompatTextView.setText(str);
    }
}
