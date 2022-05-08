package p459j.p460a.p521j0.p522u.p523d;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.perf.metrics.Trace;
import com.google.gson.Gson;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.gson.CInfo;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.gson.RowInfo;
import gogolook.callgogolook2.ndp.NumberDetailActivity;
import gogolook.callgogolook2.p074ad.AdUtils;
import gogolook.callgogolook2.p074ad.ExperimentalCallEndNdpApi;
import gogolook.callgogolook2.phone.call.dialog.CallEndDialogActivity;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import p081h.p160h.p172b.p173a.C6298e;
import p081h.p203i.p325c.p337n.C9510c;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p461a0.C11040b;
import p459j.p460a.p461a0.C11051h;
import p459j.p460a.p461a0.C11052i;
import p459j.p460a.p461a0.C11086o;
import p459j.p460a.p461a0.EnumC11047e;
import p459j.p460a.p461a0.EnumC11085n;
import p459j.p460a.p521j0.p527v.C12717a;
import p459j.p460a.p521j0.p527v.C12718b;
import p459j.p460a.p521j0.p527v.C12719c;
import p459j.p460a.p521j0.p528w.AbstractC12746u;
import p459j.p460a.p521j0.p528w.AbstractC12749x;
import p459j.p460a.p521j0.p528w.C12726e;
import p459j.p460a.p521j0.p528w.C12748w;
import p459j.p460a.p521j0.p528w.C12751y;
import p459j.p460a.p582w0.C13877a2;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14023h4;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14063l4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14081m3;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14127q0;
import p459j.p460a.p582w0.C14134r1;
import p459j.p460a.p582w0.C14187u1;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14214x0;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13921a;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14260e;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p582w0.p590x4.C14299q;
import p459j.p460a.p582w0.p590x4.C14300r;
import p459j.p460a.p582w0.p590x4.p592b0.C14241a;
import p660rx.Observable;
import p660rx.Subscriber;
import p660rx.Subscription;
import p660rx.functions.Action1;
import p660rx.functions.Actions;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.j0.u.d.s0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0.class */
public class C12664s0 {

    /* renamed from: A */
    public C13930d f28540A;

    /* renamed from: D */
    public float f28543D;

    /* renamed from: a */
    public Context f28550a;

    /* renamed from: b */
    public AbstractC12675i f28551b;

    /* renamed from: c */
    public Subscription f28552c;

    /* renamed from: d */
    public EnumC12627j0 f28553d;

    /* renamed from: e */
    public EnumC12625i0 f28554e;

    /* renamed from: f */
    public ViewGroup f28555f;

    /* renamed from: g */
    public WindowManager f28556g;

    /* renamed from: h */
    public CallStats f28557h;

    /* renamed from: i */
    public String f28558i;

    /* renamed from: j */
    public NumberInfo f28559j;

    /* renamed from: k */
    public EnumC12676j f28560k;

    /* renamed from: l */
    public FrameLayout f28561l;

    /* renamed from: m */
    public WindowManager.LayoutParams f28562m;

    /* renamed from: n */
    public int f28563n;

    /* renamed from: o */
    public Handler f28564o;

    /* renamed from: p */
    public boolean f28565p;

    /* renamed from: r */
    public boolean f28567r;

    /* renamed from: s */
    public int f28568s;

    /* renamed from: t */
    public String f28569t;

    /* renamed from: u */
    public String f28570u;

    /* renamed from: v */
    public long f28571v;

    /* renamed from: w */
    public int f28572w;

    /* renamed from: x */
    public boolean f28573x;

    /* renamed from: y */
    public boolean f28574y;

    /* renamed from: z */
    public SparseArray<C14241a> f28575z = new SparseArray<>();

    /* renamed from: B */
    public C12677k f28541B = null;

    /* renamed from: C */
    public BroadcastReceiver f28542C = new C12665a();

    /* renamed from: E */
    public Runnable f28544E = new RunnableC12668d();

    /* renamed from: F */
    public C11040b f28545F = new C12669e();

    /* renamed from: G */
    public final AbstractC12749x f28546G = new C12726e();

    /* renamed from: H */
    public final C12751y f28547H = new C12751y();

    /* renamed from: I */
    public final AbstractC12746u f28548I = new C12748w();

    /* renamed from: J */
    public C11086o f28549J = new C12670f();

    /* renamed from: q */
    public C12680t0 f28566q = new C12680t0(this);

    /* renamed from: j.a.j0.u.d.s0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$a.class */
    public class C12665a extends BroadcastReceiver {
        public C12665a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE") && C14217x3.m2137h(context) && C12664s0.this.f28559j != null && C12664s0.this.f28559j.m28298r0() && C12664s0.this.f28566q != null) {
                NumberInfo.ErrorReason o = C12664s0.this.f28559j.m28305o();
                if (o != null && o.equals(NumberInfo.ErrorReason.NO_NETWORK) && C12664s0.this.f28572w < 3) {
                    C12664s0.m5608m(C12664s0.this);
                    if (C12664s0.this.f28560k == EnumC12676j.CALLEND_DIALOG || C12664s0.this.f28560k == EnumC12676j.CALLEND_DIALOG_MULTIMISSING) {
                        C14037j3.m2731a().mo2704a(new C14134r1());
                        return;
                    }
                    C12664s0.this.f28566q.m5570a((RowInfo) null);
                    C12664s0.this.m5613k();
                    C12664s0 s0Var = C12664s0.this;
                    s0Var.m5633a(s0Var.f28567r, C12664s0.this.f28568s, C12664s0.this.f28569t, C12664s0.this.f28570u, C12664s0.this.f28571v);
                    C12664s0.this.m5615j();
                } else if (C12664s0.this.f28572w >= 3) {
                    try {
                        if (C12664s0.this.f28550a != null) {
                            C12664s0.this.f28550a.unregisterReceiver(C12664s0.this.f28542C);
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
    }

    /* renamed from: j.a.j0.u.d.s0$b */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$b.class */
    public class C12666b implements Observable.OnSubscribe<Void> {
        public C12666b() {
        }

        /* renamed from: a */
        public void call(Subscriber<? super Void> subscriber) {
            C14260e.m2001a(C12664s0.this.f28550a, C12717a.class);
            subscriber.onCompleted();
        }
    }

    /* renamed from: j.a.j0.u.d.s0$c */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$c.class */
    public class C12667c extends FrameLayout {
        public C12667c(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (C12664s0.this.f28553d == EnumC12627j0.SYSTEM_ALERT) {
                if (getResources().getConfiguration().orientation == 1) {
                    C12664s0.this.m5644a(C12629k0.m5710e());
                } else {
                    C12664s0.this.m5644a(C12629k0.m5711d());
                }
                C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("dialog view onAttachedToWindow");
            }
        }

        @Override // android.view.View
        public void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            if (C12664s0.this.f28553d != EnumC12627j0.SYSTEM_ALERT) {
                return;
            }
            if (configuration.orientation == 1) {
                C13915b3.m3048d("calldialog_landscape_y", (int) C12664s0.this.f28543D);
                C12664s0.this.m5644a(C12629k0.m5710e());
                return;
            }
            C13915b3.m3048d("calldialog_portrait_y", (int) C12664s0.this.f28543D);
            C12664s0.this.m5644a(C12629k0.m5711d());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onDetachedFromWindow() {
            if (C12664s0.this.f28553d == EnumC12627j0.SYSTEM_ALERT) {
                if (getResources().getConfiguration().orientation == 1) {
                    C13915b3.m3048d("calldialog_portrait_y", (int) C12664s0.this.f28543D);
                } else {
                    C13915b3.m3048d("calldialog_landscape_y", (int) C12664s0.this.f28543D);
                }
                C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("dialog view onDetachedFromWindow");
            }
            super.onDetachedFromWindow();
        }

        @Override // android.view.View
        public void onWindowVisibilityChanged(int i) {
            super.onWindowVisibilityChanged(i);
            if (C12664s0.this.f28553d == EnumC12627j0.SYSTEM_ALERT) {
                C13921a a = C13921a.m3037a(C13921a.EnumC13926e.CD);
                a.m3035a("dialog view onWindowVisibilityChanged, visibility=" + i);
            }
        }
    }

    /* renamed from: j.a.j0.u.d.s0$d */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$d.class */
    public class RunnableC12668d implements Runnable {
        public RunnableC12668d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CallStats h = CallStats.m28534h();
            if (C12664s0.this.m5617i() && !h.m28539c().m28478y()) {
                C12664s0.this.f28573x = true;
                C12664s0.this.m5613k();
            }
        }
    }

    /* renamed from: j.a.j0.u.d.s0$e */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$e.class */
    public class C12669e extends C11040b {
        public C12669e() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: a */
        public void mo5583a(@NonNull String str, @NonNull NumberInfo numberInfo, @NonNull EnumC11085n nVar) {
            if (nVar == EnumC11085n.FINISH || nVar == EnumC11085n.ERROR) {
                CallStats.Call c = C12664s0.this.f28557h.m28539c();
                C12664s0.this.m5635a(C14108o4.m2474l(str), new RowInfo.Builder(str, numberInfo).m28204b(!c.m28529B()).m28207b());
            }
        }
    }

    /* renamed from: j.a.j0.u.d.s0$f */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$f.class */
    public class C12670f extends C11086o {

        /* renamed from: j.a.j0.u.d.s0$f$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$f$a.class */
        public class C12671a extends AbstractC12548d1 {

            /* renamed from: d */
            public final /* synthetic */ CallStats.Call f28582d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12671a(NumberInfo numberInfo, RowInfo rowInfo, String str, CallStats.Call call) {
                super(numberInfo, rowInfo, str);
                this.f28582d = call;
            }

            @Override // p459j.p460a.p521j0.p522u.p523d.AbstractC12548d1
            /* renamed from: b */
            public void mo5579b() {
                String str;
                if (C12664s0.this.f28541B != null) {
                    C12664s0.this.f28541B.m5575a(this.f28247a);
                }
                C12664s0.this.f28566q.m5569a(this.f28248b, C12664s0.this.f28541B);
                NumberInfo numberInfo = this.f28247a;
                if (numberInfo == null) {
                    return;
                }
                if (numberInfo.m28296s0() || this.f28247a.m28298r0()) {
                    String l = C14108o4.m2474l(C12664s0.this.f28558i);
                    C12664s0.this.f28540A.m3017f();
                    if (this.f28247a.m28299r() != null) {
                        Object obj = this.f28247a.m28299r().get(NumberInfo.KEY_DATA_SOURCE);
                        if (obj instanceof String) {
                            str = (String) obj;
                            CallStats.m28534h().m28539c().m28501e(C12664s0.this.f28540A.m3025a());
                            String str2 = C12664s0.this.f28558i;
                            CallStats.Call call = this.f28582d;
                            boolean z = TextUtils.isEmpty(this.f28247a.m28383M()) || !TextUtils.isEmpty(this.f28247a.m28393C()) || this.f28247a.m28314j0();
                            NumberInfo.InfoSource w = this.f28247a.m28289w();
                            NumberInfo.CloudFrontType b = this.f28247a.m28352b();
                            int a = (int) C12664s0.this.f28540A.m3025a();
                            boolean isEmpty = TextUtils.isEmpty(this.f28247a.m28393C());
                            String s = this.f28247a.m28297s();
                            NumberInfo numberInfo2 = this.f28247a;
                            C14289m.m1891a(str2, l, call, z, w, b, Integer.valueOf(a), !isEmpty, s, numberInfo2.usefulInfoType, numberInfo2.m28374V(), this.f28247a.m28383M(), this.f28247a.m28312k0(), this.f28247a.m28314j0(), !TextUtils.isEmpty(this.f28248b.m28269a()), C14108o4.m2492b(), this.f28247a.m28298r0(), str);
                            C14261f.m1983a(C14261f.EnumC14264c.a_CD_Show_Data, this.f28582d, C14108o4.m2474l(C12664s0.this.f28558i), C12664s0.this.f28540A.m3025a());
                            if (this.f28247a.m28296s0() && CallStats.m28534h().m28539c().m28529B() && C12664s0.this.f28553d == EnumC12627j0.SYSTEM_ALERT) {
                                C12664s0.this.f28564o.removeCallbacks(C12664s0.this.f28544E);
                                C12664s0.this.f28564o.postDelayed(C12664s0.this.f28544E, 5000L);
                                return;
                            }
                            return;
                        }
                    }
                    str = null;
                    CallStats.m28534h().m28539c().m28501e(C12664s0.this.f28540A.m3025a());
                    String str22 = C12664s0.this.f28558i;
                    CallStats.Call call2 = this.f28582d;
                    if (TextUtils.isEmpty(this.f28247a.m28383M())) {
                    }
                    NumberInfo.InfoSource w2 = this.f28247a.m28289w();
                    NumberInfo.CloudFrontType b2 = this.f28247a.m28352b();
                    int a2 = (int) C12664s0.this.f28540A.m3025a();
                    boolean isEmpty2 = TextUtils.isEmpty(this.f28247a.m28393C());
                    String s2 = this.f28247a.m28297s();
                    NumberInfo numberInfo22 = this.f28247a;
                    C14289m.m1891a(str22, l, call2, z, w2, b2, Integer.valueOf(a2), !isEmpty2, s2, numberInfo22.usefulInfoType, numberInfo22.m28374V(), this.f28247a.m28383M(), this.f28247a.m28312k0(), this.f28247a.m28314j0(), !TextUtils.isEmpty(this.f28248b.m28269a()), C14108o4.m2492b(), this.f28247a.m28298r0(), str);
                    C14261f.m1983a(C14261f.EnumC14264c.a_CD_Show_Data, this.f28582d, C14108o4.m2474l(C12664s0.this.f28558i), C12664s0.this.f28540A.m3025a());
                    if (this.f28247a.m28296s0()) {
                    }
                }
            }
        }

        public C12670f() {
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: a */
        public void mo5581a(@NonNull NumberInfo numberInfo, @NonNull NumberInfo numberInfo2) {
            C12664s0.this.f28547H.m5433a(numberInfo, numberInfo2);
        }

        @Override // p459j.p460a.p461a0.C11040b, p459j.p460a.p461a0.AbstractC11045d
        /* renamed from: a */
        public void mo5580a(String str, NumberInfo.InfoSource infoSource, boolean z) {
            CInfo d;
            C14080m2.m2615a("CallViewController", "onSourceLoaded, e164=" + str + ", source=" + infoSource.m28282a() + ", hasInfo=" + z + ", isAdded=" + C12664s0.this.f28574y + ", isAlive=" + C12664s0.this.m5617i() + ", dialogType=" + C12664s0.this.f28560k);
            if (C12664s0.this.m5617i() && C12664s0.this.f28574y && C12664s0.this.f28560k == EnumC12676j.CALL_DIALOG && (d = CallStats.m28534h().m28539c().m28503d(str)) != null) {
                if (C12674h.f28586a[infoSource.ordinal()] == 1) {
                    d.hit_source.put(NumberInfo.InfoSource.OFFLINE_DB.m28282a(), Integer.valueOf(CInfo.HitSourceState.NO_INFO.m28554a()));
                }
                if (!z) {
                    d.hit_source.put(infoSource.m28282a(), Integer.valueOf(CInfo.HitSourceState.NO_INFO.m28554a()));
                } else if (infoSource == NumberInfo.InfoSource.NONE || !C14063l4.m2656i() || (!C14063l4.m2699C() && (!C14063l4.m2700B() || !(infoSource == NumberInfo.InfoSource.MEMORY_CACHE || infoSource == NumberInfo.InfoSource.DB_CACHE || infoSource == NumberInfo.InfoSource.SERVER)))) {
                    d.hit_source.put(infoSource.m28282a(), Integer.valueOf(CInfo.HitSourceState.HAS_INFO.m28554a()));
                } else {
                    d.hit_source.put(infoSource.m28282a(), Integer.valueOf(CInfo.HitSourceState.HAS_INFO_BUT_HIDDEN.m28554a()));
                }
            }
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: a */
        public boolean mo5582a() {
            return true;
        }

        @Override // p459j.p460a.p461a0.C11040b
        /* renamed from: b */
        public void mo1836b(String str, NumberInfo numberInfo) {
            if (C12664s0.this.m5617i()) {
                CallStats.Call c = C12664s0.this.f28557h.m28539c();
                C12664s0.this.f28559j = numberInfo;
                C12664s0.this.m5613k();
                String l = C14108o4.m2474l(C12664s0.this.f28558i);
                String str2 = l;
                if (TextUtils.isEmpty(l)) {
                    str2 = C12664s0.this.f28558i;
                }
                RowInfo a = RowInfo.m28257a(C12664s0.this.f28546G.m5436a(C12664s0.this.f28558i, str2, numberInfo, C14217x3.m2146e(MyApplication.m29013o(), C12664s0.this.f28558i), !c.m28529B()), C12664s0.this.f28548I);
                double d = 0.0d;
                if (a.m28221k()) {
                    String l2 = C14108o4.m2474l(C12664s0.this.f28558i);
                    if (!c.m28529B()) {
                        d = 1.0d;
                    }
                    C14299q.m1739b(l2, d);
                } else if (a.m28222j()) {
                    String l3 = C14108o4.m2474l(C12664s0.this.f28558i);
                    if (!c.m28529B()) {
                        d = 1.0d;
                    }
                    C14299q.m1745a(l3, d);
                }
                new C12671a(numberInfo, a, str, c).m5929a();
            }
        }
    }

    /* renamed from: j.a.j0.u.d.s0$g */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$g.class */
    public class C12672g implements Action1<Object> {

        /* renamed from: j.a.j0.u.d.s0$g$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$g$a.class */
        public class RunnableC12673a implements Runnable {
            public RunnableC12673a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C12664s0.this.m5607n();
                C12664s0.this.m5591v();
                C12664s0.this.m5629c();
            }
        }

        public C12672g() {
        }

        @Override // p660rx.functions.Action1
        public void call(Object obj) {
            if (obj instanceof C14214x0) {
                Action1<C12680t0> a = ((C14214x0) obj).m2210a();
                if (a != null) {
                    a.call(C12664s0.this.f28566q);
                }
            } else if (obj instanceof C14127q0) {
                C12664s0.this.f28564o.post(new RunnableC12673a());
            } else if (obj instanceof C13877a2) {
                C13877a2 a2Var = (C13877a2) obj;
                C14241a aVar = (C14241a) C12664s0.this.f28575z.get(a2Var.f31154a.ordinal());
                C14241a aVar2 = aVar;
                if (aVar == null) {
                    aVar2 = a2Var.m3263a(C12664s0.this.f28558i, C12664s0.this.f28557h.m28539c().m28529B() ? "out" : "in");
                    C12664s0.this.f28575z.put(a2Var.f31154a.ordinal(), aVar2);
                }
                a2Var.m3265a(aVar2);
            }
        }
    }

    /* renamed from: j.a.j0.u.d.s0$h */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$h.class */
    public static /* synthetic */ class C12674h {

        /* renamed from: a */
        public static final /* synthetic */ int[] f28586a = new int[NumberInfo.InfoSource.values().length];

        static {
            try {
                f28586a[NumberInfo.InfoSource.PERSONAL_DB.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
        }
    }

    /* renamed from: j.a.j0.u.d.s0$i */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$i.class */
    public interface AbstractC12675i {
        /* renamed from: a */
        boolean mo5578a();

        /* renamed from: b */
        void mo5577b();
    }

    /* renamed from: j.a.j0.u.d.s0$j */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$j.class */
    public enum EnumC12676j {
        NONE,
        CALL_DIALOG,
        CALLEND_DIALOG,
        CALLEND_DIALOG_MULTIMISSING
    }

    /* renamed from: j.a.j0.u.d.s0$k */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$k.class */
    public static class C12677k {

        /* renamed from: a */
        public Trace f28592a;

        /* renamed from: b */
        public Trace f28593b;

        /* renamed from: c */
        public NumberInfo f28594c = null;

        public C12677k(String str) {
            C10062a c = C10062a.m13511c();
            this.f28592a = c.m13516a(str + "_update");
            C10062a c2 = C10062a.m13511c();
            this.f28593b = c2.m13516a(str + "_finish");
        }

        /* renamed from: a */
        public void m5576a() {
            this.f28592a.start();
            this.f28593b.start();
        }

        /* renamed from: a */
        public void m5575a(NumberInfo numberInfo) {
            this.f28594c = numberInfo;
        }

        /* renamed from: b */
        public void m5574b() {
            NumberInfo numberInfo = this.f28594c;
            if (numberInfo != null) {
                if (numberInfo.m28288w0() && (this.f28594c.m28372X() || this.f28594c.m28321h0())) {
                    this.f28592a.stop();
                }
                if (this.f28594c.m28296s0()) {
                    this.f28593b.stop();
                }
            }
        }
    }

    /* renamed from: j.a.j0.u.d.s0$l */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/s0$l.class */
    public interface AbstractC12678l {
        /* renamed from: a */
        void mo5573a();
    }

    public C12664s0(@NonNull Context context, @NonNull AbstractC12675i iVar) {
        this.f28550a = context;
        this.f28551b = iVar;
        m5645a();
    }

    /* renamed from: m */
    public static /* synthetic */ int m5608m(C12664s0 s0Var) {
        int i = s0Var.f28572w;
        s0Var.f28572w = i + 1;
        return i;
    }

    /* renamed from: a */
    public void m5645a() {
        this.f28574y = false;
        this.f28556g = (WindowManager) this.f28550a.getSystemService("window");
        this.f28572w = 0;
        this.f28560k = EnumC12676j.NONE;
        this.f28557h = CallStats.m28534h();
        this.f28550a.registerReceiver(this.f28542C, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        C14037j3.m2731a().mo2704a(new C14127q0());
        m5611l();
        this.f28564o = new Handler();
        this.f28573x = false;
    }

    /* renamed from: a */
    public void m5644a(float f) {
        if (m5619h() == EnumC12676j.CALL_DIALOG && this.f28553d == EnumC12627j0.SYSTEM_ALERT) {
            WindowManager.LayoutParams layoutParams = this.f28562m;
            layoutParams.y = (int) f;
            this.f28543D = f;
            if (this.f28574y) {
                this.f28556g.updateViewLayout(this.f28561l, layoutParams);
            }
        }
    }

    /* renamed from: a */
    public void m5643a(@Nullable ViewGroup viewGroup, @Nullable EnumC12625i0 i0Var, @Nullable AbstractC12678l lVar) {
        EnumC12627j0 j0Var = viewGroup == null ? EnumC12627j0.SYSTEM_ALERT : EnumC12627j0.VIEW;
        EnumC12627j0 j0Var2 = this.f28553d;
        EnumC12627j0 j0Var3 = EnumC12627j0.SYSTEM_ALERT;
        boolean z = (j0Var2 == j0Var3 && j0Var == j0Var3) ? false : true;
        if (this.f28553d == EnumC12627j0.SYSTEM_ALERT && j0Var == EnumC12627j0.VIEW) {
            m5605o();
        } else if (this.f28553d == EnumC12627j0.VIEW && j0Var == EnumC12627j0.SYSTEM_ALERT && lVar != null) {
            lVar.mo5573a();
        }
        this.f28553d = j0Var;
        EnumC12625i0 i0Var2 = i0Var;
        if (i0Var == null) {
            i0Var2 = EnumC12625i0.LIGHT;
        }
        this.f28554e = i0Var2;
        this.f28555f = viewGroup;
        String str = C12664s0.class.getCanonicalName() + ".initCallDialog";
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - show dialog start");
        if (this.f28557h.m28539c().m28529B() || !this.f28557h.m28539c().m28508c().equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - recordPV start");
            Observable.create(new C12666b()).subscribeOn(Schedulers.m0io()).subscribe(Actions.empty(), C14081m3.m2611a());
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - recordPV end");
        }
        if (this.f28561l == null || z) {
            this.f28561l = new C12667c(this.f28550a);
            this.f28574y = false;
            this.f28563n = -1;
            this.f28562m = new WindowManager.LayoutParams();
            WindowManager.LayoutParams layoutParams = this.f28562m;
            layoutParams.width = -1;
            layoutParams.height = -2;
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - before sense UI checking");
            this.f28562m.type = C6298e.m23356a(2010);
            WindowManager.LayoutParams layoutParams2 = this.f28562m;
            layoutParams2.flags = 2621448;
            layoutParams2.flags = layoutParams2.flags | 4194304;
            layoutParams2.flags &= -129;
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - after sense UI checking");
            WindowManager.LayoutParams layoutParams3 = this.f28562m;
            layoutParams3.screenOrientation = 3;
            layoutParams3.format = -2;
            layoutParams3.windowAnimations = 16973824;
            layoutParams3.gravity = 49;
        }
        this.f28573x = false;
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - show dialog end");
    }

    /* renamed from: a */
    public void m5642a(EnumC12625i0 i0Var) {
        EnumC12625i0 i0Var2 = i0Var;
        if (i0Var == null) {
            i0Var2 = EnumC12625i0.LIGHT;
        }
        this.f28554e = i0Var2;
        C12680t0 t0Var = this.f28566q;
        if (t0Var != null) {
            t0Var.m5545i();
        }
    }

    /* renamed from: a */
    public void m5636a(@Nullable String str) {
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] removeDialog() invoked");
        try {
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] send(new Event.RemoveCallEndDialog()) start");
            C14037j3.m2731a().mo2704a(new C14187u1(str));
            C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] send(new Event.RemoveCallEndDialog()) end");
            if (this.f28574y) {
                if ((this.f28560k == EnumC12676j.CALL_DIALOG || this.f28560k == EnumC12676j.NONE) && this.f28553d == EnumC12627j0.SYSTEM_ALERT) {
                    this.f28556g.removeView(this.f28561l);
                }
                this.f28574y = false;
            }
        } catch (Exception e) {
            C14080m2.m2612a((Throwable) e);
        }
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] removeDialog() end");
    }

    /* renamed from: a */
    public final void m5635a(String str, RowInfo rowInfo) {
        CallStats.Call c = CallStats.m28534h().m28539c();
        NumberInfo g = rowInfo.m28226g();
        CInfo d = c.m28503d(str);
        if (d != null) {
            if (g.m28294t0()) {
                d.server = CInfo.ServerEnum.SEARCHING.toString();
            } else if (!g.m28298r0()) {
                d.server = CInfo.ServerEnum.DATA.toString();
                d.offline = g.m28289w().m28280c();
                if (!d.offline) {
                    d.cache = g.m28289w() == NumberInfo.InfoSource.MEMORY_CACHE || g.m28289w() == NumberInfo.InfoSource.DB_CACHE;
                    if (d.server_latency > 0) {
                        d.cache = false;
                    }
                }
                if (g.m28372X() || rowInfo.m28224h().type == RowInfo.Primary.Type.SPOOF) {
                    d.name = true;
                    d.name_d = rowInfo.m28224h().name;
                    d.name_type = rowInfo.m28224h().type.toString();
                    d.biz_category = g.m28374V() ? g.m28316j() : "";
                    d.spam = g.m28329f0();
                    d.spam_type = g.m28383M();
                    d.has_spoof = g.m28325g0();
                    if (rowInfo.m28224h().type == RowInfo.Primary.Type.SPOOF) {
                        g.m28299r().put(NumberInfo.KEY_NAME_SOURCE, "SPOOF");
                    }
                } else if (g.m28317i0()) {
                    d.name = true;
                    d.name_type = g.usefulInfoType.toString();
                }
            } else if (g.m28305o() == NumberInfo.ErrorReason.NO_NETWORK || g.m28305o() == NumberInfo.ErrorReason.NETWORK_RESTRICTED) {
                d.server = CInfo.ServerEnum.NETWORK_ERROR.toString();
            } else {
                d.server = CInfo.ServerEnum.SERVER_ERROR.toString();
            }
        }
        c.m28514a(str, g.m28299r());
        c.m28515a(str, d);
    }

    /* renamed from: a */
    public void m5634a(boolean z) {
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] stop() invoked");
        this.f28565p = z;
        this.f28551b.mo5577b();
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] stop() end");
    }

    /* renamed from: a */
    public final void m5633a(boolean z, int i, String str, String str2, long j) {
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = refreshCallDialogStyle -  start, new_in_type=" + i + ", number=" + str);
        if (this.f28561l != null) {
            WindowManager.LayoutParams layoutParams = this.f28562m;
            layoutParams.windowAnimations = 16973824;
            layoutParams.flags &= -129;
            layoutParams.gravity = 49;
            int i2 = this.f28563n;
            if (i2 != -1) {
                layoutParams.y = i2;
            }
            if (this.f28574y) {
                try {
                    if (this.f28553d == EnumC12627j0.SYSTEM_ALERT) {
                        this.f28556g.updateViewLayout(this.f28561l, this.f28562m);
                    } else if (this.f28553d == EnumC12627j0.VIEW) {
                        this.f28555f.updateViewLayout(this.f28561l, this.f28562m);
                    }
                } catch (IllegalArgumentException e) {
                }
            }
            View childAt = this.f28561l.getChildAt(0);
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = refreshCallDialogStyle -  before getDialogView");
            View b = this.f28566q.m5824b(z, i, str, str2, j);
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = refreshCallDialogStyle -  after getDialogView");
            if (childAt == null || !childAt.equals(b)) {
                this.f28561l.removeAllViews();
                if (b.getParent() != null) {
                    ((ViewGroup) b.getParent()).removeAllViews();
                }
                C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = refreshCallDialogStyle -  after remove all view");
                this.f28561l.addView(b, this.f28566q.m5822e());
                C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = refreshCallDialogStyle -  after add view");
            }
        }
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = refreshCallDialogStyle -  end");
    }

    /* renamed from: b */
    public void m5632b() {
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] destroy() invoked");
        m5603p();
        if (this.f28565p && (m5619h() == EnumC12676j.CALLEND_DIALOG_MULTIMISSING || (m5619h() == EnumC12676j.CALLEND_DIALOG && this.f28557h.m28539c().m28477z()))) {
            C14023h4.m2761a(true);
            C14023h4.m2766a(this.f28550a);
        }
        m5607n();
        m5591v();
        m5629c();
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] destroy() end");
    }

    /* renamed from: b */
    public void m5630b(boolean z, int i, String str, String str2, long j) {
        m5605o();
        if (z) {
            C14260e.m2001a(this.f28550a, C12719c.class);
        } else {
            C14260e.m2001a(this.f28550a, C12718b.class);
        }
        this.f28567r = z;
        this.f28568s = i;
        this.f28569t = str;
        this.f28570u = str2;
        this.f28571v = j;
        if (this.f28567r) {
            this.f28560k = EnumC12676j.CALLEND_DIALOG_MULTIMISSING;
        } else {
            this.f28560k = EnumC12676j.CALLEND_DIALOG;
        }
        if (!AdUtils.m28808b(str)) {
            m5599r();
        } else if (CallUtils.m26560b(this.f28550a, false, this.f28569t)) {
            m5597s();
        }
    }

    /* renamed from: c */
    public final void m5629c() {
        for (int i = 0; i < this.f28575z.size(); i++) {
            this.f28575z.valueAt(i).m2082b();
        }
        this.f28575z.clear();
    }

    /* renamed from: d */
    public EnumC12625i0 m5627d() {
        return this.f28554e;
    }

    /* renamed from: e */
    public EnumC12627j0 m5625e() {
        return this.f28553d;
    }

    /* renamed from: f */
    public float m5623f() {
        WindowManager.LayoutParams layoutParams = this.f28562m;
        return layoutParams == null ? 0.0f : layoutParams.y;
    }

    /* renamed from: g */
    public Context m5621g() {
        return this.f28550a;
    }

    /* renamed from: h */
    public EnumC12676j m5619h() {
        return this.f28560k;
    }

    /* renamed from: i */
    public final boolean m5617i() {
        return this.f28551b.mo5578a();
    }

    /* renamed from: j */
    public void m5615j() {
        CallStats.Call c = this.f28557h.m28539c();
        this.f28558i = c.m28494i();
        if (this.f28558i != null) {
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = refreshCallDialogInfo - start");
            this.f28559j = null;
            CInfo d = c.m28503d(C14108o4.m2474l(this.f28558i));
            if (d != null) {
                d.server = CInfo.ServerEnum.SEARCHING.toString();
            }
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = refreshCallDialogInfo - after parse e164");
            this.f28540A = new C13930d();
            this.f28540A.m3018e();
            EnumC11047e eVar = c.m28529B() ? EnumC11047e.CallDialogOut : EnumC11047e.CallDialogIn;
            this.f28541B = new C12677k("number_info_loading_" + eVar);
            this.f28541B.m5576a();
            C11052i.m10328e().m10341a(this.f28558i, new C11051h(this.f28545F, this.f28549J), C11052i.f24872i, C11052i.f24870g, eVar);
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = refreshCallDialogInfo - after request number data");
            return;
        }
        C9510c.m15023a().m15020a(new Gson().m30988a(c));
        C13973d4.m2952a(new Exception());
        m5634a(false);
    }

    /* renamed from: k */
    public void m5613k() {
        if (this.f28553d != EnumC12627j0.VIEW && !this.f28557h.m28539c().m28529B() && !this.f28557h.m28539c().m28508c().equals(TelephonyManager.EXTRA_STATE_RINGING) && !this.f28557h.m28539c().m28530A()) {
            m5605o();
        } else if (this.f28559j == null) {
            m5601q();
        } else if (!this.f28573x || this.f28557h.m28539c().m28508c().equals(TelephonyManager.EXTRA_STATE_RINGING)) {
            m5601q();
        } else {
            m5605o();
        }
    }

    /* renamed from: l */
    public final void m5611l() {
        this.f28552c = C14037j3.m2731a().mo2703a((Action1) new C12672g());
    }

    /* renamed from: m */
    public void m5609m() {
        Handler handler = this.f28564o;
        if (handler != null) {
            handler.removeMessages(0);
        }
    }

    /* renamed from: n */
    public void m5607n() {
        try {
            if (this.f28542C != null) {
                this.f28550a.unregisterReceiver(this.f28542C);
            }
        } catch (Exception e) {
        }
    }

    /* renamed from: o */
    public void m5605o() {
        m5636a((String) null);
    }

    /* renamed from: p */
    public void m5603p() {
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] reset() invoked");
        C12680t0 t0Var = this.f28566q;
        if (t0Var != null) {
            t0Var.m5542l();
        }
        m5605o();
        C13921a.m3037a(C13921a.EnumC13926e.CED).m3035a("[CallViewController] reset() end");
    }

    /* renamed from: q */
    public final void m5601q() {
        String str = C12664s0.class.getCanonicalName() + ".showCallDialog";
        if (!this.f28574y) {
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - before adding call dialog view");
            EnumC12627j0 j0Var = this.f28553d;
            if (j0Var == EnumC12627j0.SYSTEM_ALERT) {
                C13878a3.m3236a(this.f28556g, this.f28561l, this.f28562m);
            } else if (j0Var == EnumC12627j0.VIEW && this.f28555f.getChildCount() == 0) {
                this.f28555f.addView(this.f28561l, this.f28562m);
            }
            C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - after adding call dialog view");
            this.f28574y = true;
        }
    }

    /* renamed from: r */
    public final void m5599r() {
        if (!this.f28574y) {
            Intent intent = new Intent(this.f28550a, CallEndDialogActivity.class);
            intent.addFlags(268435456);
            intent.putExtra("ARG_BOOLEAN_MULTIPLE_MISSING", this.f28567r);
            intent.putExtra("ARG_INT_NEW_IN_TYPE", this.f28568s);
            intent.putExtra("ARG_STRING_NUMBER_FOR_MULTI", this.f28569t);
            intent.putExtra("ARG_STRING_BODY_FOR_MULTI", this.f28570u);
            intent.putExtra("ARG_LONG_TIME", this.f28571v);
            C14300r.m1653a("CallEndDialogActivity", intent);
            this.f28550a.startActivity(intent);
            this.f28574y = true;
        }
    }

    @ExperimentalCallEndNdpApi
    /* renamed from: s */
    public final void m5597s() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("show_sn_warning", !this.f28557h.m28539c().m28529B());
        Intent a = NumberDetailActivity.m26858a(this.f28550a, this.f28569t, null, bundle, "FROM_CAll_End_Ndp");
        C14300r.m1653a("NumberDetailActivity", a);
        C14191v.m2259a(this.f28550a, a);
        m5634a(false);
    }

    /* renamed from: t */
    public void m5595t() {
        if (this.f28560k == EnumC12676j.CALL_DIALOG) {
            m5601q();
        } else {
            m5599r();
        }
    }

    /* renamed from: u */
    public void m5593u() {
        C12680t0 t0Var = this.f28566q;
        if (t0Var != null) {
            t0Var.m5539o();
        }
    }

    /* renamed from: v */
    public final void m5591v() {
        Subscription subscription = this.f28552c;
        if (subscription != null && !subscription.isUnsubscribed()) {
            this.f28552c.unsubscribe();
        }
    }

    /* renamed from: w */
    public void m5589w() {
        String str = C12664s0.class.getCanonicalName() + ".updateCallDialogContent";
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - updateCallDialogContent start");
        if (!this.f28557h.m28539c().m28529B() || this.f28553d != EnumC12627j0.SYSTEM_ALERT) {
            this.f28564o.removeCallbacks(this.f28544E);
        } else {
            this.f28564o.removeCallbacks(this.f28544E);
            this.f28564o.postDelayed(this.f28544E, 16000L);
        }
        this.f28560k = EnumC12676j.CALL_DIALOG;
        m5613k();
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - after refreshCallDialogVisibility");
        m5633a(this.f28567r, this.f28568s, this.f28569t, this.f28570u, this.f28571v);
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - after refreshCallDialogStyle, holderType=" + this.f28553d + ", isOutgoingCall=" + this.f28557h.m28539c().m28529B() + ", currentStats=" + this.f28557h.m28539c().m28508c());
        this.f28566q.m5537q();
        this.f28566q.m5536r();
        if (this.f28553d == EnumC12627j0.VIEW || this.f28557h.m28539c().m28529B() || !this.f28557h.m28539c().m28508c().equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
            m5615j();
        }
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("Method = " + str + " - updateCallDialogContent end");
    }
}
