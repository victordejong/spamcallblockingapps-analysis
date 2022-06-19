package p193e.p194a.p437c.p598v.p603h;

import android.content.BroadcastReceiver;
import com.truecaller.insights.C4030R;
import com.truecaller.insights.reminders.receiver.BillReminderReceiver;
import p193e.p194a.p437c.p598v.p602g.AbstractC10727e;
import s1.z.c.f;
/* renamed from: e.a.c.v.h.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/v/h/e.class */
public abstract class AbstractC10738e {

    /* renamed from: e.a.c.v.h.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/v/h/e$a.class */
    public static final class C10739a extends AbstractC10738e {

        /* renamed from: c */
        public static final C10739a f31897c = new C10739a();

        /* renamed from: a */
        public static final Class<? extends BroadcastReceiver> f31895a = BillReminderReceiver.class;

        /* renamed from: b */
        public static final int f31896b = C4030R.C4032id.infoRightTitle;

        public C10739a() {
            super(null);
        }

        @Override // p193e.p194a.p437c.p598v.p603h.AbstractC10738e
        /* renamed from: a */
        public int mo25677a() {
            return f31896b;
        }

        @Override // p193e.p194a.p437c.p598v.p603h.AbstractC10738e
        /* renamed from: b */
        public AbstractC10727e mo25676b() {
            return AbstractC10727e.C10728a.f31885a;
        }

        @Override // p193e.p194a.p437c.p598v.p603h.AbstractC10738e
        /* renamed from: c */
        public Class<? extends BroadcastReceiver> mo25675c() {
            return f31895a;
        }

        public String toString() {
            return "BILL";
        }
    }

    public AbstractC10738e() {
    }

    public AbstractC10738e(f fVar) {
    }

    /* renamed from: a */
    public abstract int mo25677a();

    /* renamed from: b */
    public abstract AbstractC10727e mo25676b();

    /* renamed from: c */
    public abstract Class<? extends BroadcastReceiver> mo25675c();
}
