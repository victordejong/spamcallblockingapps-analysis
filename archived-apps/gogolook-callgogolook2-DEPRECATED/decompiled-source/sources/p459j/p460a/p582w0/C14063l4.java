package p459j.p460a.p582w0;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.mopub.common.AdType;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.developmode.LogManager;
import gogolook.callgogolook2.gson.IapPushConfig;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.iap.p076ui.IapActivity;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.realm.obj.whitelist.WhiteListRealmObject;
import gogolook.callgogolook2.share.ReferralActivity;
import gogolook.callgogolook2.view.SimpleInAppDialog;
import io.realm.Realm;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p160h.p179e.p180a.C6334a;
import p081h.p160h.p179e.p180a.p186m.AbstractC6377c;
import p081h.p160h.p179e.p180a.p186m.AbstractC6378d;
import p081h.p160h.p179e.p180a.p190p.C6429b;
import p081h.p203i.p316b.p318b.AbstractC9328j;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.C10108n;
import p459j.p460a.p515i0.p516a.C12419d;
import p459j.p460a.p515i0.p516a.C12430i;
import p459j.p460a.p515i0.p516a.C12436l;
import p459j.p460a.p515i0.p516a.C12439m;
import p459j.p460a.p541n0.C13193p;
import p459j.p460a.p541n0.C13217t;
import p459j.p460a.p564s.C13419b0;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.p583a5.C13891a;
import p459j.p460a.p582w0.p587d5.C13978e;
/* renamed from: j.a.w0.l4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/l4.class */
public class C14063l4 {

    /* renamed from: j.a.w0.l4$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/l4$a.class */
    public static final class C14064a extends AbstractC6378d {

        /* renamed from: a */
        public final /* synthetic */ C14067d f31514a;

        /* renamed from: b */
        public final /* synthetic */ boolean f31515b;

        public C14064a(C14067d dVar, boolean z) {
            this.f31514a = dVar;
            this.f31515b = z;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) throws Exception {
            this.f31514a.m2636e();
            if (i != 200 || !C12419d.m6199n()) {
                this.f31514a.m2637d();
                return;
            }
            C14063l4.m2691K();
            C12419d.m6218a(this.f31514a, this.f31515b);
        }
    }

    /* renamed from: j.a.w0.l4$b */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/l4$b.class */
    public static final class C14065b extends AbstractC6378d {

        /* renamed from: a */
        public final /* synthetic */ C14067d f31516a;

        /* renamed from: b */
        public final /* synthetic */ boolean f31517b;

        public C14065b(C14067d dVar, boolean z) {
            this.f31516a = dVar;
            this.f31517b = z;
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6378d
        /* renamed from: a */
        public void mo1272a(int i, JSONObject jSONObject) {
            this.f31516a.m2636e();
            if (i != 200 || !C12436l.m6164k()) {
                this.f31516a.m2637d();
                return;
            }
            C14063l4.m2691K();
            C12436l.m6176a(this.f31516a, this.f31517b);
        }
    }

    /* renamed from: j.a.w0.l4$c */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/l4$c.class */
    public static final class View$OnClickListenerC14066c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ Context f31518a;

        public View$OnClickListenerC14066c(Context context) {
            this.f31518a = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Context context = this.f31518a;
            context.startActivity(new Intent(context, ReferralActivity.class));
        }
    }

    /* renamed from: j.a.w0.l4$d */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/l4$d.class */
    public static class C14067d extends AbstractC6377c {

        /* renamed from: a */
        public AbstractC6377c f31519a;

        /* renamed from: b */
        public C14068a f31520b;

        /* renamed from: c */
        public int f31521c;

        /* renamed from: j.a.w0.l4$d$a */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/l4$d$a.class */
        public static class C14068a {

            /* renamed from: a */
            public final Object f31522a = new Object();

            /* renamed from: b */
            public final C14070b[] f31523b = new C14070b[EnumC14071b.f31535c];

            /* renamed from: j.a.w0.l4$d$a$a */
            /* loaded from: classes3-dex2jar.jar:j/a/w0/l4$d$a$a.class */
            public enum EnumC14069a {
                OK,
                ERROR,
                CANCEL
            }

            /* renamed from: j.a.w0.l4$d$a$b */
            /* loaded from: classes3-dex2jar.jar:j/a/w0/l4$d$a$b.class */
            public class C14070b {

                /* renamed from: a */
                public boolean f31528a;

                /* renamed from: b */
                public boolean f31529b;

                /* renamed from: c */
                public boolean f31530c;

                /* renamed from: d */
                public EnumC14069a f31531d;

                /* renamed from: e */
                public int f31532e;

                public C14070b(C14068a aVar) {
                    this.f31528a = false;
                    this.f31529b = false;
                    this.f31530c = false;
                    this.f31531d = null;
                    this.f31532e = 0;
                }

                public /* synthetic */ C14070b(C14068a aVar, DialogInterface$OnClickListenerC14055k4 k4Var) {
                    this(aVar);
                }
            }

            public C14068a() {
                for (int i = 0; i < EnumC14071b.f31535c; i++) {
                    this.f31523b[i] = new C14070b(this, null);
                }
            }
        }

        /* renamed from: j.a.w0.l4$d$b */
        /* loaded from: classes3-dex2jar.jar:j/a/w0/l4$d$b.class */
        public enum EnumC14071b {
            COMMON,
            PERSONAL;
            

            /* renamed from: c */
            public static final int f31535c = values().length;
        }

        public C14067d(AbstractC6377c cVar, @NonNull C14068a aVar, @NonNull EnumC14071b bVar) {
            this.f31519a = null;
            this.f31520b = null;
            this.f31521c = -1;
            this.f31519a = cVar;
            this.f31520b = aVar;
            this.f31521c = bVar.ordinal();
        }

        public /* synthetic */ C14067d(AbstractC6377c cVar, C14068a aVar, EnumC14071b bVar, DialogInterface$OnClickListenerC14055k4 k4Var) {
            this(cVar, aVar, bVar);
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1446a() {
            synchronized (this.f31520b.f31522a) {
                this.f31520b.f31523b[this.f31521c].f31530c = true;
                this.f31520b.f31523b[this.f31521c].f31531d = C14068a.EnumC14069a.CANCEL;
                m2638b(null);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1445a(int i) {
            C14068a.C14070b[] bVarArr;
            this.f31520b.f31523b[this.f31521c].f31532e = i;
            int i2 = 0;
            int i3 = 0;
            while (true) {
                bVarArr = this.f31520b.f31523b;
                if (i2 >= bVarArr.length) {
                    break;
                }
                i3 += bVarArr[i2].f31532e;
                i2++;
            }
            AbstractC6377c cVar = this.f31519a;
            if (cVar != null) {
                cVar.mo1445a(i3 / bVarArr.length);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1444a(C6429b bVar) {
            synchronized (this.f31520b.f31522a) {
                this.f31520b.f31523b[this.f31521c].f31530c = true;
                this.f31520b.f31523b[this.f31521c].f31531d = C14068a.EnumC14069a.ERROR;
                m2638b(bVar);
            }
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: b */
        public void mo1443b() {
            synchronized (this.f31520b.f31522a) {
                this.f31520b.f31523b[this.f31521c].f31530c = true;
                this.f31520b.f31523b[this.f31521c].f31531d = C14068a.EnumC14069a.OK;
                m2638b(null);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
            r0 = r4.f31520b.f31523b;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x003d, code lost:
            if (r9 >= r0.length) goto L_0x0073;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x004b, code lost:
            if (p459j.p460a.p582w0.C14063l4.C14067d.C14068a.EnumC14069a.f31525b != r0[r9].f31531d) goto L_0x0057;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
            r4.f31519a.mo1444a(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0062, code lost:
            if (p459j.p460a.p582w0.C14063l4.C14067d.C14068a.EnumC14069a.f31526c != r0[r9].f31531d) goto L_0x006d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
            r4.f31519a.mo1446a();
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
            r9 = r9 + 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0073, code lost:
            r4.f31519a.mo1443b();
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x007a, code lost:
            return;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void m2638b(p081h.p160h.p179e.p180a.p190p.C6429b r5) {
            /*
                r4 = this;
                r0 = r4
                h.h.e.a.m.c r0 = r0.f31519a
                if (r0 == 0) goto L_0x007a
                r0 = 0
                r6 = r0
                r0 = 0
                r7 = r0
            L_0x000b:
                r0 = r4
                j.a.w0.l4$d$a r0 = r0.f31520b
                j.a.w0.l4$d$a$b[] r0 = r0.f31523b
                r8 = r0
                r0 = r6
                r9 = r0
                r0 = r7
                r1 = r8
                int r1 = r1.length
                if (r0 >= r1) goto L_0x002f
                r0 = r8
                r1 = r7
                r0 = r0[r1]
                boolean r0 = r0.f31530c
                if (r0 != 0) goto L_0x0029
                return
            L_0x0029:
                int r7 = r7 + 1
                goto L_0x000b
            L_0x002f:
                r0 = r4
                j.a.w0.l4$d$a r0 = r0.f31520b
                j.a.w0.l4$d$a$b[] r0 = r0.f31523b
                r8 = r0
                r0 = r9
                r1 = r8
                int r1 = r1.length
                if (r0 >= r1) goto L_0x0073
                j.a.w0.l4$d$a$a r0 = p459j.p460a.p582w0.C14063l4.C14067d.C14068a.EnumC14069a.ERROR
                r1 = r8
                r2 = r9
                r1 = r1[r2]
                j.a.w0.l4$d$a$a r1 = r1.f31531d
                if (r0 != r1) goto L_0x0057
                r0 = r4
                h.h.e.a.m.c r0 = r0.f31519a
                r1 = r5
                r0.mo1444a(r1)
                return
            L_0x0057:
                j.a.w0.l4$d$a$a r0 = p459j.p460a.p582w0.C14063l4.C14067d.C14068a.EnumC14069a.CANCEL
                r1 = r8
                r2 = r9
                r1 = r1[r2]
                j.a.w0.l4$d$a$a r1 = r1.f31531d
                if (r0 != r1) goto L_0x006d
                r0 = r4
                h.h.e.a.m.c r0 = r0.f31519a
                r0.mo1446a()
                return
            L_0x006d:
                int r9 = r9 + 1
                goto L_0x002f
            L_0x0073:
                r0 = r4
                h.h.e.a.m.c r0 = r0.f31519a
                r0.mo1443b()
            L_0x007a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14063l4.C14067d.m2638b(h.h.e.a.p.b):void");
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: c */
        public void mo1442c() {
            synchronized (this.f31520b.f31522a) {
                for (int i = 0; i < this.f31520b.f31523b.length; i++) {
                    if (this.f31520b.f31523b[i].f31529b) {
                        return;
                    }
                }
                this.f31520b.f31523b[this.f31521c].f31529b = true;
                if (this.f31519a != null) {
                    this.f31519a.mo1442c();
                }
            }
        }

        /* renamed from: d */
        public void m2637d() {
            mo1442c();
            mo1445a(100);
            mo1443b();
        }

        /* renamed from: e */
        public void m2636e() {
            synchronized (this.f31520b.f31522a) {
                for (int i = 0; i < this.f31520b.f31523b.length; i++) {
                    if (this.f31520b.f31523b[i].f31528a) {
                        return;
                    }
                }
                this.f31520b.f31523b[this.f31521c].f31528a = true;
                if (this.f31519a instanceof AbstractC14072e) {
                    ((AbstractC14072e) this.f31519a).mo2635d();
                }
            }
        }
    }

    /* renamed from: j.a.w0.l4$e */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/l4$e.class */
    public static abstract class AbstractC14072e extends AbstractC6377c {
        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1446a() {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1445a(int i) {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: a */
        public void mo1444a(C6429b bVar) {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: b */
        public void mo1443b() {
        }

        @Override // p081h.p160h.p179e.p180a.p186m.AbstractC6377c
        /* renamed from: c */
        public void mo1442c() {
        }

        /* renamed from: d */
        public void mo2635d() {
        }
    }

    /* renamed from: A */
    public static boolean m2701A() {
        return C12419d.m6200m() || C12436l.m6165j();
    }

    /* renamed from: B */
    public static boolean m2700B() {
        int J = m2692J();
        return C12419d.m6200m() && J >= 2 && J <= 4;
    }

    /* renamed from: C */
    public static boolean m2699C() {
        return !C12419d.m6200m() || m2692J() > 4;
    }

    /* renamed from: D */
    public static boolean m2698D() {
        return !m2697E() && C14320y3.m1586j() && C13640c.m3745d().m3753a("personaldb_enable");
    }

    /* renamed from: E */
    public static boolean m2697E() {
        return C14017g4.m2831E() || m2695G() || m2646s() > 0;
    }

    /* renamed from: F */
    public static boolean m2696F() {
        return C14015g2.m2840c();
    }

    /* renamed from: G */
    public static boolean m2695G() {
        return C14015g2.m2839d();
    }

    /* renamed from: H */
    public static boolean m2694H() {
        boolean z = false;
        if (C14021h2.m2779g()) {
            return false;
        }
        int m = m2652m() + 1;
        try {
            IapPushConfig iapPushConfig = (IapPushConfig) new C10099e().m13388a().m30982a(C13640c.m3745d().m3744d("offline_db_outdated_push_iap_show_time"), (Class<Object>) IapPushConfig.class);
            if (iapPushConfig == null) {
                return false;
            }
            int a = iapPushConfig.m28423a();
            int b = iapPushConfig.m28422b();
            if ((b != 0 && (m - a) % b == 0) || a == m) {
                z = true;
            }
            return z;
        } catch (C10108n e) {
            return false;
        } catch (Exception e2) {
            C14080m2.m2612a((Throwable) e2);
            return false;
        }
    }

    /* renamed from: I */
    public static void m2693I() {
        if (m2697E() && !C13978e.f31386a.m9463a("offline_db_update_rule")) {
            C13978e.f31386a.m9459a("offline_db_update_rule", (String) Integer.valueOf(C6334a.m23211s().m23253a("prefs_offlinedb_update_rule", 1)));
        }
    }

    /* renamed from: J */
    public static int m2692J() {
        int e = C12419d.m6208e();
        int g = C12419d.m6206g();
        int i = e;
        int i2 = g;
        if (C13565v.m3921g().m23335b()) {
            i = e;
            i2 = g;
            if (C13419b0.m4060a()) {
                i = C13419b0.m4056b(true);
                i2 = C13419b0.m4056b(false);
            }
        }
        return i2 - i;
    }

    /* renamed from: K */
    public static void m2691K() {
        C13915b3.m3057b("offlinedb_lastupdate_time", System.currentTimeMillis());
    }

    /* renamed from: a */
    public static int m2690a() {
        return m2697E() ? 1 : 0;
    }

    /* renamed from: a */
    public static String m2689a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static String m2682a(String str) {
        if (!C14108o4.m2475k(str)) {
            return C13992e4.m2924a(str);
        }
        try {
            str = C14108o4.m2474l(str).replace("+", "");
        } catch (Exception e) {
            C13973d4.m2952a(new Exception("UtilsOfflineDb.getHashedNumber, number=" + str, e));
        }
        return C13992e4.m2924a(str);
    }

    @NonNull
    /* renamed from: a */
    public static JSONObject m2680a(@NonNull String str, @NonNull String str2, @NonNull String str3) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", "NEWSFEED");
        jSONObject.put("title", str);
        jSONObject.put("message", str2);
        jSONObject.put("link", str3);
        return jSONObject;
    }

    @NonNull
    /* renamed from: a */
    public static JSONObject m2679a(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull String str4, @NonNull String str5) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("type", "NAVIGATION");
        jSONObject.put("title", str);
        jSONObject.put("message", str2);
        jSONObject.put("link", str3);
        jSONObject.put("button_text", "");
        jSONObject.put("button_link", "");
        return jSONObject;
    }

    /* renamed from: a */
    public static void m2687a(Context context, Intent intent) {
        if (intent.getBooleanExtra("intent_referred", false)) {
            C14085m4.m2604a(context);
        } else if (intent.getBooleanExtra("intent_expire", false)) {
            m2669c(context);
        }
    }

    /* renamed from: a */
    public static void m2683a(@Nullable AbstractC6378d dVar) {
        if (m2688a((Context) null)) {
            m2677a(false, (AbstractC6377c) null);
        } else if (m2642w()) {
            C12419d.m6213a(false, dVar);
        }
    }

    /* renamed from: a */
    public static void m2678a(boolean z) {
        C13915b3.m3055b("pref_has_manual_enable_offline_db", z);
    }

    /* renamed from: a */
    public static void m2677a(boolean z, AbstractC6377c cVar) {
        boolean z2;
        C14067d.C14068a aVar = new C14067d.C14068a();
        C14067d dVar = new C14067d(cVar, aVar, C14067d.EnumC14071b.COMMON, null);
        if (m2642w()) {
            if (!z) {
                try {
                    if (!m2659f()) {
                        z2 = false;
                        C12419d.m6213a(z2, new C14064a(dVar, z));
                    }
                } catch (NullPointerException e) {
                    C13973d4.m2952a(e);
                }
            }
            z2 = true;
            C12419d.m6213a(z2, new C14064a(dVar, z));
        } else {
            dVar.m2637d();
        }
        C14067d dVar2 = new C14067d(cVar, aVar, C14067d.EnumC14071b.PERSONAL, null);
        if (m2698D()) {
            try {
                C12436l.m6174a(z, new C14065b(dVar2, z));
            } catch (NullPointerException e2) {
                C13973d4.m2952a(e2);
            }
        } else {
            dVar2.m2637d();
        }
    }

    /* renamed from: a */
    public static boolean m2688a(@Nullable Context context) {
        Context context2 = context;
        if (context == null) {
            context2 = MyApplication.m29013o();
        }
        boolean z = true;
        if (((m2657h() != 1 || !C14217x3.m2137h(context2)) && (m2657h() != 2 || !C14217x3.m2121n(context2))) || !m2697E()) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m2685a(@Nullable RowInfo.Primary primary, boolean z) {
        return m2656i() && (m2699C() || m2700B()) && !m2673b(primary, z);
    }

    /* renamed from: a */
    public static boolean m2684a(AbstractC6377c cVar) {
        boolean z;
        C14017g4.m2810n();
        C14217x3.m2120o();
        C14067d.C14068a aVar = new C14067d.C14068a();
        C14067d dVar = new C14067d(cVar, aVar, C14067d.EnumC14071b.COMMON, null);
        if (C12419d.m6219a(dVar)) {
            z = true;
        } else {
            dVar.m2637d();
            z = false;
        }
        C14067d dVar2 = new C14067d(cVar, aVar, C14067d.EnumC14071b.PERSONAL, null);
        if (C12436l.m6177a(dVar2)) {
            z = true;
        } else {
            dVar2.m2637d();
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m2681a(String str, int i) {
        Realm h;
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = false;
        boolean z2 = false;
        if (!m2701A() || (h = C12419d.m6205h()) == null) {
            z2 = false;
        } else {
            C12430i a = C12419d.m6216a(h, str);
            z = true;
            if (a != null) {
                z2 = true;
                z2 = true;
                if (C12419d.m6220a(a.f28021c, i)) {
                    h.close();
                }
            }
            z = false;
            h.close();
        }
        LogManager.m28579a("UtilsOfflineDb", "isContainInOfflineDb with number : " + str + ", type : " + i + ", cost : " + (System.currentTimeMillis() - currentTimeMillis) + ", hasResult : " + z + ", isExist : " + z2);
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x012e  */
    @androidx.annotation.NonNull
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static gogolook.callgogolook2.gson.NumberInfo m2672b(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p582w0.C14063l4.m2672b(java.lang.String):gogolook.callgogolook2.gson.NumberInfo");
    }

    /* renamed from: b */
    public static String m2675b(int i) {
        Context o = MyApplication.m29013o();
        return i != 1 ? i != 2 ? o.getString(R$string.offline_update_manual) : o.getString(R$string.offline_update_onlywifi) : o.getString(R$string.offline_update_auto);
    }

    @Nullable
    /* renamed from: b */
    public static JSONObject m2676b() {
        String a = m2689a((int) R$string.protection_manual_notification_title);
        String str = "offlinedb_update_manually_id" + ((int) (Math.random() * 1.0E8d));
        String a2 = m2689a((int) R$string.db_update_pull4);
        String o = m2650o();
        if (TextUtils.isEmpty(a) || TextUtils.isEmpty(a2) || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject a3 = m2679a(a, a2, o, "", "");
            JSONObject a4 = m2680a(a, a2, o);
            jSONObject.put("notification", a3);
            jSONObject.put("message", a4);
            jSONObject.put(AdType.CUSTOM, new JSONObject());
            jSONObject.put("id", str);
            return jSONObject;
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m2674b(Context context) {
        JSONObject c = m2694H() ? m2671c() : m2676b();
        if (c == null) {
            return false;
        }
        C13987e3.m2932a(context, c);
        m2670c(m2652m() + 1);
        return true;
    }

    /* renamed from: b */
    public static boolean m2673b(@Nullable RowInfo.Primary primary, boolean z) {
        RowInfo.Primary.Type type;
        return z || primary == null || (type = primary.type) == RowInfo.Primary.Type.CONTACT || type == RowInfo.Primary.Type.SPOOF || type == RowInfo.Primary.Type.MYTAG || type == RowInfo.Primary.Type.NOTE || type == RowInfo.Primary.Type.MYSPAM;
    }

    @Nullable
    /* renamed from: c */
    public static JSONObject m2671c() {
        String str = "iap_auto_update_id" + ((int) (Math.random() * 1.0E8d));
        String a = m2689a((int) R$string.offlinedb_iap_notification_title);
        String a2 = m2689a((int) R$string.db_update_pull3);
        String n = m2651n();
        if (TextUtils.isEmpty(a) || TextUtils.isEmpty(a2) || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            JSONObject a3 = m2679a(a, a2, n, "", "");
            JSONObject a4 = m2680a(a, a2, n);
            jSONObject.put("notification", a3);
            jSONObject.put("message", a4);
            jSONObject.put(AdType.CUSTOM, new JSONObject());
            jSONObject.put("id", str);
            return jSONObject;
        } catch (JSONException e) {
            C14080m2.m2612a((Throwable) e);
            return null;
        }
    }

    /* renamed from: c */
    public static void m2670c(int i) {
        C13915b3.m3048d("db_update_push_times", i);
    }

    /* renamed from: c */
    public static void m2669c(final Context context) {
        int i;
        int i2;
        int i3;
        int i4;
        long currentTimeMillis = System.currentTimeMillis();
        int[] iArr = {0};
        if (C14217x3.m2197a(currentTimeMillis, C13915b3.m3065a("pref_premiumdb_expire_time", Long.MAX_VALUE))) {
            iArr[0] = 0;
            i4 = R$string.offline_db_expired_dialog_title;
            i3 = R$string.offline_db_expired_dialog_content;
            i2 = R$string.offline_db_expired_dialog_subscribe;
            i = R$string.offline_db_expired_dialog_referral;
        } else {
            if (C14217x3.m2197a(currentTimeMillis, C13915b3.m3065a("pref_premiumdb_expire_time", Long.MAX_VALUE) - 259200000)) {
                iArr[0] = 3;
            } else if (C14217x3.m2197a(currentTimeMillis, C13915b3.m3065a("pref_premiumdb_expire_time", Long.MAX_VALUE) - AdUtils.ONE_DAY)) {
                iArr[0] = 1;
            }
            i4 = R$string.offline_db_expiring_dialog_title;
            i3 = R$string.offline_db_expiring_dialog_content;
            i2 = R$string.offline_db_expiring_dialog_subscribe;
            i = R$string.offline_db_expiring_dialog_referral;
        }
        SimpleInAppDialog simpleInAppDialog = new SimpleInAppDialog(context);
        simpleInAppDialog.m25868b(R$drawable.dialog_offlinedb_tutorial);
        simpleInAppDialog.setTitle(i4);
        simpleInAppDialog.m25858e(i3);
        simpleInAppDialog.mo2915b(i, new View$OnClickListenerC14066c(context));
        simpleInAppDialog.m25876a(i2, new View.OnClickListener() { // from class: j.a.w0.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                r0.startActivity(IapActivity.m28109a(context, "deep_link", "none", null));
            }
        });
        simpleInAppDialog.show();
    }

    /* renamed from: c */
    public static boolean m2668c(RowInfo.Primary primary, boolean z) {
        return m2656i() && m2700B() && !m2673b(primary, z);
    }

    @WorkerThread
    /* renamed from: c */
    public static boolean m2667c(String str) {
        List<WhiteListRealmObject> a = C13217t.m4398a(C13193p.m4437a("_e164", "_status"), C13193p.m4438a(C14108o4.m2474l(str), 2), C13193p.m4439a(C13193p.EnumC13194a.EQUAL_TO, C13193p.EnumC13194a.NOT_EQUAL_TO), null, null);
        boolean z = false;
        if (a != null) {
            z = false;
            if (!a.isEmpty()) {
                z = true;
            }
        }
        return z;
    }

    /* renamed from: d */
    public static void m2666d() {
        C12419d.m6222a();
        C12436l.m6172c();
    }

    /* renamed from: d */
    public static void m2665d(int i) {
        C13978e.f31386a.m9459a("offline_db_update_rule", (String) Integer.valueOf(i));
    }

    /* renamed from: d */
    public static void m2664d(Context context) {
        if (m2642w() && !m2643v()) {
            int e = C12419d.m6208e();
            int g = C12419d.m6206g();
            if (e == g) {
                C14080m2.m2615a("UtilsOfflineDb", "[OfflineDb][ExpiredNotification] Already updated to the latest version Offline DB { current_version=" + C12419d.m6208e() + ", next_version=" + C12419d.m6206g() + " }");
            } else if (C12439m.m6163a() != g && m2674b(context)) {
                C12439m.m6162a(g);
            }
        }
    }

    /* renamed from: d */
    public static boolean m2663d(RowInfo.Primary primary, boolean z) {
        return m2656i() && m2699C() && !m2673b(primary, z);
    }

    /* renamed from: d */
    public static boolean m2662d(String str) {
        return m2681a(str, 1);
    }

    /* renamed from: e */
    public static void m2661e() {
        if (!m2697E() && m2657h() != 0) {
            m2665d(0);
        }
    }

    /* renamed from: e */
    public static void m2660e(int i) {
        C13915b3.m3048d("pref_offlinedb_remain_days", i);
        if (i > 0) {
            C13915b3.m3057b("pref_premiumdb_expire_time", System.currentTimeMillis() + (i * AdUtils.ONE_DAY));
        }
    }

    /* renamed from: f */
    public static boolean m2659f() {
        return m2697E() && !m2641x();
    }

    /* renamed from: g */
    public static void m2658g() {
        C12419d.m6210c();
        C12436l.m6171d();
    }

    /* renamed from: h */
    public static int m2657h() {
        return C13978e.f31386a.m9461a("offline_db_update_rule", (Integer) 1);
    }

    /* renamed from: i */
    public static boolean m2656i() {
        return !C14021h2.m2779g() && C13640c.m3745d().m3753a("offline_db_expired_warning");
    }

    /* renamed from: j */
    public static int m2655j() {
        return C12419d.m6209d();
    }

    /* renamed from: k */
    public static int m2654k() {
        return C12419d.m6208e();
    }

    /* renamed from: l */
    public static int m2653l() {
        return m2639z() ? 0 : C12419d.m6214a(m2697E()) + C12436l.m6167h();
    }

    /* renamed from: m */
    public static int m2652m() {
        return C13915b3.m3066a("db_update_push_times", 0);
    }

    /* renamed from: n */
    public static String m2651n() {
        return C14198w.m2242a(AbstractC9328j.m15421of("page", "iap_ad_free", "from", "notification", "material", "auto_update"));
    }

    /* renamed from: o */
    public static String m2650o() {
        return C14198w.m2240b("offlinedb", "update_notification");
    }

    /* renamed from: p */
    public static int m2649p() {
        return C12419d.m6204i();
    }

    /* renamed from: q */
    public static int m2648q() {
        return C12419d.m6200m() ? C12419d.m6203j() + C12436l.m6167h() : 0;
    }

    /* renamed from: r */
    public static int m2647r() {
        return C12419d.m6202k();
    }

    /* renamed from: s */
    public static int m2646s() {
        return C13915b3.m3066a("pref_offlinedb_remain_days", 0);
    }

    /* renamed from: t */
    public static boolean m2645t() {
        return C13915b3.m3062a("pref_has_manual_enable_offline_db", false);
    }

    /* renamed from: u */
    public static boolean m2644u() {
        return C12419d.m6201l() || C12436l.m6166i();
    }

    /* renamed from: v */
    public static boolean m2643v() {
        boolean z;
        if (m2697E()) {
            z = true;
            if (m2657h() != 1) {
                if (m2657h() == 2) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: w */
    public static boolean m2642w() {
        return C13891a.m3155g();
    }

    /* renamed from: x */
    public static boolean m2641x() {
        boolean z = true;
        if (m2655j() != 1) {
            z = false;
        }
        return z;
    }

    /* renamed from: y */
    public static boolean m2640y() {
        return C12419d.m6200m();
    }

    /* renamed from: z */
    public static boolean m2639z() {
        return !m2640y() || C12419d.m6201l();
    }
}
