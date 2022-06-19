package p193e.p194a.p619d.p628c.p636z;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.groupavatar.GroupAvatarXView;
import com.truecaller.voip.C4781R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p628c.p636z.AbstractC11358p;
import p193e.p194a.p619d.p654s.C11789e;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.c.z.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/f.class */
public final class C11342f extends AbstractC11348j<AbstractC11358p.C11359a> {

    /* renamed from: b */
    public final g f33362b = C25225a.m3978P1(new C11343a());

    /* renamed from: c */
    public final View f33363c;

    /* renamed from: e.a.d.c.z.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/z/f$a.class */
    public static final class C11343a extends m implements a<C11789e> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11343a() {
            super(0);
            C11342f.this = r4;
        }

        public Object invoke() {
            View view = C11342f.this.f33363c;
            int i = C4781R.C4783id.callStatus;
            TextView textView = (TextView) view.findViewById(i);
            if (textView != null) {
                i = C4781R.C4783id.callTime;
                TextView textView2 = (TextView) view.findViewById(i);
                if (textView2 != null) {
                    i = C4781R.C4783id.groupAvatar;
                    GroupAvatarXView groupAvatarXView = (GroupAvatarXView) view.findViewById(i);
                    if (groupAvatarXView != null) {
                        i = C4781R.C4783id.voipIcon;
                        ImageView imageView = (ImageView) view.findViewById(i);
                        if (imageView != null) {
                            return new C11789e((ConstraintLayout) view, textView, textView2, groupAvatarXView, imageView);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11342f(View view) {
        super(view);
        l.e(view, ViewAction.VIEW);
        this.f33363c = view;
    }
}
