package p459j.p460a.p461a0;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.gogolook.whoscallsdk.core.num.data.NumInfo;
import gogolook.callgogolook2.gson.CallStats;
import gogolook.callgogolook2.gson.NumberInfo;
import gogolook.callgogolook2.phone.call.dialog.CallUtils;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p081h.p160h.p179e.p180a.p187n.C6384a;
import p459j.p460a.p461a0.AbstractC11043c;
import p459j.p460a.p507f0.C12378a;
import p459j.p460a.p564s.C13565v;
import p459j.p460a.p564s.C13598x;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14017g4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14093n4;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13921a;
import p626l.C14989s;
import p660rx.Observer;
/* renamed from: j.a.a0.i */
/* loaded from: classes2-dex2jar.jar:j/a/a0/i.class */
public class C11052i {

    /* renamed from: f */
    public static int f24869f = -10;

    /* renamed from: g */
    public static int f24870g = -20;

    /* renamed from: h */
    public static int f24871h = 1;

    /* renamed from: i */
    public static int f24872i = 2;

    /* renamed from: j */
    public static final int f24873j = Runtime.getRuntime().availableProcessors();

    /* renamed from: k */
    public static final int f24874k = (f24873j * 2) - 1;

    /* renamed from: l */
    public static int f24875l = 0;

    /* renamed from: a */
    public C11048f<C11055c> f24876a;

    /* renamed from: b */
    public Map<String, NumberInfo.InfoSource> f24877b;

    /* renamed from: c */
    public Map<AbstractC11045d, String> f24878c;

    /* renamed from: d */
    public ExecutorService f24879d;

    /* renamed from: e */
    public ExecutorService f24880e;

    /* renamed from: j.a.a0.i$a */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/i$a.class */
    public static /* synthetic */ class C11053a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f24881a = new int[EnumC11085n.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            try {
                f24881a[EnumC11085n.LOADING.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f24881a[EnumC11085n.ERROR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f24881a[EnumC11085n.UPDATING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f24881a[EnumC11085n.FINISH.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: j.a.a0.i$b */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/i$b.class */
    public static class C11054b<T extends RunnableC11057e> implements Comparator<T> {
        public C11054b() {
        }

        public /* synthetic */ C11054b(C11053a aVar) {
            this();
        }

        /* renamed from: a */
        public int compare(T t, T t2) {
            return t.m10324a() - t2.m10324a();
        }
    }

    /* renamed from: j.a.a0.i$c */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/i$c.class */
    public class C11055c {

        /* renamed from: a */
        public String f24882a;

        /* renamed from: b */
        public NumberInfo.Whoscall.Tag f24883b;

        /* renamed from: c */
        public NumberInfo.Whoscall.Spam f24884c;

        /* renamed from: d */
        public List<NumberInfo.Note> f24885d;

        /* renamed from: e */
        public boolean f24886e;

        public C11055c(C11052i iVar) {
        }

        public /* synthetic */ C11055c(C11052i iVar, C11053a aVar) {
            this(iVar);
        }
    }

    /* renamed from: j.a.a0.i$d */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/i$d.class */
    public static class C11056d {

        /* renamed from: a */
        public static volatile C11052i f24887a = new C11052i(null);
    }

    /* renamed from: j.a.a0.i$e */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/i$e.class */
    public class RunnableC11057e implements Runnable {

        /* renamed from: a */
        public C11063f f24888a;

        /* renamed from: j.a.a0.i$e$a */
        /* loaded from: classes2-dex2jar.jar:j/a/a0/i$e$a.class */
        public class C11058a implements AbstractC11043c.AbstractC11044a {

            /* renamed from: a */
            public final /* synthetic */ C11065j f24890a;

            /* renamed from: b */
            public final /* synthetic */ boolean f24891b;

            public C11058a(C11065j jVar, boolean z) {
                this.f24890a = jVar;
                this.f24891b = z;
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            /* renamed from: a */
            public void mo10314a(@NonNull NumberInfo numberInfo) {
                C11065j jVar = this.f24890a;
                if (jVar != null) {
                    jVar.m10318b(1);
                }
                if (this.f24891b && numberInfo.m28385K() != null && numberInfo.m28289w() == NumberInfo.InfoSource.SERVER) {
                    C12378a.m6262b(numberInfo.m28385K().serverLatency);
                }
                RunnableC11057e eVar = RunnableC11057e.this;
                C11052i.this.m10352a(eVar.f24888a.f24906d, RunnableC11057e.this.f24888a.f24904b, numberInfo.m28289w(), numberInfo.m28372X());
                RunnableC11057e eVar2 = RunnableC11057e.this;
                C11052i.this.m10350a(eVar2.f24888a, numberInfo, EnumC11085n.UPDATING);
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            /* renamed from: b */
            public void mo10313b(@NonNull NumberInfo numberInfo) {
                C11065j jVar = this.f24890a;
                if (jVar != null) {
                    jVar.m10318b(1);
                }
                if (this.f24891b && numberInfo.m28305o() == NumberInfo.ErrorReason.NETWORK_RESTRICTED) {
                    C12378a.m6262b(2000000);
                }
                RunnableC11057e eVar = RunnableC11057e.this;
                C11052i.this.m10350a(eVar.f24888a, numberInfo, EnumC11085n.ERROR);
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            public void onStart() {
                C11065j jVar = this.f24890a;
                if (jVar != null) {
                    jVar.m10319a(1);
                }
            }
        }

        /* renamed from: j.a.a0.i$e$b */
        /* loaded from: classes2-dex2jar.jar:j/a/a0/i$e$b.class */
        public class C11059b implements AbstractC11043c.AbstractC11044a {

            /* renamed from: a */
            public final /* synthetic */ C11065j f24893a;

            public C11059b(C11065j jVar) {
                this.f24893a = jVar;
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            /* renamed from: a */
            public void mo10314a(@NonNull NumberInfo numberInfo) {
                C11065j jVar = this.f24893a;
                if (jVar != null) {
                    jVar.m10318b(2);
                }
                RunnableC11057e eVar = RunnableC11057e.this;
                C11052i.this.m10352a(eVar.f24888a.f24906d, RunnableC11057e.this.f24888a.f24904b, numberInfo.m28289w(), numberInfo.m28372X());
                if (numberInfo.m28372X() || numberInfo.m28321h0()) {
                    C11052i.this.f24877b.put(RunnableC11057e.this.f24888a.f24904b, numberInfo.m28289w());
                    RunnableC11057e eVar2 = RunnableC11057e.this;
                    C11052i.this.m10350a(eVar2.f24888a, numberInfo, EnumC11085n.UPDATING);
                }
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            /* renamed from: b */
            public void mo10313b(@NonNull NumberInfo numberInfo) {
                C11065j jVar = this.f24893a;
                if (jVar != null) {
                    jVar.m10318b(2);
                }
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            public void onStart() {
                C11065j jVar = this.f24893a;
                if (jVar != null) {
                    jVar.m10319a(2);
                }
            }
        }

        /* renamed from: j.a.a0.i$e$c */
        /* loaded from: classes2-dex2jar.jar:j/a/a0/i$e$c.class */
        public class C11060c implements AbstractC11043c.AbstractC11044a {

            /* renamed from: a */
            public final /* synthetic */ C11065j f24895a;

            /* renamed from: b */
            public final /* synthetic */ C11055c f24896b;

            public C11060c(C11065j jVar, C11055c cVar) {
                this.f24895a = jVar;
                this.f24896b = cVar;
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            /* renamed from: a */
            public void mo10314a(@NonNull NumberInfo numberInfo) {
                C11065j jVar = this.f24895a;
                if (jVar != null) {
                    jVar.m10318b(3);
                }
                C11055c cVar = this.f24896b;
                NumberInfo.Whoscall whoscall = numberInfo.whoscall;
                cVar.f24884c = whoscall.mySpam;
                cVar.f24883b = whoscall.myTag;
                cVar.f24885d = whoscall.notes;
                C11052i.this.f24876a.m10361a(RunnableC11057e.this.f24888a.f24904b, this.f24896b);
                RunnableC11057e eVar = RunnableC11057e.this;
                C11052i.this.m10350a(eVar.f24888a, numberInfo, EnumC11085n.UPDATING);
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            /* renamed from: b */
            public void mo10313b(@NonNull NumberInfo numberInfo) {
                C11065j jVar = this.f24895a;
                if (jVar != null) {
                    jVar.m10318b(3);
                }
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            public void onStart() {
                C11065j jVar = this.f24895a;
                if (jVar != null) {
                    jVar.m10319a(3);
                }
            }
        }

        /* renamed from: j.a.a0.i$e$d */
        /* loaded from: classes2-dex2jar.jar:j/a/a0/i$e$d.class */
        public class C11061d implements AbstractC11043c.AbstractC11044a {

            /* renamed from: a */
            public final /* synthetic */ C11065j f24898a;

            /* renamed from: b */
            public final /* synthetic */ C11055c f24899b;

            public C11061d(C11065j jVar, C11055c cVar) {
                this.f24898a = jVar;
                this.f24899b = cVar;
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            /* renamed from: a */
            public void mo10314a(@NonNull NumberInfo numberInfo) {
                C11065j jVar = this.f24898a;
                if (jVar != null) {
                    jVar.m10318b(4);
                }
                this.f24899b.f24882a = numberInfo.m28377S();
                this.f24899b.f24886e = numberInfo.whoscall.favored;
                C11052i.this.f24876a.m10361a(RunnableC11057e.this.f24888a.f24904b, this.f24899b);
                RunnableC11057e eVar = RunnableC11057e.this;
                C11052i.this.m10350a(eVar.f24888a, numberInfo, EnumC11085n.UPDATING);
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            /* renamed from: b */
            public void mo10313b(@NonNull NumberInfo numberInfo) {
                C11065j jVar = this.f24898a;
                if (jVar != null) {
                    jVar.m10318b(4);
                }
            }

            @Override // p459j.p460a.p461a0.AbstractC11043c.AbstractC11044a
            public void onStart() {
                C11065j jVar = this.f24898a;
                if (jVar != null) {
                    jVar.m10319a(4);
                }
            }
        }

        /* renamed from: j.a.a0.i$e$e */
        /* loaded from: classes2-dex2jar.jar:j/a/a0/i$e$e.class */
        public class C11062e implements Observer<C14989s> {

            /* renamed from: a */
            public final /* synthetic */ C11065j f24901a;

            public C11062e(C11065j jVar) {
                this.f24901a = jVar;
            }

            /* renamed from: a */
            public void onNext(C14989s sVar) {
            }

            @Override // p660rx.Observer
            public void onCompleted() {
                C11065j jVar = this.f24901a;
                if (jVar != null) {
                    jVar.m10318b(0);
                    this.f24901a.m10320a();
                }
                RunnableC11057e eVar = RunnableC11057e.this;
                C11052i.this.m10350a(eVar.f24888a, (NumberInfo) null, EnumC11085n.FINISH);
            }

            @Override // p660rx.Observer
            public void onError(Throwable th) {
                C11065j jVar = this.f24901a;
                if (jVar != null) {
                    jVar.m10318b(0);
                }
                C14080m2.m2612a(th);
            }
        }

        public RunnableC11057e(C11063f fVar) {
            this.f24888a = fVar;
        }

        /* renamed from: a */
        public int m10324a() {
            return this.f24888a.f24907e;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00b5  */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00c9  */
        /* JADX WARN: Removed duplicated region for block: B:34:0x00d0  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00dc  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x0107  */
        /* JADX WARN: Removed duplicated region for block: B:41:0x010d  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x0149  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x015b  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01c9  */
        /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 464
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p461a0.C11052i.RunnableC11057e.run():void");
        }
    }

    /* renamed from: j.a.a0.i$f */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/i$f.class */
    public class C11063f {

        /* renamed from: a */
        public String f24903a;

        /* renamed from: b */
        public String f24904b;

        /* renamed from: c */
        public EnumC11047e f24905c;

        /* renamed from: d */
        public AbstractC11045d f24906d;

        /* renamed from: e */
        public int f24907e;

        /* renamed from: f */
        public int f24908f;

        public C11063f(C11052i iVar, String str, String str2, AbstractC11045d dVar, int i, @NonNull int i2, EnumC11047e eVar) {
            str2 = "";
            this.f24903a = str == null ? "" : str;
            if (str2 == null) {
            }
            this.f24904b = str2;
            this.f24906d = dVar;
            this.f24908f = i;
            this.f24907e = i2;
            this.f24905c = eVar;
        }

        /* renamed from: a */
        public boolean m10321a(int i) {
            return (this.f24908f & i) == i;
        }
    }

    /* renamed from: j.a.a0.i$g */
    /* loaded from: classes2-dex2jar.jar:j/a/a0/i$g.class */
    public class ThreadFactoryC11064g implements ThreadFactory {

        /* renamed from: a */
        public final AtomicInteger f24909a = new AtomicInteger(1);

        public ThreadFactoryC11064g(C11052i iVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "NumberLoader #" + this.f24909a.getAndIncrement());
            thread.setPriority(10);
            thread.setDaemon(true);
            return thread;
        }
    }

    public C11052i() {
        this.f24876a = new C11048f<>();
        this.f24877b = new HashMap();
        this.f24878c = Collections.synchronizedMap(new WeakHashMap());
        int i = f24874k;
        this.f24879d = new ThreadPoolExecutor(i, i, 1L, TimeUnit.SECONDS, new PriorityBlockingQueue(500, new C11054b(null)), new ThreadFactoryC11064g(this), new ThreadPoolExecutor.DiscardPolicy());
        this.f24880e = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, new ArrayBlockingQueue(500), new ThreadFactoryC11064g(this), new ThreadPoolExecutor.DiscardPolicy());
    }

    public /* synthetic */ C11052i(C11053a aVar) {
        this();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m10353a(android.content.ContentResolver r7) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r7
            android.net.Uri r1 = p459j.p460a.p538m0.C13024g.f29451a
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]
            r3 = r2
            r4 = 0
            java.lang.String r5 = "_e164"
            r3[r4] = r5
            r3 = 0
            r4 = 0
            r5 = 0
            android.database.Cursor r0 = r0.query(r1, r2, r3, r4, r5)
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x007d
            r0 = r9
            int r0 = r0.getCount()
            r0 = r9
            java.lang.String r1 = "_e164"
            int r0 = r0.getColumnIndex(r1)
            r10 = r0
            r0 = r9
            boolean r0 = r0.moveToFirst()
            if (r0 == 0) goto L_0x004e
        L_0x0039:
            r0 = r8
            r1 = r9
            r2 = r10
            java.lang.String r1 = r1.getString(r2)
            boolean r0 = r0.add(r1)
            r0 = r9
            boolean r0 = r0.moveToNext()
            if (r0 != 0) goto L_0x0039
        L_0x004e:
            r0 = r9
            r0.close()
            r0 = r8
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x007d
            r0 = r7
            android.net.Uri r1 = p459j.p460a.p538m0.C13024g.f29451a
            r2 = 0
            r3 = 0
            int r0 = r0.delete(r1, r2, r3)
            android.os.Bundle r0 = new android.os.Bundle
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "count"
            r2 = r8
            int r2 = r2.size()
            r0.putInt(r1, r2)
            java.lang.String r0 = "search_unsearched_numbers"
            r1 = r7
            p459j.p460a.p582w0.p590x4.C14261f.m1974a(r0, r1)
        L_0x007d:
            r0 = r8
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x0082:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x00b4
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            r0 = 1000(0x3e8, double:4.94E-321)
            java.lang.Thread.sleep(r0)     // Catch: InterruptedException -> 0x009e
            goto L_0x00a3
        L_0x009e:
            r7 = move-exception
            r0 = r7
            r0.printStackTrace()
        L_0x00a3:
            j.a.a0.i r0 = m10328e()
            r1 = r8
            r2 = 0
            int r3 = p459j.p460a.p461a0.C11052i.f24871h
            j.a.a0.e r4 = p459j.p460a.p461a0.EnumC11047e.Unsearched
            r0.m10340a(r1, r2, r3, r4)
            goto L_0x0082
        L_0x00b4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p461a0.C11052i.m10353a(android.content.ContentResolver):void");
    }

    /* renamed from: e */
    public static C11052i m10328e() {
        return C11056d.f24887a;
    }

    /* renamed from: a */
    public NumberInfo m10339a(String str, boolean z) {
        return m10338a(str, z, false);
    }

    /* renamed from: a */
    public NumberInfo m10338a(String str, boolean z, boolean z2) {
        if (!this.f24876a.m10362a(str)) {
            return null;
        }
        NumInfo c = z ? C6384a.m22853c(str, C14017g4.m2810n(), false, true) : C6384a.m22853c(str, C14017g4.m2810n(), true, false);
        if (!z2 && c == null) {
            return null;
        }
        NumberInfo numberInfo = new NumberInfo();
        if (c != null) {
            numberInfo.m28366a(c);
        }
        numberInfo.m28364a(NumberInfo.InfoSource.MEMORY_CACHE);
        m10342a(str, numberInfo);
        C14093n4.m2577a(str, numberInfo);
        return numberInfo;
    }

    /* renamed from: a */
    public void m10354a() {
        this.f24876a.m10363a();
        C6384a.m22850e();
        C6384a.m22852d();
    }

    /* renamed from: a */
    public final void m10352a(AbstractC11045d dVar, String str, NumberInfo.InfoSource infoSource, boolean z) {
        if (dVar != null) {
            dVar.mo5580a(str, infoSource, z);
        }
    }

    /* renamed from: a */
    public final void m10350a(C11063f fVar, @Nullable NumberInfo numberInfo, EnumC11085n nVar) {
        if (fVar.f24906d != null && !m10351a(fVar)) {
            int i = C11053a.f24881a[nVar.ordinal()];
            if (i == 1) {
                fVar.f24906d.mo10358a(fVar.f24903a);
            } else if (i == 2) {
                fVar.f24906d.mo10357a(fVar.f24903a, numberInfo.m28305o());
            } else if (i == 3) {
                C14093n4.m2577a(fVar.f24903a, numberInfo);
                fVar.f24906d.mo10356a(fVar.f24903a, numberInfo);
            } else if (i == 4) {
                fVar.f24906d.mo10355b(fVar.f24903a);
            }
        }
    }

    /* renamed from: a */
    public void m10344a(@NonNull String str) {
        C6384a.m22854c(str);
        this.f24876a.m10359c(str);
    }

    /* renamed from: a */
    public void m10341a(String str, AbstractC11045d dVar, int i, int i2, @NonNull EnumC11047e eVar) {
        m10336b(new C11063f(this, str, C14108o4.m2474l(str), dVar, i, i2, eVar));
    }

    /* renamed from: a */
    public void m10340a(String str, AbstractC11045d dVar, int i, @NonNull EnumC11047e eVar) {
        f24875l++;
        m10341a(str, dVar, i, f24875l, eVar);
    }

    /* renamed from: a */
    public final boolean m10351a(C11063f fVar) {
        AbstractC11045d dVar;
        if (fVar == null || (dVar = fVar.f24906d) == null) {
            return false;
        }
        String str = this.f24878c.get(dVar);
        if (str == null) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(fVar.f24904b);
        sb.append(fVar.f24905c);
        return !str.equals(sb.toString());
    }

    /* renamed from: a */
    public final boolean m10343a(String str, NumberInfo.InfoSource infoSource) {
        if (!this.f24877b.containsKey(str) || this.f24877b.get(str) != infoSource) {
            return false;
        }
        this.f24877b.remove(str);
        return true;
    }

    /* renamed from: a */
    public final boolean m10342a(String str, NumberInfo numberInfo) {
        C11055c b = this.f24876a.m10360b(str);
        if (b == null) {
            return false;
        }
        if (!TextUtils.isEmpty(b.f24882a)) {
            numberInfo.m28318i(b.f24882a);
        }
        NumberInfo.Whoscall whoscall = numberInfo.whoscall;
        whoscall.myTag = b.f24883b;
        whoscall.mySpam = b.f24884c;
        whoscall.notes = b.f24885d;
        whoscall.favored = b.f24886e;
        return true;
    }

    /* renamed from: b */
    public void m10337b() {
        this.f24876a.m10363a();
    }

    /* renamed from: b */
    public final void m10336b(@NonNull C11063f fVar) {
        if (fVar.f24903a == null) {
            fVar.f24903a = "";
        }
        boolean a = fVar.f24905c.m10365a();
        NumberInfo numberInfo = null;
        C13921a a2 = a ? C13921a.m3037a(C13921a.EnumC13926e.CD) : fVar.f24905c.m10364b() ? C13921a.m3037a(C13921a.EnumC13926e.CED) : null;
        if (a2 != null) {
            a2.m3035a("Method = NumberInfoLoader.load() - start, number=" + fVar.f24903a + ", source=" + fVar.f24905c);
        }
        boolean z = true;
        if (C13565v.m3921g().m23335b() && CallStats.m28533i()) {
            m10344a(fVar.f24904b);
            if (fVar.f24906d != null) {
                NumberInfo a3 = C13598x.m3860g().m3869a();
                int i = C11053a.f24881a[C13598x.m3860g().m3866b().ordinal()];
                if (i == 1) {
                    fVar.f24906d.mo10358a(fVar.f24903a);
                    return;
                } else if (i == 2) {
                    fVar.f24906d.mo10357a(fVar.f24903a, a3.m28305o());
                    fVar.f24906d.mo10355b(fVar.f24903a);
                    return;
                }
            }
        }
        Map<AbstractC11045d, String> map = this.f24878c;
        AbstractC11045d dVar = fVar.f24906d;
        map.put(dVar, fVar.f24904b + fVar.f24905c);
        if (!C14108o4.m2496a(fVar.f24903a, C14108o4.EnumC14110b.CALL)) {
            if (!fVar.m10321a(f24872i)) {
                NumberInfo a4 = m10339a(fVar.f24904b, a);
                AbstractC11045d dVar2 = fVar.f24906d;
                String str = fVar.f24904b;
                NumberInfo.InfoSource infoSource = NumberInfo.InfoSource.MEMORY_CACHE;
                if (a4 == null || !a4.m28372X()) {
                    z = false;
                }
                m10352a(dVar2, str, infoSource, z);
                numberInfo = a4;
                if (a2 != null) {
                    a2.m3035a("Method = NumberInfoLoader.load() - after loadFromMemoryCacheWithE164");
                    numberInfo = a4;
                }
            }
            if (numberInfo == null || fVar.m10321a(f24871h)) {
                if (a) {
                    this.f24880e.execute(new RunnableC11057e(fVar));
                    if (a2 != null) {
                        a2.m3035a("Method = NumberInfoLoader.load() - - - After LoaderRunnable EXECUTE");
                    }
                } else {
                    this.f24879d.execute(new RunnableC11057e(fVar));
                }
            } else if (fVar.f24906d != null) {
                m10350a(fVar, numberInfo, EnumC11085n.UPDATING);
                m10350a(fVar, numberInfo, EnumC11085n.FINISH);
                if (a2 != null) {
                    a2.m3035a("Method = NumberInfoLoader.load() - - - After FINISH");
                }
            }
            if (a2 != null) {
                a2.m3035a("Method = NumberInfoLoader.load() - end");
            }
        } else if (fVar.f24906d != null) {
            NumberInfo numberInfo2 = new NumberInfo();
            numberInfo2.m28364a(NumberInfo.InfoSource.NONE);
            fVar.f24906d.mo10356a(fVar.f24903a, numberInfo2);
            fVar.f24906d.mo10355b(fVar.f24903a);
        }
    }

    /* renamed from: b */
    public boolean m10334b(String str) {
        return m10343a(str, NumberInfo.InfoSource.OFFLINE_DB);
    }

    /* renamed from: c */
    public void m10333c() {
        C6384a.m22850e();
        this.f24876a.m10363a();
    }

    /* renamed from: c */
    public boolean m10331c(String str) {
        return m10343a(str, NumberInfo.InfoSource.PERSONAL_DB);
    }

    /* renamed from: d */
    public NumberInfo m10329d(String str) {
        NumberInfo numberInfo = new NumberInfo();
        NumInfo b = C6384a.m22856b(str, C14017g4.m2810n(), false, false);
        if (b != null) {
            numberInfo.m28366a(b);
            numberInfo.m28364a(NumberInfo.InfoSource.DB_CACHE);
        }
        return numberInfo;
    }

    /* renamed from: d */
    public final boolean m10330d() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean q = CallUtils.m26527q();
        boolean z6 = false;
        if (!q) {
            z5 = C14217x3.m2109x();
            z5 = z5;
            if (!z5) {
                z4 = C13878a3.m3259C();
                if (z4) {
                    z3 = C13878a3.m3261A();
                    if (!z3) {
                        z2 = false;
                        z = true;
                        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("isBackgroundRestricted=" + z + ", isUsingInCallService=" + q + ", iAppOnForeground=" + z5 + ", isPowerSaveMode=" + z4 + ", isIgnoringBatteryOptimization=" + z3 + ", isBackgroundDataRestricted=" + z6 + ", isMobileActive=" + z2);
                        return z;
                    }
                } else {
                    z3 = false;
                }
                z6 = C13878a3.m3193y();
                z5 = z5;
                z4 = z4;
                z3 = z3;
                z6 = z6;
                if (z6) {
                    z2 = C14217x3.m2152d() == 0;
                    z5 = z5;
                    z4 = z4;
                    z3 = z3;
                    z6 = z6;
                    z2 = z2;
                    if (z2) {
                        z = true;
                        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("isBackgroundRestricted=" + z + ", isUsingInCallService=" + q + ", iAppOnForeground=" + z5 + ", isPowerSaveMode=" + z4 + ", isIgnoringBatteryOptimization=" + z3 + ", isBackgroundDataRestricted=" + z6 + ", isMobileActive=" + z2);
                        return z;
                    }
                    z = false;
                    C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("isBackgroundRestricted=" + z + ", isUsingInCallService=" + q + ", iAppOnForeground=" + z5 + ", isPowerSaveMode=" + z4 + ", isIgnoringBatteryOptimization=" + z3 + ", isBackgroundDataRestricted=" + z6 + ", isMobileActive=" + z2);
                    return z;
                }
                z2 = false;
                z = false;
                C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("isBackgroundRestricted=" + z + ", isUsingInCallService=" + q + ", iAppOnForeground=" + z5 + ", isPowerSaveMode=" + z4 + ", isIgnoringBatteryOptimization=" + z3 + ", isBackgroundDataRestricted=" + z6 + ", isMobileActive=" + z2);
                return z;
            }
        } else {
            z5 = false;
        }
        z4 = false;
        z3 = false;
        z6 = false;
        z2 = false;
        z = false;
        C13921a.m3037a(C13921a.EnumC13926e.CD).m3035a("isBackgroundRestricted=" + z + ", isUsingInCallService=" + q + ", iAppOnForeground=" + z5 + ", isPowerSaveMode=" + z4 + ", isIgnoringBatteryOptimization=" + z3 + ", isBackgroundDataRestricted=" + z6 + ", isMobileActive=" + z2);
        return z;
    }

    /* renamed from: e */
    public NumberInfo m10327e(String str) {
        return m10339a(str, false);
    }
}
