package p193e.p194a.p619d.p643d.p644a.p645a.p646a;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.voip.contacts.p188ui.items.contacts.VoipActionType;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17408d;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p373a.p386s.C8329a;
import p193e.p194a.p682e.C13338z0;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.d.a.a.a.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/a/a.class */
public final class C11640a extends RecyclerView.AbstractC0313c0 implements C13338z0.AbstractC13339a {

    /* renamed from: a */
    public String f34177a;

    /* renamed from: b */
    public final g f34178b = C25225a.m3978P1(new a(0, this));

    /* renamed from: c */
    public final g f34179c = C25225a.m3978P1(new a(1, this));

    /* renamed from: d */
    public final g f34180d = C25225a.m3978P1(new C11641b(1, this));

    /* renamed from: e */
    public final g f34181e = C25225a.m3978P1(new C11641b(0, this));

    /* renamed from: f */
    public final g f34182f = C25225a.m3978P1(new C11644e());

    /* renamed from: g */
    public final ListItemX f34183g;

    /* renamed from: h */
    public final C19235i0 f34184h;

    /* renamed from: i */
    public final C8243a f34185i;

    /* renamed from: j */
    public final C17408d f34186j;

    /* renamed from: k */
    public final AbstractC18905m f34187k;

    /* renamed from: e.a.d.d.a.a.a.a$b */
    /* loaded from: classes6-dex2jar.jar:e/a/d/d/a/a/a/a$b.class */
    public static final class C11641b extends m implements a<AppCompatTextView> {

        /* renamed from: b */
        public final /* synthetic */ int f34188b;

        /* renamed from: c */
        public final /* synthetic */ Object f34189c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11641b(int i, Object obj) {
            super(0);
            this.f34188b = i;
            this.f34189c = obj;
        }

        public final Object invoke() {
            int i = this.f34188b;
            if (i == 0) {
                View findViewById = ((C11640a) this.f34189c).f34183g.findViewById(2131366110);
                l.d(findViewById, "listItemX.findViewById(R.id.subtitle)");
                return (AppCompatTextView) findViewById;
            } else if (i != 1) {
                throw null;
            } else {
                View findViewById2 = ((C11640a) this.f34189c).f34183g.findViewById(2131366469);
                l.d(findViewById2, "listItemX.findViewById(R.id.title)");
                return (AppCompatTextView) findViewById2;
            }
        }
    }

    /* renamed from: e.a.d.d.a.a.a.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/a/a$c.class */
    public static final class C11642c extends m implements s1.z.b.l<View, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11642c() {
            super(1);
            C11640a.this = r4;
        }

        /* renamed from: d */
        public Object m24326d(Object obj) {
            l.e((View) obj, "it");
            AbstractC18905m abstractC18905m = C11640a.this.f34187k;
            String eventAction = VoipActionType.VOIP_VIEW_PROFILE.getEventAction();
            C11640a c11640a = C11640a.this;
            View view = c11640a.itemView;
            l.d(view, "this@VoipContactsItemView.itemView");
            abstractC18905m.mo14327t(new C18900h(eventAction, c11640a, view, (Object) null, 8));
            return s.a;
        }
    }

    /* renamed from: e.a.d.d.a.a.a.a$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/a/a$d.class */
    public static final class View$OnClickListenerC11643d implements View.OnClickListener {
        public View$OnClickListenerC11643d() {
            C11640a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18905m abstractC18905m = C11640a.this.f34187k;
            String eventAction = VoipActionType.VOIP_ITEM_CLICK.getEventAction();
            C11640a c11640a = C11640a.this;
            View view2 = c11640a.itemView;
            l.d(view2, "this@VoipContactsItemView.itemView");
            abstractC18905m.mo14327t(new C18900h(eventAction, c11640a, view2, null));
        }
    }

    /* renamed from: e.a.d.d.a.a.a.a$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/a/a$e.class */
    public static final class C11644e extends m implements a<AppCompatImageView> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11644e() {
            super(0);
            C11640a.this = r4;
        }

        public Object invoke() {
            View findViewById = C11640a.this.f34183g.findViewById(2131362018);
            l.d(findViewById, "listItemX.findViewById(R.id.action_secondary)");
            return (AppCompatImageView) findViewById;
        }
    }

    /* renamed from: e.a.d.d.a.a.a.a$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/d/a/a/a/a$f.class */
    public static final class C11645f extends m implements s1.z.b.l<View, s> {

        /* renamed from: c */
        public final /* synthetic */ VoipActionType f34194c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11645f(VoipActionType voipActionType) {
            super(1);
            C11640a.this = r4;
            this.f34194c = voipActionType;
        }

        /* renamed from: d */
        public Object m24325d(Object obj) {
            String eventAction;
            l.e((View) obj, "it");
            VoipActionType voipActionType = this.f34194c;
            if (voipActionType != null && (eventAction = voipActionType.getEventAction()) != null) {
                C11640a c11640a = C11640a.this;
                AbstractC18905m abstractC18905m = c11640a.f34187k;
                View view = c11640a.itemView;
                l.d(view, "this.itemView");
                abstractC18905m.mo14327t(new C18900h(eventAction, c11640a, view, (Object) null, 8));
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11640a(AbstractC18905m abstractC18905m, AbstractC17405c abstractC17405c, AbstractC19222c abstractC19222c, View view) {
        super(view);
        l.e(abstractC18905m, "eventReceiver");
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC19222c, "clock");
        l.e(view, ViewAction.VIEW);
        this.f34187k = abstractC18905m;
        View findViewById = view.findViewById(2131364650);
        l.d(findViewById, "view.findViewById(R.id.list_item)");
        ListItemX listItemX = (ListItemX) findViewById;
        this.f34183g = listItemX;
        Context context = listItemX.getContext();
        l.d(context, "listItemX.context");
        C19235i0 c19235i0 = new C19235i0(context);
        this.f34184h = c19235i0;
        C8243a c8243a = new C8243a(c19235i0);
        this.f34185i = c8243a;
        C17408d c17408d = new C17408d(c19235i0, abstractC17405c, abstractC19222c);
        this.f34186j = c17408d;
        listItemX.setClickable(false);
        listItemX.setAvatarPresenter(c8243a);
        listItemX.setAvailabilityPresenter((C8329a) c17408d);
        listItemX.setOnAvatarClickListener(new C11642c());
        listItemX.setOnClickListener(new View$OnClickListenerC11643d());
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: B */
    public boolean mo9976B() {
        return false;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: F */
    public String mo9975F() {
        return this.f34177a;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* renamed from: N4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m24327N4(com.truecaller.voip.contacts.p188ui.items.contacts.VoipActionType r8) {
        /*
            r7 = this;
            r0 = r7
            com.truecaller.common.ui.listitem.ListItemX r0 = r0.f34183g
            r9 = r0
            r0 = r8
            if (r0 != 0) goto Lc
            goto L1f
        Lc:
            r0 = r8
            int r0 = r0.ordinal()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L34
            r0 = r10
            r1 = 1
            if (r0 == r1) goto L2e
            r0 = r10
            r1 = 2
            if (r0 == r1) goto L24
        L1f:
            r0 = 0
            r10 = r0
            goto L37
        L24:
            com.truecaller.common.ui.listitem.ListItemX$Action r0 = com.truecaller.common.p156ui.listitem.ListItemX.Action.VOICE
            int r0 = r0.getDrawableResId()
            r10 = r0
            goto L37
        L2e:
            r0 = 2131232407(0x7f080697, float:1.8080922E38)
            r10 = r0
            goto L37
        L34:
            r0 = 2131232395(0x7f08068b, float:1.8080898E38)
            r10 = r0
        L37:
            r0 = r9
            r1 = r10
            e.a.d.d.a.a.a.a$f r2 = new e.a.d.d.a.a.a.a$f
            r3 = r2
            r4 = r7
            r5 = r8
            r3.<init>(r5)
            r0.m35647l1(r1, r2)
            r0 = r8
            if (r0 != 0) goto L4c
            goto L96
        L4c:
            r0 = r8
            int r0 = r0.ordinal()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L7b
            r0 = r10
            r1 = 1
            if (r0 == r1) goto L5d
            goto L96
        L5d:
            r0 = r7
            s1.g r0 = r0.f34182f
            java.lang.Object r0 = r0.getValue()
            androidx.appcompat.widget.AppCompatImageView r0 = (androidx.appcompat.widget.AppCompatImageView) r0
            r1 = r7
            s1.g r1 = r1.f34179c
            java.lang.Object r1 = r1.getValue()
            android.content.res.ColorStateList r1 = (android.content.res.ColorStateList) r1
            r0.setImageTintList(r1)
            goto L96
        L7b:
            r0 = r7
            s1.g r0 = r0.f34182f
            java.lang.Object r0 = r0.getValue()
            androidx.appcompat.widget.AppCompatImageView r0 = (androidx.appcompat.widget.AppCompatImageView) r0
            r1 = r7
            s1.g r1 = r1.f34178b
            java.lang.Object r1 = r1.getValue()
            android.content.res.ColorStateList r1 = (android.content.res.ColorStateList) r1
            r0.setImageTintList(r1)
        L96:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p643d.p644a.p645a.p646a.C11640a.m24327N4(com.truecaller.voip.contacts.ui.items.contacts.VoipActionType):void");
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: n */
    public void mo9973n(String str) {
        this.f34177a = str;
    }
}
