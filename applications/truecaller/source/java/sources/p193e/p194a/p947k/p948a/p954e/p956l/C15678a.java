package p193e.p194a.p947k.p948a.p954e.p956l;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.videocallerid.C4718R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p947k.p948a.p954e.C15657a;
import p193e.p194a.p947k.p972m.C16140n;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.k.a.e.l.a */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/e/l/a.class */
public final class C15678a extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final g f44246a = C25225a.m3978P1(new C15680b());

    /* renamed from: b */
    public final g f44247b = C25225a.m3978P1(new C15681c());

    /* renamed from: c */
    public final View f44248c;

    /* renamed from: d */
    public final AbstractC15679a f44249d;

    /* renamed from: e.a.k.a.e.l.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/e/l/a$a.class */
    public interface AbstractC15679a {
        /* renamed from: N7 */
        void mo18523N7(C15657a c15657a);

        /* renamed from: p9 */
        void mo18522p9(C15657a c15657a);
    }

    /* renamed from: e.a.k.a.e.l.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/e/l/a$b.class */
    public static final class C15680b extends m implements a<C16140n> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15680b() {
            super(0);
            C15678a.this = r4;
        }

        public Object invoke() {
            View view = C15678a.this.f44248c;
            int i = C4718R.C4720id.avatarView;
            AvatarXView avatarXView = (AvatarXView) view.findViewById(i);
            if (avatarXView != null) {
                i = C4718R.C4720id.cancelButton;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    i = C4718R.C4720id.contactName;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        return new C16140n((ConstraintLayout) view, avatarXView, imageView, textView);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.k.a.e.l.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/a/e/l/a$c.class */
    public static final class C15681c extends m implements a<C8243a> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15681c() {
            super(0);
            C15678a.this = r4;
        }

        public Object invoke() {
            Context context = C15678a.this.f44248c.getContext();
            l.d(context, "view.context");
            return new C8243a(new C19235i0(context));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15678a(View view, AbstractC15679a abstractC15679a) {
        super(view);
        l.e(view, ViewAction.VIEW);
        this.f44248c = view;
        this.f44249d = abstractC15679a;
    }
}
