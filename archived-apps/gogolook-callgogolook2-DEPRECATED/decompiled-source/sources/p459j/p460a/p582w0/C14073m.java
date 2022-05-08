package p459j.p460a.p582w0;

import android.content.Context;
import android.text.TextUtils;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.DataUserReport;
import gogolook.callgogolook2.realm.obj.block.BlockListRealmObject;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import p459j.p460a.p471b1.p472a.C11507b;
import p459j.p460a.p521j0.p522u.p523d.C12612g0;
import p459j.p460a.p533l.EnumC12874d;
import p459j.p460a.p541n0.C13032a;
import p459j.p460a.p541n0.C13085e;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p567t0.C13625a;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p587d5.C13978e;
import p459j.p460a.p613z0.p617p.C14687h;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.android.schedulers.AndroidSchedulers;
import p660rx.functions.Func1;
/* renamed from: j.a.w0.m */
/* loaded from: classes3-dex2jar.jar:j/a/w0/m.class */
public class C14073m {

    /* renamed from: j.a.w0.m$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/m$a.class */
    public static final class C14074a implements Func1<Boolean, Single<Object>> {

        /* renamed from: a */
        public final /* synthetic */ Context f31537a;

        public C14074a(Context context) {
            this.f31537a = context;
        }

        /* renamed from: a */
        public Single<Object> call(Boolean bool) {
            if (bool.booleanValue()) {
                C14687h.m861a(this.f31537a, C14206w4.m2225a((int) R$string.block_already_saved), 1).m858c();
            }
            return Single.just(null);
        }
    }

    /* renamed from: j.a.w0.m$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/m$b.class */
    public static final class CallableC14075b implements Callable<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ int f31538a;

        /* renamed from: b */
        public final /* synthetic */ String f31539b;

        /* renamed from: c */
        public final /* synthetic */ Context f31540c;

        /* renamed from: d */
        public final /* synthetic */ DataUserReport.Source f31541d;

        /* renamed from: e */
        public final /* synthetic */ boolean f31542e;

        public CallableC14075b(int i, String str, Context context, DataUserReport.Source source, boolean z) {
            this.f31538a = i;
            this.f31539b = str;
            this.f31540c = context;
            this.f31541d = source;
            this.f31542e = z;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            List<BlockListRealmObject> list;
            int i = this.f31538a;
            String l = (i == 2 || i == 3) ? this.f31539b : C14108o4.m2474l(this.f31539b);
            int i2 = this.f31538a;
            boolean z = false;
            if (i2 == 4 || i2 == 5 || i2 == 7) {
                list = C13032a.m4748a(C13193p.m4437a("_type"), C13193p.m4438a(Integer.valueOf(this.f31538a)), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO), null, null);
            } else {
                String[] a = C13193p.m4437a("_e164", "_type");
                Object[] a2 = C13193p.m4438a(l, Integer.valueOf(this.f31538a));
                C13193p.EnumC13194a aVar = C13193p.EnumC13194a.EQUAL_TO;
                list = C13032a.m4748a(a, a2, C13193p.m4439a(aVar, aVar), null, null);
            }
            if (list == null || list.size() <= 0) {
                C13625a.m3819a(this.f31540c, this.f31538a, l, this.f31538a == 3 ? 2 : 3, this.f31539b, "", 0, this.f31541d);
            } else {
                BlockListRealmObject blockListRealmObject = list.get(0);
                int intValue = blockListRealmObject.get_status().intValue();
                String str = blockListRealmObject.get_number();
                boolean z2 = !C14217x3.m2160b(this.f31539b) && !TextUtils.isEmpty(str) && !this.f31539b.equals(str) && C14093n4.m2569f(str) && this.f31538a == 1;
                if (intValue == 2 || z2) {
                    C13625a.m3816a(this.f31540c, this.f31538a, this.f31539b, l, (z2 || this.f31538a != 3) ? 3 : 2, "", this.f31541d);
                } else if (this.f31542e) {
                    z = true;
                }
            }
            return Boolean.valueOf(z);
        }
    }

    /* renamed from: j.a.w0.m$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/m$c.class */
    public static final class C14076c implements Single.OnSubscribe<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f31543a;

        /* renamed from: b */
        public final /* synthetic */ int f31544b;

        /* renamed from: c */
        public final /* synthetic */ String f31545c;

        /* renamed from: d */
        public final /* synthetic */ String f31546d;

        /* renamed from: e */
        public final /* synthetic */ DataUserReport.Source f31547e;

        public C14076c(Context context, int i, String str, String str2, DataUserReport.Source source) {
            this.f31543a = context;
            this.f31544b = i;
            this.f31545c = str;
            this.f31546d = str2;
            this.f31547e = source;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Void> singleSubscriber) {
            C13625a.m3815a(this.f31543a, this.f31544b, this.f31545c, this.f31546d, this.f31547e);
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: j.a.w0.m$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/m$d.class */
    public static final class C14077d implements Single.OnSubscribe<Void> {

        /* renamed from: a */
        public final /* synthetic */ Context f31548a;

        /* renamed from: b */
        public final /* synthetic */ int f31549b;

        /* renamed from: c */
        public final /* synthetic */ String f31550c;

        /* renamed from: d */
        public final /* synthetic */ String f31551d;

        /* renamed from: e */
        public final /* synthetic */ int f31552e;

        /* renamed from: f */
        public final /* synthetic */ String f31553f;

        /* renamed from: g */
        public final /* synthetic */ DataUserReport.Source f31554g;

        public C14077d(Context context, int i, String str, String str2, int i2, String str3, DataUserReport.Source source) {
            this.f31548a = context;
            this.f31549b = i;
            this.f31550c = str;
            this.f31551d = str2;
            this.f31552e = i2;
            this.f31553f = str3;
            this.f31554g = source;
        }

        /* renamed from: a */
        public void call(SingleSubscriber<? super Void> singleSubscriber) {
            C13625a.m3816a(this.f31548a, this.f31549b, this.f31550c, this.f31551d, this.f31552e, this.f31553f, this.f31554g);
            singleSubscriber.onSuccess(null);
        }
    }

    /* renamed from: a */
    public static int m2628a(Map<EnumC12874d, String> map) {
        if (map == null || map.isEmpty() || !map.containsKey(EnumC12874d.TYPE) || TextUtils.isEmpty(map.get(EnumC12874d.TYPE))) {
            return 0;
        }
        try {
            return Integer.valueOf(map.get(EnumC12874d.TYPE)).intValue();
        } catch (NumberFormatException e) {
            return 0;
        }
    }

    /* renamed from: a */
    public static /* synthetic */ C14989s m2632a(int i, C11507b.C11508a aVar) {
        aVar.m9450a("block_history_count", C13978e.f31386a.m9461a("block_history_count", (Integer) 0) + i);
        aVar.m9448a("block_history_newest_time", C14123p4.m2420d(System.currentTimeMillis()));
        return null;
    }

    /* renamed from: a */
    public static Single<Void> m2631a(Context context, int i, String str, String str2, int i2, String str3, DataUserReport.Source source) {
        return Single.create(new C14077d(context, i, str, str2, i2, str3, source)).subscribeOn(C14174u.m2298f());
    }

    /* renamed from: a */
    public static Single<Void> m2630a(Context context, int i, String str, String str2, DataUserReport.Source source) {
        return Single.create(new C14076c(context, i, str, str2, source)).subscribeOn(C14174u.m2298f());
    }

    /* renamed from: a */
    public static Single<Object> m2629a(Context context, String str, int i, boolean z, DataUserReport.Source source) {
        return Single.fromCallable(new CallableC14075b(i, str, context, source, z)).subscribeOn(C14174u.m2298f()).observeOn(AndroidSchedulers.mainThread()).flatMap(new C14074a(context));
    }

    /* renamed from: a */
    public static void m2633a(final int i) {
        C13978e.f31386a.m9457a(new AbstractC15118l() { // from class: j.a.w0.a
            @Override // p626l.p641z.p642c.AbstractC15118l
            public final Object invoke(Object obj) {
                return C14073m.m2632a(i, (C11507b.C11508a) obj);
            }
        });
    }

    /* renamed from: a */
    public static boolean m2634a() {
        boolean z = false;
        if (C14063l4.m2701A()) {
            List<BlockListRealmObject> a = C13032a.m4748a(C13193p.m4437a("_status", "_type"), C13193p.m4438a(2, 8), C13193p.m4439a(C13193p.EnumC13194a.NOT_EQUAL_TO, C13193p.EnumC13194a.EQUAL_TO), null, null);
            z = false;
            if (a != null) {
                z = false;
                if (!a.isEmpty()) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m2627b() {
        boolean z = false;
        if (C13915b3.m3062a("pref_block_other_ddd", false)) {
            z = false;
            if (!m2621g()) {
                z = false;
                if (!m2620h()) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static boolean m2626b(int i) {
        return (i == 8 || i == 4 || i == 5 || i == 7) ? false : true;
    }

    /* renamed from: c */
    public static boolean m2625c() {
        return m2622f() && C14015g2.m2838e();
    }

    /* renamed from: d */
    public static boolean m2624d() {
        return m2622f() && (!C13085e.m4634e() || m2625c());
    }

    /* renamed from: e */
    public static boolean m2623e() {
        return m2622f() && C13085e.m4634e();
    }

    /* renamed from: f */
    public static boolean m2622f() {
        return C13891a.m3147o();
    }

    /* renamed from: g */
    public static boolean m2621g() {
        return !C12612g0.m5766k() && !C12612g0.m5755v();
    }

    /* renamed from: h */
    public static boolean m2620h() {
        return C12612g0.m5755v() && !C12612g0.m5764m() && !C12612g0.m5763n();
    }
}
