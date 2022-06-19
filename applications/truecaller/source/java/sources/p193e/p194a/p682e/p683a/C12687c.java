package p193e.p194a.p682e.p683a;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import java.util.Calendar;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.q;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC16444k2;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6249x;
import p193e.p194a.p372b0.p430q.C8582g0;
import p193e.p194a.p935j0.AbstractC15515b;
import p193e.p194a.p935j0.C15516c;
import p193e.p194a.p935j0.C15518e;
import p193e.p194a.p935j0.C15528i;
import p193e.p194a.p935j0.C15530k;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bB\u0010CJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\f\u0010\rJ!\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0017¢\u0006\u0004\b\u000f\u0010\u0010J\u001b\u0010\u0013\u001a\u00020\u00112\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u001b\u0010\u0016\u001a\u00020\u00112\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0016\u0010\u0014R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u001d\u0010!\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0019\u001a\u0004\b\u001f\u0010 R\u001d\u0010&\u001a\u00020\"8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b#\u0010\u0019\u001a\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8��@��X\u0081.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001d\u00101\u001a\u00020\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010\u0019\u001a\u0004\b0\u0010 R\"\u00109\u001a\u0002028��@��X\u0081.¢\u0006\u0012\n\u0004\b3\u00104\u001a\u0004\b5\u00106\"\u0004\b7\u00108R\"\u0010A\u001a\u00020:8��@��X\u0081.¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@¨\u0006D"}, d2 = {"Le/a/e/a/c;", "Ln3/b/a/q;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "transport", "QA", "(Ljava/lang/Integer;)I", "type", "PA", "Le/a/j0/b;", "g", "Ls1/g;", "getCallingStatsFetcher", "()Le/a/j0/b;", "callingStatsFetcher", "", "e", "getEndTimeMs", "()J", "endTimeMs", "Le/a/j0/j;", "f", "getMessagingStatsFetcher", "()Le/a/j0/j;", "messagingStatsFetcher", "Le/a/a/g/x;", AbstractC2405c.f7629a, "Le/a/a/g/x;", "getSelectionProvider$truecaller_googlePlayRelease", "()Le/a/a/g/x;", "setSelectionProvider$truecaller_googlePlayRelease", "(Le/a/a/g/x;)V", "selectionProvider", "d", "getStartTimeMs", "startTimeMs", "Le/a/a/i0;", "a", "Le/a/a/i0;", "getMessageSettings$truecaller_googlePlayRelease", "()Le/a/a/i0;", "setMessageSettings$truecaller_googlePlayRelease", "(Le/a/a/i0;)V", "messageSettings", "Landroid/content/ContentResolver;", C22021b.f61237c, "Landroid/content/ContentResolver;", "getContentResolver$truecaller_googlePlayRelease", "()Landroid/content/ContentResolver;", "setContentResolver$truecaller_googlePlayRelease", "(Landroid/content/ContentResolver;)V", "contentResolver", "<init>", "()V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.c */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/c.class */
public final class C12687c extends q {

    /* renamed from: h */
    public static final /* synthetic */ int f36968h = 0;
    @Inject

    /* renamed from: a */
    public AbstractC6392i0 f36969a;
    @Inject

    /* renamed from: b */
    public ContentResolver f36970b;
    @Inject

    /* renamed from: c */
    public AbstractC6249x f36971c;

    /* renamed from: d */
    public final g f36972d = C25225a.m3978P1(C12688a.f36977d);

    /* renamed from: e */
    public final g f36973e = C25225a.m3978P1(C12688a.f36976c);

    /* renamed from: f */
    public final g f36974f = C25225a.m3978P1(new C12690c());

    /* renamed from: g */
    public final g f36975g = C25225a.m3978P1(new C12689b());

    /* renamed from: e.a.e.a.c$a */
    /* loaded from: classes5-dex2jar.jar:e/a/e/a/c$a.class */
    public static final class C12688a extends m implements a<Long> {

        /* renamed from: c */
        public static final C12688a f36976c = new C12688a(0);

        /* renamed from: d */
        public static final C12688a f36977d = new C12688a(1);

        /* renamed from: b */
        public final /* synthetic */ int f36978b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12688a(int i) {
            super(0);
            this.f36978b = i;
        }

        public final Object invoke() {
            int i = this.f36978b;
            if (i == 0) {
                Calendar calendar = Calendar.getInstance();
                calendar.set(1, 2020);
                calendar.set(2, 11);
                calendar.set(5, 31);
                l.d(calendar, "calendar");
                return Long.valueOf(calendar.getTimeInMillis());
            } else if (i != 1) {
                throw null;
            } else {
                Calendar calendar2 = Calendar.getInstance();
                calendar2.set(1, 2020);
                calendar2.set(6, 1);
                l.d(calendar2, "calendar");
                return Long.valueOf(calendar2.getTimeInMillis());
            }
        }
    }

    /* renamed from: e.a.e.a.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/c$b.class */
    public static final class C12689b extends m implements a<C15516c> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12689b() {
            super(0);
            C12687c.this = r4;
        }

        public Object invoke() {
            ContentResolver contentResolver = C12687c.this.f36970b;
            if (contentResolver != null) {
                return new C15516c(new C15518e(contentResolver), ((Number) C12687c.this.f36972d.getValue()).longValue(), ((Number) C12687c.this.f36973e.getValue()).longValue());
            }
            l.l("contentResolver");
            throw null;
        }
    }

    /* renamed from: e.a.e.a.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/c$c.class */
    public static final class C12690c extends m implements a<C15530k> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12690c() {
            super(0);
            C12687c.this = r4;
        }

        public Object invoke() {
            C12687c c12687c = C12687c.this;
            ContentResolver contentResolver = c12687c.f36970b;
            if (contentResolver == null) {
                l.l("contentResolver");
                throw null;
            }
            long longValue = ((Number) c12687c.f36972d.getValue()).longValue();
            long longValue2 = ((Number) C12687c.this.f36973e.getValue()).longValue();
            C12687c c12687c2 = C12687c.this;
            AbstractC6249x abstractC6249x = c12687c2.f36971c;
            if (abstractC6249x == null) {
                l.l("selectionProvider");
                throw null;
            }
            AbstractC6392i0 abstractC6392i0 = c12687c2.f36969a;
            if (abstractC6392i0 != null) {
                return new C15530k(contentResolver, longValue, longValue2, abstractC6249x, abstractC6392i0);
            }
            l.l("messageSettings");
            throw null;
        }
    }

    @e(c = "com.truecaller.ui.dialogs.QaDataStatsDialog$onViewCreated$1", f = "QaDataStatsDialog.kt", l = {107, 108}, m = "invokeSuspend")
    /* renamed from: e.a.e.a.c$d */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/c$d.class */
    public static final class C12691d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f36981e;

        /* renamed from: f */
        public Object f36982f;

        /* renamed from: g */
        public int f36983g;

        /* renamed from: h */
        public int f36984h;

        /* renamed from: i */
        public int f36985i;

        /* renamed from: j */
        public int f36986j;

        /* renamed from: k */
        public int f36987k;

        /* renamed from: l */
        public int f36988l;

        /* renamed from: m */
        public int f36989m;

        /* renamed from: n */
        public int f36990n;

        /* renamed from: o */
        public int f36991o;

        /* renamed from: p */
        public int f36992p;

        /* renamed from: q */
        public int f36993q;

        /* renamed from: r */
        public int f36994r;

        /* renamed from: s */
        public int f36995s;

        /* renamed from: t */
        public int f36996t;

        /* renamed from: v */
        public final /* synthetic */ View f36998v;

        @e(c = "com.truecaller.ui.dialogs.QaDataStatsDialog$onViewCreated$1$1", f = "QaDataStatsDialog.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.e.a.c$d$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/a/c$d$a.class */
        public static final class C12692a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: f */
            public final /* synthetic */ int f37000f;

            /* renamed from: g */
            public final /* synthetic */ int f37001g;

            /* renamed from: h */
            public final /* synthetic */ int f37002h;

            /* renamed from: i */
            public final /* synthetic */ int f37003i;

            /* renamed from: j */
            public final /* synthetic */ int f37004j;

            /* renamed from: k */
            public final /* synthetic */ int f37005k;

            /* renamed from: l */
            public final /* synthetic */ int f37006l;

            /* renamed from: m */
            public final /* synthetic */ int f37007m;

            /* renamed from: n */
            public final /* synthetic */ int f37008n;

            /* renamed from: o */
            public final /* synthetic */ int f37009o;

            /* renamed from: p */
            public final /* synthetic */ int f37010p;

            /* renamed from: q */
            public final /* synthetic */ boolean f37011q;

            /* renamed from: r */
            public final /* synthetic */ int f37012r;

            /* renamed from: s */
            public final /* synthetic */ C15528i f37013s;

            /* renamed from: t */
            public final /* synthetic */ Integer f37014t;

            /* renamed from: u */
            public final /* synthetic */ Integer f37015u;

            /* renamed from: v */
            public final /* synthetic */ Integer f37016v;

            /* renamed from: w */
            public final /* synthetic */ Contact f37017w;

            /* renamed from: x */
            public final /* synthetic */ String f37018x;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12692a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, boolean z, int i12, C15528i c15528i, Integer num, Integer num2, Integer num3, Contact contact, String str, d dVar) {
                super(2, dVar);
                C12691d.this = r5;
                this.f37000f = i;
                this.f37001g = i2;
                this.f37002h = i3;
                this.f37003i = i4;
                this.f37004j = i5;
                this.f37005k = i6;
                this.f37006l = i7;
                this.f37007m = i8;
                this.f37008n = i9;
                this.f37009o = i10;
                this.f37010p = i11;
                this.f37011q = z;
                this.f37012r = i12;
                this.f37013s = c15528i;
                this.f37014t = num;
                this.f37015u = num2;
                this.f37016v = num3;
                this.f37017w = contact;
                this.f37018x = str;
            }

            /* renamed from: i */
            public final d<s> m22745i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C12692a(this.f37000f, this.f37001g, this.f37002h, this.f37003i, this.f37004j, this.f37005k, this.f37006l, this.f37007m, this.f37008n, this.f37009o, this.f37010p, this.f37011q, this.f37012r, this.f37013s, this.f37014t, this.f37015u, this.f37016v, this.f37017w, this.f37018x, dVar);
            }

            /* renamed from: k */
            public final Object m22744k(Object obj, Object obj2) {
                C12692a m22745i = m22745i(obj, (d) obj2);
                s sVar = s.a;
                m22745i.m22743s(sVar);
                return sVar;
            }

            /* renamed from: s */
            public final Object m22743s(Object obj) {
                C25225a.m3932a3(obj);
                View findViewById = C12691d.this.f36998v.findViewById(C2752R.C2754id.statsView);
                l.d(findViewById, "view.findViewById<TextView>(R.id.statsView)");
                TextView textView = (TextView) findViewById;
                StringBuilder m8728C = C22128a.m8728C("\nMessages: ");
                m8728C.append(this.f37000f);
                m8728C.append("\n    •SMS: ");
                m8728C.append(this.f37001g);
                m8728C.append(" \n    •Backup SMS: ");
                m8728C.append(this.f37002h);
                m8728C.append(" \n    •Backup MMS: ");
                m8728C.append(this.f37003i);
                m8728C.append(" \n    •History: ");
                m8728C.append(this.f37004j);
                m8728C.append(" \n    •MMS: ");
                m8728C.append(this.f37005k);
                m8728C.append(" \n    •IM: ");
                m8728C.append(this.f37006l);
                m8728C.append("\n    •Status: ");
                m8728C.append(this.f37007m);
                m8728C.append("\n                          \nConversations: ");
                m8728C.append(this.f37008n);
                m8728C.append(" \n    •Shortcode/Alphanumeric: ");
                m8728C.append(this.f37009o);
                m8728C.append(" \n    •Groups: ");
                m8728C.append(this.f37010p);
                m8728C.append("\n      \nMessages sync completed: ");
                m8728C.append(this.f37011q);
                m8728C.append("  \n      \nContacts: ");
                m8728C.append(this.f37012r);
                m8728C.append("\n\n    Year in TC 2020:\ntotal messages: ");
                m8728C.append(this.f37013s.f43981a);
                m8728C.append("\nmessages received: ");
                m8728C.append(this.f37013s.f43983c);
                m8728C.append("\nmessages sent: ");
                m8728C.append(this.f37013s.f43982b);
                m8728C.append("\nchat messages vs SMS/MMS: ");
                m8728C.append(this.f37013s.f43984d);
                m8728C.append(" vs ");
                m8728C.append(this.f37013s.f43985e);
                m8728C.append("\ngif exchanged: ");
                m8728C.append(this.f37013s.f43986f);
                m8728C.append("\nspam messages: ");
                m8728C.append(this.f37014t);
                m8728C.append("\n\n    Calling \nincoming calls: ");
                m8728C.append(this.f37015u);
                m8728C.append("\noutgoing calls: ");
                m8728C.append(this.f37016v);
                m8728C.append("\ntop called contact: ");
                Contact contact = this.f37017w;
                m8728C.append(contact != null ? contact.m35566G() : null);
                m8728C.append("\nmost frequent call period: ");
                m8728C.append(this.f37018x);
                m8728C.append('\n');
                textView.setText(m8728C.toString());
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12691d(View view, d dVar) {
            super(2, dVar);
            C12687c.this = r5;
            this.f36998v = view;
        }

        /* renamed from: i */
        public final d<s> m22748i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12691d c12691d = new C12691d(this.f36998v, dVar);
            c12691d.f36981e = obj;
            return c12691d;
        }

        /* renamed from: k */
        public final Object m22747k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C12691d c12691d = new C12691d(this.f36998v, dVar);
            c12691d.f36981e = obj;
            return c12691d.m22746s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:46:0x03b7  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x03ca  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x03e3  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x03e9  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m22746s(java.lang.Object r28) {
            /*
                Method dump skipped, instructions count: 1072
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p683a.C12687c.C12691d.m22746s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: OA */
    public static final AbstractC15515b m22751OA(C12687c c12687c) {
        return (AbstractC15515b) c12687c.f36975g.getValue();
    }

    /* renamed from: PA */
    public final int m22750PA(Integer num) {
        Cursor cursor;
        ContentResolver contentResolver;
        Context context = getContext();
        if (context == null || (contentResolver = context.getContentResolver()) == null) {
            cursor = null;
        } else {
            cursor = contentResolver.query(C17891a1.C17897f.m15702a(), new String[]{"COUNT(*)"}, num != null ? "type = " + num : null, null, null);
        }
        int i = 0;
        if (cursor != null) {
            try {
                cursor.moveToFirst();
                i = cursor.getInt(0);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        C25225a.m4016G(cursor, null);
        return i;
    }

    /* renamed from: QA */
    public final int m22749QA(Integer num) {
        Cursor cursor;
        ContentResolver contentResolver;
        Context context = getContext();
        if (context == null || (contentResolver = context.getContentResolver()) == null) {
            cursor = null;
        } else {
            cursor = contentResolver.query(num != null ? C8582g0.m28305o(num.intValue()) : C8582g0.m28295y(), new String[]{"COUNT(*)"}, null, null, null);
        }
        int i = 0;
        if (cursor != null) {
            try {
                cursor.moveToFirst();
                i = cursor.getInt(0);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
        C25225a.m4016G(cursor, null);
        return i;
    }

    public void onCreate(Bundle bundle) {
        C12687c.super.onCreate(bundle);
        AbstractC16444k2.f46188a.m17389a().mo11382k(this);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return layoutInflater.inflate(C2752R.layout.dialog_qa_stats, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        C12687c.super.onViewCreated(view, bundle);
        View findViewById = view.findViewById(C2752R.C2754id.statsView);
        l.d(findViewById, "view.findViewById<TextView>(R.id.statsView)");
        ((TextView) findViewById).setText("Loading...");
        s1.a.a.a.v0.f.d.w2(h1.a, C18334g0.m15209q(getContext()).mo12793B1(), (j0) null, new C12691d(view, null), 2, (Object) null);
    }
}
