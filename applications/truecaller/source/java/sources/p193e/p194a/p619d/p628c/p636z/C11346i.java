package p193e.p194a.p619d.p628c.p636z;

import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.listitem.ListItemX;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p619d.p628c.p636z.AbstractC11358p;
import p193e.p194a.p619d.p654s.C11790f;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.c.z.i */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/z/i.class */
public final class C11346i extends AbstractC11348j<AbstractC11358p.C11360b> {

    /* renamed from: b */
    public final C8243a f33368b = new C8243a(m24792N4());

    /* renamed from: c */
    public final g f33369c;

    /* renamed from: d */
    public final AbstractC11340d f33370d;

    /* renamed from: e.a.d.c.z.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/z/i$a.class */
    public static final class C11347a extends m implements a<C11790f> {

        /* renamed from: b */
        public final /* synthetic */ View f33371b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11347a(View view) {
            super(0);
            this.f33371b = view;
        }

        public Object invoke() {
            View view = this.f33371b;
            Objects.requireNonNull(view, "rootView");
            ListItemX listItemX = (ListItemX) view;
            return new C11790f(listItemX, listItemX);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11346i(View view, AbstractC11340d abstractC11340d) {
        super(view);
        l.e(view, ViewAction.VIEW);
        this.f33370d = abstractC11340d;
        this.f33369c = C25225a.m3978P1(new C11347a(view));
    }
}
