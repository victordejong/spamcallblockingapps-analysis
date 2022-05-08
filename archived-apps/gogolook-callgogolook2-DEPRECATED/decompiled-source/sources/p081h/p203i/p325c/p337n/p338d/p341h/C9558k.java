package p081h.p203i.p325c.p337n.p338d.p341h;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.SavedStateHandle;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import p081h.p203i.p204a.p224e.p293r.AbstractC9141g;
import p081h.p203i.p204a.p224e.p293r.AbstractC9143h;
import p081h.p203i.p204a.p224e.p293r.C9145i;
import p081h.p203i.p204a.p224e.p293r.C9148k;
import p081h.p203i.p325c.p337n.p338d.AbstractC9512a;
import p081h.p203i.p325c.p337n.p338d.AbstractC9517d;
import p081h.p203i.p325c.p337n.p338d.C9513b;
import p081h.p203i.p325c.p337n.p338d.p339f.AbstractC9522a;
import p081h.p203i.p325c.p337n.p338d.p341h.C9610r;
import p081h.p203i.p325c.p337n.p338d.p342i.C9624b;
import p081h.p203i.p325c.p337n.p338d.p345k.C9767c;
import p081h.p203i.p325c.p337n.p338d.p346l.AbstractC9776h;
import p081h.p203i.p325c.p337n.p338d.p347m.C9779b;
import p081h.p203i.p325c.p337n.p338d.p347m.C9781c;
import p081h.p203i.p325c.p337n.p338d.p347m.C9783d;
import p081h.p203i.p325c.p337n.p338d.p348n.C9785a;
import p081h.p203i.p325c.p337n.p338d.p348n.C9786b;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.AbstractC9793c;
import p081h.p203i.p325c.p337n.p338d.p348n.p349c.C9795d;
import p081h.p203i.p325c.p337n.p338d.p348n.p350d.AbstractC9798b;
import p081h.p203i.p325c.p337n.p338d.p348n.p350d.C9796a;
import p081h.p203i.p325c.p337n.p338d.p348n.p350d.C9799c;
import p081h.p203i.p325c.p337n.p338d.p348n.p350d.C9800d;
import p081h.p203i.p325c.p337n.p338d.p352p.AbstractC9809e;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.AbstractC9817e;
import p081h.p203i.p325c.p337n.p338d.p352p.p353i.C9814b;
import p081h.p203i.p325c.p337n.p338d.p355q.AbstractC9829d;
import p081h.p203i.p325c.p337n.p338d.p355q.C9826a;
import p081h.p203i.p325c.p337n.p338d.p355q.C9828c;
import p081h.p203i.p325c.p337n.p338d.p355q.C9830e;
/* renamed from: h.i.c.n.d.h.k */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k.class */
public class C9558k {

    /* renamed from: b */
    public final Context f21765b;

    /* renamed from: c */
    public final C9613t f21766c;

    /* renamed from: d */
    public final C9606n f21767d;

    /* renamed from: e */
    public final C9557j0 f21768e;

    /* renamed from: f */
    public final C9550i f21769f;

    /* renamed from: g */
    public final C9767c f21770g;

    /* renamed from: h */
    public final C9621y f21771h;

    /* renamed from: i */
    public final AbstractC9776h f21772i;

    /* renamed from: j */
    public final C9533b f21773j;

    /* renamed from: k */
    public final C9786b.AbstractC9788b f21774k;

    /* renamed from: l */
    public final C9562b0 f21775l;

    /* renamed from: m */
    public final C9624b f21776m;

    /* renamed from: n */
    public final C9785a f21777n;

    /* renamed from: o */
    public final C9786b.AbstractC9787a f21778o;

    /* renamed from: p */
    public final AbstractC9512a f21779p;

    /* renamed from: q */
    public final AbstractC9829d f21780q;

    /* renamed from: r */
    public final String f21781r;

    /* renamed from: s */
    public final AbstractC9522a f21782s;

    /* renamed from: t */
    public final C9549h0 f21783t;

    /* renamed from: u */
    public C9610r f21784u;

    /* renamed from: y */
    public static final FilenameFilter f21762y = new C9575k("BeginSession");

    /* renamed from: z */
    public static final FilenameFilter f21763z = C9556j.m14882a();

    /* renamed from: A */
    public static final FilenameFilter f21756A = new C9580p();

    /* renamed from: B */
    public static final Comparator<File> f21757B = new C9581q();

    /* renamed from: C */
    public static final Comparator<File> f21758C = new C9582r();

    /* renamed from: D */
    public static final Pattern f21759D = Pattern.compile("([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+");

    /* renamed from: E */
    public static final Map<String, String> f21760E = Collections.singletonMap("X-CRASHLYTICS-SEND-FLAGS", "1");

    /* renamed from: F */
    public static final String[] f21761F = {"SessionUser", "SessionApp", "SessionOS", "SessionDevice"};

    /* renamed from: a */
    public final AtomicInteger f21764a = new AtomicInteger(0);

    /* renamed from: v */
    public C9145i<Boolean> f21785v = new C9145i<>();

    /* renamed from: w */
    public C9145i<Boolean> f21786w = new C9145i<>();

    /* renamed from: x */
    public C9145i<Void> f21787x = new C9145i<>();

    /* renamed from: h.i.c.n.d.h.k$a */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$a.class */
    public class CallableC9559a implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ long f21788a;

        /* renamed from: b */
        public final /* synthetic */ String f21789b;

        public CallableC9559a(long j, String str) {
            this.f21788a = j;
            this.f21789b = str;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            if (C9558k.this.m14793k()) {
                return null;
            }
            C9558k.this.f21776m.m14679a(this.f21788a, this.f21789b);
            return null;
        }
    }

    /* renamed from: h.i.c.n.d.h.k$a0 */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$a0.class */
    public static class C9560a0 implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return C9779b.f22196d.accept(file, str) || str.contains("SessionMissingBinaryImages");
        }
    }

    /* renamed from: h.i.c.n.d.h.k$b */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$b.class */
    public class RunnableC9561b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Date f21791a;

        /* renamed from: b */
        public final /* synthetic */ Throwable f21792b;

        /* renamed from: c */
        public final /* synthetic */ Thread f21793c;

        public RunnableC9561b(Date date, Throwable th, Thread thread) {
            this.f21791a = date;
            this.f21792b = th;
            this.f21793c = thread;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C9558k.this.m14793k()) {
                long b = C9558k.m14823b(this.f21791a);
                String f = C9558k.this.m14808f();
                if (f == null) {
                    C9513b.m15015a().m15013a("Tried to write a non-fatal exception while no session was open.");
                    return;
                }
                C9558k.this.f21783t.m14892b(this.f21792b, this.f21793c, C9558k.m14794j(f), b);
                C9558k.this.m14824b(this.f21793c, this.f21792b, f, b);
            }
        }
    }

    /* renamed from: h.i.c.n.d.h.k$b0 */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$b0.class */
    public static final class C9562b0 implements C9624b.AbstractC9626b {

        /* renamed from: a */
        public final AbstractC9776h f21795a;

        public C9562b0(AbstractC9776h hVar) {
            this.f21795a = hVar;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p342i.C9624b.AbstractC9626b
        /* renamed from: a */
        public File mo14671a() {
            File file = new File(this.f21795a.mo14293a(), "log-files");
            if (!file.exists()) {
                file.mkdirs();
            }
            return file;
        }
    }

    /* renamed from: h.i.c.n.d.h.k$c */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$c.class */
    public class CallableC9563c implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ C9557j0 f21796a;

        public CallableC9563c(C9557j0 j0Var) {
            this.f21796a = j0Var;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            String f = C9558k.this.m14808f();
            if (f == null) {
                C9513b.m15015a().m15013a("Tried to cache user data while no session was open.");
                return null;
            }
            C9558k.this.f21783t.m14899a(C9558k.m14794j(f));
            new C9534b0(C9558k.this.m14802h()).m14965a(f, this.f21796a);
            return null;
        }
    }

    /* renamed from: h.i.c.n.d.h.k$c0 */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$c0.class */
    public final class C9564c0 implements C9786b.AbstractC9789c {
        public C9564c0() {
        }

        public /* synthetic */ C9564c0(C9558k kVar, C9575k kVar2) {
            this();
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p348n.C9786b.AbstractC9789c
        /* renamed from: a */
        public File[] mo14194a() {
            return C9558k.this.m14787n();
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p348n.C9786b.AbstractC9789c
        /* renamed from: b */
        public File[] mo14193b() {
            return C9558k.this.m14789m();
        }
    }

    /* renamed from: h.i.c.n.d.h.k$d */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$d.class */
    public class CallableC9565d implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Map f21799a;

        public CallableC9565d(Map map) {
            this.f21799a = map;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            new C9534b0(C9558k.this.m14802h()).m14964a(C9558k.this.m14808f(), this.f21799a);
            return null;
        }
    }

    /* renamed from: h.i.c.n.d.h.k$d0 */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$d0.class */
    public final class C9566d0 implements C9786b.AbstractC9787a {
        public C9566d0() {
        }

        public /* synthetic */ C9566d0(C9558k kVar, C9575k kVar2) {
            this();
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p348n.C9786b.AbstractC9787a
        /* renamed from: a */
        public boolean mo14196a() {
            return C9558k.this.m14793k();
        }
    }

    /* renamed from: h.i.c.n.d.h.k$e */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$e.class */
    public class CallableC9567e implements Callable<Void> {
        public CallableC9567e() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C9558k.this.m14816d();
            return null;
        }
    }

    /* renamed from: h.i.c.n.d.h.k$e0 */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$e0.class */
    public static final class RunnableC9568e0 implements Runnable {

        /* renamed from: a */
        public final Context f21803a;

        /* renamed from: b */
        public final AbstractC9793c f21804b;

        /* renamed from: c */
        public final C9786b f21805c;

        /* renamed from: d */
        public final boolean f21806d;

        public RunnableC9568e0(Context context, AbstractC9793c cVar, C9786b bVar, boolean z) {
            this.f21803a = context;
            this.f21804b = cVar;
            this.f21805c = bVar;
            this.f21806d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C9546h.m14922b(this.f21803a)) {
                C9513b.m15015a().m15013a("Attempting to send crash report at time of crash...");
                this.f21805c.m14198a(this.f21804b, this.f21806d);
            }
        }
    }

    /* renamed from: h.i.c.n.d.h.k$f */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$f.class */
    public class RunnableC9569f implements Runnable {
        public RunnableC9569f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9558k kVar = C9558k.this;
            kVar.m14835a(kVar.m14849a(new C9560a0()));
        }
    }

    /* renamed from: h.i.c.n.d.h.k$f0 */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$f0.class */
    public static class C9570f0 implements FilenameFilter {

        /* renamed from: a */
        public final String f21808a;

        public C9570f0(String str) {
            this.f21808a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.equals(this.f21808a + ".cls")) {
                return false;
            }
            boolean z = false;
            if (str.contains(this.f21808a)) {
                z = false;
                if (!str.endsWith(".cls_temp")) {
                    z = true;
                }
            }
            return z;
        }
    }

    /* renamed from: h.i.c.n.d.h.k$g */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$g.class */
    public class C9571g implements FilenameFilter {

        /* renamed from: a */
        public final /* synthetic */ Set f21809a;

        public C9571g(C9558k kVar, Set set) {
            this.f21809a = set;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            if (str.length() < 35) {
                return false;
            }
            return this.f21809a.contains(str.substring(0, 35));
        }
    }

    /* renamed from: h.i.c.n.d.h.k$h */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$h.class */
    public class C9572h implements AbstractC9592y {

        /* renamed from: a */
        public final /* synthetic */ String f21810a;

        /* renamed from: b */
        public final /* synthetic */ String f21811b;

        /* renamed from: c */
        public final /* synthetic */ long f21812c;

        public C9572h(C9558k kVar, String str, String str2, long j) {
            this.f21810a = str;
            this.f21811b = str2;
            this.f21812c = j;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.C9558k.AbstractC9592y
        /* renamed from: a */
        public void mo14771a(C9781c cVar) throws Exception {
            C9783d.m14220a(cVar, this.f21810a, this.f21811b, this.f21812c);
        }
    }

    /* renamed from: h.i.c.n.d.h.k$i */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$i.class */
    public class C9573i implements AbstractC9592y {

        /* renamed from: a */
        public final /* synthetic */ String f21813a;

        /* renamed from: b */
        public final /* synthetic */ String f21814b;

        /* renamed from: c */
        public final /* synthetic */ String f21815c;

        /* renamed from: d */
        public final /* synthetic */ String f21816d;

        /* renamed from: e */
        public final /* synthetic */ int f21817e;

        public C9573i(String str, String str2, String str3, String str4, int i) {
            this.f21813a = str;
            this.f21814b = str2;
            this.f21815c = str3;
            this.f21816d = str4;
            this.f21817e = i;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.C9558k.AbstractC9592y
        /* renamed from: a */
        public void mo14771a(C9781c cVar) throws Exception {
            C9783d.m14218a(cVar, this.f21813a, this.f21814b, this.f21815c, this.f21816d, this.f21817e, C9558k.this.f21781r);
        }
    }

    /* renamed from: h.i.c.n.d.h.k$j */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$j.class */
    public class C9574j implements AbstractC9592y {

        /* renamed from: a */
        public final /* synthetic */ String f21819a;

        /* renamed from: b */
        public final /* synthetic */ String f21820b;

        /* renamed from: c */
        public final /* synthetic */ boolean f21821c;

        public C9574j(C9558k kVar, String str, String str2, boolean z) {
            this.f21819a = str;
            this.f21820b = str2;
            this.f21821c = z;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.C9558k.AbstractC9592y
        /* renamed from: a */
        public void mo14771a(C9781c cVar) throws Exception {
            C9783d.m14217a(cVar, this.f21819a, this.f21820b, this.f21821c);
        }
    }

    /* renamed from: h.i.c.n.d.h.k$k */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$k.class */
    public class C9575k extends C9593z {
        public C9575k(String str) {
            super(str);
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.C9558k.C9593z, java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return super.accept(file, str) && str.endsWith(".cls");
        }
    }

    /* renamed from: h.i.c.n.d.h.k$l */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$l.class */
    public class C9576l implements AbstractC9592y {

        /* renamed from: a */
        public final /* synthetic */ int f21822a;

        /* renamed from: b */
        public final /* synthetic */ String f21823b;

        /* renamed from: c */
        public final /* synthetic */ int f21824c;

        /* renamed from: d */
        public final /* synthetic */ long f21825d;

        /* renamed from: e */
        public final /* synthetic */ long f21826e;

        /* renamed from: f */
        public final /* synthetic */ boolean f21827f;

        /* renamed from: g */
        public final /* synthetic */ int f21828g;

        /* renamed from: h */
        public final /* synthetic */ String f21829h;

        /* renamed from: i */
        public final /* synthetic */ String f21830i;

        public C9576l(C9558k kVar, int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
            this.f21822a = i;
            this.f21823b = str;
            this.f21824c = i2;
            this.f21825d = j;
            this.f21826e = j2;
            this.f21827f = z;
            this.f21828g = i3;
            this.f21829h = str2;
            this.f21830i = str3;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.C9558k.AbstractC9592y
        /* renamed from: a */
        public void mo14771a(C9781c cVar) throws Exception {
            C9783d.m14228a(cVar, this.f21822a, this.f21823b, this.f21824c, this.f21825d, this.f21826e, this.f21827f, this.f21828g, this.f21829h, this.f21830i);
        }
    }

    /* renamed from: h.i.c.n.d.h.k$m */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$m.class */
    public class C9577m implements AbstractC9592y {

        /* renamed from: a */
        public final /* synthetic */ C9557j0 f21831a;

        public C9577m(C9558k kVar, C9557j0 j0Var) {
            this.f21831a = j0Var;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.C9558k.AbstractC9592y
        /* renamed from: a */
        public void mo14771a(C9781c cVar) throws Exception {
            C9783d.m14219a(cVar, this.f21831a.m14878b(), (String) null, (String) null);
        }
    }

    /* renamed from: h.i.c.n.d.h.k$n */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$n.class */
    public class C9578n implements AbstractC9592y {

        /* renamed from: a */
        public final /* synthetic */ String f21832a;

        public C9578n(String str) {
            this.f21832a = str;
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.C9558k.AbstractC9592y
        /* renamed from: a */
        public void mo14771a(C9781c cVar) throws Exception {
            C9783d.m14221a(cVar, this.f21832a);
        }
    }

    /* renamed from: h.i.c.n.d.h.k$o */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$o.class */
    public class CallableC9579o implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ long f21833a;

        public CallableC9579o(long j) {
            this.f21833a = j;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            Bundle bundle = new Bundle();
            bundle.putInt("fatal", 1);
            bundle.putLong("timestamp", this.f21833a);
            C9558k.this.f21782s.mo14976a("_ae", bundle);
            return null;
        }
    }

    /* renamed from: h.i.c.n.d.h.k$p */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$p.class */
    public class C9580p implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.length() == 39 && str.endsWith(".cls");
        }
    }

    /* renamed from: h.i.c.n.d.h.k$q */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$q.class */
    public class C9581q implements Comparator<File> {
        /* renamed from: a */
        public int compare(File file, File file2) {
            return file2.getName().compareTo(file.getName());
        }
    }

    /* renamed from: h.i.c.n.d.h.k$r */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$r.class */
    public class C9582r implements Comparator<File> {
        /* renamed from: a */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    /* renamed from: h.i.c.n.d.h.k$s */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$s.class */
    public class C9583s implements C9610r.AbstractC9611a {
        public C9583s() {
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p341h.C9610r.AbstractC9611a
        /* renamed from: a */
        public void mo14712a(@NonNull AbstractC9809e eVar, @NonNull Thread thread, @NonNull Throwable th) {
            C9558k.this.m14857a(eVar, thread, th);
        }
    }

    /* renamed from: h.i.c.n.d.h.k$t */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$t.class */
    public class CallableC9584t implements Callable<AbstractC9143h<Void>> {

        /* renamed from: a */
        public final /* synthetic */ Date f21836a;

        /* renamed from: b */
        public final /* synthetic */ Throwable f21837b;

        /* renamed from: c */
        public final /* synthetic */ Thread f21838c;

        /* renamed from: d */
        public final /* synthetic */ AbstractC9809e f21839d;

        /* renamed from: h.i.c.n.d.h.k$t$a */
        /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$t$a.class */
        public class C9585a implements AbstractC9141g<C9814b, Void> {

            /* renamed from: a */
            public final /* synthetic */ Executor f21841a;

            public C9585a(Executor executor) {
                this.f21841a = executor;
            }

            @NonNull
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public AbstractC9143h<Void> mo13756a(@Nullable C9814b bVar) throws Exception {
                if (bVar == null) {
                    C9513b.m15015a().m15007d("Received null app settings, cannot send reports at crash time.");
                    return C9148k.m15999a((Object) null);
                }
                C9558k.this.m14856a(bVar, true);
                return C9148k.m15996a((AbstractC9143h<?>[]) new AbstractC9143h[]{C9558k.this.m14783q(), C9558k.this.f21783t.m14893a(this.f21841a, EnumC9614u.m14702a(bVar))});
            }
        }

        public CallableC9584t(Date date, Throwable th, Thread thread, AbstractC9809e eVar) {
            this.f21836a = date;
            this.f21837b = th;
            this.f21838c = thread;
            this.f21839d = eVar;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public AbstractC9143h<Void> call() throws Exception {
            long b = C9558k.m14823b(this.f21836a);
            String f = C9558k.this.m14808f();
            if (f == null) {
                C9513b.m15015a().m15011b("Tried to write a fatal exception while no session was open.");
                return C9148k.m15999a((Object) null);
            }
            C9558k.this.f21767d.m14741a();
            C9558k.this.f21783t.m14896a(this.f21837b, this.f21838c, C9558k.m14794j(f), b);
            C9558k.this.m14838a(this.f21838c, this.f21837b, f, b);
            C9558k.this.m14872a(this.f21836a.getTime());
            AbstractC9817e a = this.f21839d.mo14147a();
            int i = a.mo14136b().f22277a;
            int i2 = a.mo14136b().f22278b;
            C9558k.this.m14874a(i);
            C9558k.this.m14816d();
            C9558k.this.m14815d(i2);
            if (!C9558k.this.f21766c.m14707b()) {
                return C9148k.m15999a((Object) null);
            }
            Executor b2 = C9558k.this.f21769f.m14886b();
            return this.f21839d.mo14146b().mo16015a(b2, new C9585a(b2));
        }
    }

    /* renamed from: h.i.c.n.d.h.k$u */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$u.class */
    public class C9586u implements AbstractC9141g<Void, Boolean> {
        public C9586u(C9558k kVar) {
        }

        @NonNull
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public AbstractC9143h<Boolean> mo13756a(@Nullable Void r3) throws Exception {
            return C9148k.m15999a(true);
        }
    }

    /* renamed from: h.i.c.n.d.h.k$v */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$v.class */
    public class C9587v implements AbstractC9141g<Boolean, Void> {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9143h f21843a;

        /* renamed from: b */
        public final /* synthetic */ float f21844b;

        /* renamed from: h.i.c.n.d.h.k$v$a */
        /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$v$a.class */
        public class CallableC9588a implements Callable<AbstractC9143h<Void>> {

            /* renamed from: a */
            public final /* synthetic */ Boolean f21846a;

            /* renamed from: h.i.c.n.d.h.k$v$a$a */
            /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$v$a$a.class */
            public class C9589a implements AbstractC9141g<C9814b, Void> {

                /* renamed from: a */
                public final /* synthetic */ List f21848a;

                /* renamed from: b */
                public final /* synthetic */ boolean f21849b;

                /* renamed from: c */
                public final /* synthetic */ Executor f21850c;

                public C9589a(List list, boolean z, Executor executor) {
                    this.f21848a = list;
                    this.f21849b = z;
                    this.f21850c = executor;
                }

                @NonNull
                /* renamed from: a  reason: avoid collision after fix types in other method */
                public AbstractC9143h<Void> mo13756a(@Nullable C9814b bVar) throws Exception {
                    if (bVar == null) {
                        C9513b.m15015a().m15007d("Received null app settings, cannot send reports during app startup.");
                        return C9148k.m15999a((Object) null);
                    }
                    for (AbstractC9793c cVar : this.f21848a) {
                        if (cVar.getType() == AbstractC9793c.EnumC9794a.JAVA) {
                            C9558k.m14826b(bVar.f22272e, cVar.mo14187d());
                        }
                    }
                    C9558k.this.m14783q();
                    C9558k.this.f21774k.mo14195a(bVar).m14197a(this.f21848a, this.f21849b, C9587v.this.f21844b);
                    C9558k.this.f21783t.m14893a(this.f21850c, EnumC9614u.m14702a(bVar));
                    C9558k.this.f21787x.m16004b((C9145i<Void>) null);
                    return C9148k.m15999a((Object) null);
                }
            }

            public CallableC9588a(Boolean bool) {
                this.f21846a = bool;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public AbstractC9143h<Void> call() throws Exception {
                List<AbstractC9793c> b = C9558k.this.f21777n.m14202b();
                if (!this.f21846a.booleanValue()) {
                    C9513b.m15015a().m15013a("Reports are being deleted.");
                    C9558k.m14817c(C9558k.this.m14791l());
                    C9558k.this.f21777n.m14203a(b);
                    C9558k.this.f21783t.m14905a();
                    C9558k.this.f21787x.m16004b((C9145i<Void>) null);
                    return C9148k.m15999a((Object) null);
                }
                C9513b.m15015a().m15013a("Reports are being sent.");
                boolean booleanValue = this.f21846a.booleanValue();
                C9558k.this.f21766c.m14708a(booleanValue);
                Executor b2 = C9558k.this.f21769f.m14886b();
                return C9587v.this.f21843a.mo16015a(b2, new C9589a(b, booleanValue, b2));
            }
        }

        public C9587v(AbstractC9143h hVar, float f) {
            this.f21843a = hVar;
            this.f21844b = f;
        }

        @NonNull
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public AbstractC9143h<Void> mo13756a(@Nullable Boolean bool) throws Exception {
            return C9558k.this.f21769f.m14883c(new CallableC9588a(bool));
        }
    }

    /* renamed from: h.i.c.n.d.h.k$w */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$w.class */
    public class C9590w implements C9786b.AbstractC9788b {
        public C9590w() {
        }

        @Override // p081h.p203i.p325c.p337n.p338d.p348n.C9786b.AbstractC9788b
        /* renamed from: a */
        public C9786b mo14195a(@NonNull C9814b bVar) {
            String str = bVar.f22270c;
            String str2 = bVar.f22271d;
            return new C9786b(bVar.f22272e, C9558k.this.f21773j.f21705a, EnumC9614u.m14702a(bVar), C9558k.this.f21777n, C9558k.this.m14843a(str, str2), C9558k.this.f21778o);
        }
    }

    /* renamed from: h.i.c.n.d.h.k$x */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$x.class */
    public static class C9591x implements FilenameFilter {
        public C9591x() {
        }

        public /* synthetic */ C9591x(C9575k kVar) {
            this();
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return !C9558k.f21756A.accept(file, str) && C9558k.f21759D.matcher(str).matches();
        }
    }

    /* renamed from: h.i.c.n.d.h.k$y */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$y.class */
    public interface AbstractC9592y {
        /* renamed from: a */
        void mo14771a(C9781c cVar) throws Exception;
    }

    /* renamed from: h.i.c.n.d.h.k$z */
    /* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/k$z.class */
    public static class C9593z implements FilenameFilter {

        /* renamed from: a */
        public final String f21853a;

        public C9593z(String str) {
            this.f21853a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.contains(this.f21853a) && !str.endsWith(".cls_temp");
        }
    }

    public C9558k(Context context, C9550i iVar, C9767c cVar, C9621y yVar, C9613t tVar, AbstractC9776h hVar, C9606n nVar, C9533b bVar, C9785a aVar, C9786b.AbstractC9788b bVar2, AbstractC9512a aVar2, AbstractC9522a aVar3, AbstractC9809e eVar) {
        new AtomicBoolean(false);
        this.f21765b = context;
        this.f21769f = iVar;
        this.f21770g = cVar;
        this.f21771h = yVar;
        this.f21766c = tVar;
        this.f21772i = hVar;
        this.f21767d = nVar;
        this.f21773j = bVar;
        if (bVar2 != null) {
            this.f21774k = bVar2;
        } else {
            this.f21774k = m14832b();
        }
        this.f21779p = aVar2;
        this.f21781r = bVar.f21711g.mo14120a();
        this.f21782s = aVar3;
        this.f21768e = new C9557j0();
        this.f21775l = new C9562b0(hVar);
        this.f21776m = new C9624b(context, this.f21775l);
        this.f21777n = aVar == null ? new C9785a(new C9564c0(this, null)) : aVar;
        this.f21778o = new C9566d0(this, null);
        this.f21780q = new C9826a(1024, new C9828c(10));
        this.f21783t = C9549h0.m14903a(context, yVar, hVar, bVar, this.f21776m, this.f21768e, this.f21780q, eVar);
    }

    /* renamed from: a */
    public static String m14855a(File file) {
        return file.getName().substring(0, 35);
    }

    @NonNull
    /* renamed from: a */
    public static List<AbstractC9537c0> m14870a(AbstractC9517d dVar, String str, Context context, File file, byte[] bArr) {
        C9534b0 b0Var = new C9534b0(file);
        File b = b0Var.m14961b(str);
        File a = b0Var.m14966a(str);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C9542f("logs_file", "logs", bArr));
        arrayList.add(new C9620x("crash_meta_file", TtmlNode.TAG_METADATA, dVar.mo14995c()));
        arrayList.add(new C9620x("session_meta_file", "session", dVar.mo14992f()));
        arrayList.add(new C9620x("app_meta_file", "app", dVar.mo14994d()));
        arrayList.add(new C9620x("device_meta_file", "device", dVar.mo14997a()));
        arrayList.add(new C9620x("os_meta_file", "os", dVar.mo14993e()));
        arrayList.add(new C9620x("minidump_file", "minidump", dVar.mo14996b()));
        arrayList.add(new C9620x("user_meta_file", "user", b));
        arrayList.add(new C9620x("keys_file", SavedStateHandle.KEYS, a));
        return arrayList;
    }

    /* renamed from: a */
    public static void m14861a(C9781c cVar, File file) throws IOException {
        Throwable th;
        FileInputStream fileInputStream;
        if (!file.exists()) {
            C9513b a = C9513b.m15015a();
            a.m15011b("Tried to include a file that doesn't exist: " + file.getName());
            return;
        }
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            m14848a(fileInputStream, cVar, (int) file.length());
            C9546h.m14934a(fileInputStream, "Failed to close file input stream.");
        } catch (Throwable th3) {
            th = th3;
            fileInputStream2 = fileInputStream;
            C9546h.m14934a(fileInputStream2, "Failed to close file input stream.");
            throw th;
        }
    }

    /* renamed from: a */
    public static void m14858a(C9781c cVar, File[] fileArr, String str) {
        Arrays.sort(fileArr, C9546h.f21728c);
        for (File file : fileArr) {
            try {
                C9513b.m15015a().m15013a(String.format(Locale.US, "Found Non Fatal for session ID %s in %s ", str, file.getName()));
                m14861a(cVar, file);
            } catch (Exception e) {
                C9513b.m15015a().m15010b("Error writting non-fatal to session.", e);
            }
        }
    }

    /* renamed from: a */
    public static void m14854a(@NonNull File file, @NonNull AbstractC9592y yVar) throws Exception {
        Throwable th;
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        C9781c cVar = null;
        cVar = null;
        try {
            fileOutputStream2 = new FileOutputStream(file, true);
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = null;
        }
        try {
            C9781c a = C9781c.m14272a(fileOutputStream2);
            cVar = a;
            yVar.mo14771a(a);
            C9546h.m14932a(a, "Failed to flush to append to " + file.getPath());
            C9546h.m14934a((Closeable) fileOutputStream2, "Failed to close " + file.getPath());
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = fileOutputStream2;
            C9546h.m14932a(cVar, "Failed to flush to append to " + file.getPath());
            C9546h.m14934a((Closeable) fileOutputStream, "Failed to close " + file.getPath());
            throw th;
        }
    }

    /* renamed from: a */
    public static void m14848a(InputStream inputStream, C9781c cVar, int i) throws IOException {
        int read;
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < bArr.length && (read = inputStream.read(bArr, i2, bArr.length - i2)) >= 0) {
            i2 += read;
        }
        cVar.m14269a(bArr);
    }

    /* renamed from: a */
    public static File[] m14853a(File file, FilenameFilter filenameFilter) {
        return m14812d(file.listFiles(filenameFilter));
    }

    /* renamed from: b */
    public static long m14823b(Date date) {
        return date.getTime() / 1000;
    }

    /* renamed from: b */
    public static void m14826b(@Nullable String str, @NonNull File file) throws Exception {
        if (str != null) {
            m14854a(file, new C9578n(str));
        }
    }

    /* renamed from: c */
    public static void m14817c(File[] fileArr) {
        if (fileArr != null) {
            for (File file : fileArr) {
                file.delete();
            }
        }
    }

    /* renamed from: d */
    public static File[] m14812d(File[] fileArr) {
        File[] fileArr2 = fileArr;
        if (fileArr == null) {
            fileArr2 = new File[0];
        }
        return fileArr2;
    }

    @NonNull
    /* renamed from: j */
    public static String m14794j(@NonNull String str) {
        return str.replaceAll("-", "");
    }

    /* renamed from: u */
    public static boolean m14779u() {
        try {
            Class.forName("com.google.firebase.crash.FirebaseCrash");
            return true;
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: v */
    public static long m14778v() {
        return m14823b(new Date());
    }

    /* renamed from: a */
    public AbstractC9143h<Void> m14875a(float f, AbstractC9143h<C9814b> hVar) {
        if (!this.f21777n.m14205a()) {
            C9513b.m15015a().m15013a("No reports are available.");
            this.f21785v.m16004b((C9145i<Boolean>) false);
            return C9148k.m15999a((Object) null);
        }
        C9513b.m15015a().m15013a("Unsent reports are available.");
        return m14781s().mo16022a(new C9587v(hVar, f));
    }

    /* renamed from: a */
    public final AbstractC9798b m14843a(String str, String str2) {
        String b = C9546h.m14921b(m14811e(), "com.crashlytics.ApiEndpoint");
        return new C9796a(new C9799c(b, str, this.f21770g, C9601m.m14742e()), new C9800d(b, str2, this.f21770g, C9601m.m14742e()));
    }

    /* renamed from: a */
    public void m14876a() {
        this.f21769f.m14888a(new RunnableC9569f());
    }

    /* renamed from: a */
    public void m14874a(int i) throws Exception {
        m14873a(i, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final void m14873a(int i, boolean z) throws Exception {
        m14820c((z ? 1 : 0) + 8);
        File[] p = m14784p();
        if (p.length <= z) {
            C9513b.m15015a().m15013a("No open sessions to be closed.");
            return;
        }
        String a = m14855a(p[z ? 1 : 0]);
        m14800h(a);
        if (this.f21779p.mo14998d(a)) {
            m14847a(a);
            if (!this.f21779p.mo15005a(a)) {
                C9513b a2 = C9513b.m15015a();
                a2.m15013a("Could not finalize native session: " + a);
            }
        }
        m14834a(p, (int) z, i);
        String str = null;
        if (z != 0) {
            str = m14794j(m14855a(p[0]));
        }
        this.f21783t.m14904a(m14778v(), str);
    }

    /* renamed from: a */
    public final void m14872a(long j) {
        try {
            File h = m14802h();
            new File(h, ".ae" + j).createNewFile();
        } catch (IOException e) {
            C9513b.m15015a().m15013a("Could not write app exception marker.");
        }
    }

    /* renamed from: a */
    public void m14871a(long j, String str) {
        this.f21769f.m14885b(new CallableC9559a(j, str));
    }

    /* renamed from: a */
    public final void m14869a(C9557j0 j0Var) {
        this.f21769f.m14885b(new CallableC9563c(j0Var));
    }

    /* renamed from: a */
    public final void m14862a(C9779b bVar) {
        if (bVar != null) {
            try {
                bVar.m14284a();
            } catch (IOException e) {
                C9513b.m15015a().m15010b("Error closing session file stream in the presence of an exception", e);
            }
        }
    }

    /* renamed from: a */
    public final void m14860a(C9781c cVar, String str) throws IOException {
        String[] strArr;
        for (String str2 : f21761F) {
            File[] a = m14849a(new C9593z(str + str2 + ".cls"));
            if (a.length == 0) {
                C9513b.m15015a().m15013a("Can't find " + str2 + " data for session ID " + str);
            } else {
                C9513b.m15015a().m15013a("Collecting " + str2 + " data for session ID " + str);
                m14861a(cVar, a[0]);
            }
        }
    }

    /* renamed from: a */
    public final void m14859a(C9781c cVar, Thread thread, Throwable th, long j, String str, boolean z) throws Exception {
        Thread[] threadArr;
        Map<String, String> map;
        C9830e eVar = new C9830e(th, this.f21780q);
        Context e = m14811e();
        C9540e a = C9540e.m14955a(e);
        Float a2 = a.m14956a();
        int b = a.m14953b();
        boolean f = C9546h.m14914f(e);
        int i = e.getResources().getConfiguration().orientation;
        long b2 = C9546h.m14923b();
        long a3 = C9546h.m14939a(e);
        long a4 = C9546h.m14930a(Environment.getDataDirectory().getPath());
        ActivityManager.RunningAppProcessInfo a5 = C9546h.m14929a(e.getPackageName(), e);
        LinkedList linkedList = new LinkedList();
        StackTraceElement[] stackTraceElementArr = eVar.f22301c;
        String str2 = this.f21773j.f21706b;
        String b3 = this.f21771h.m14687b();
        int i2 = 0;
        if (z) {
            Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
            threadArr = new Thread[allStackTraces.size()];
            for (Map.Entry<Thread, StackTraceElement[]> entry : allStackTraces.entrySet()) {
                threadArr[i2] = entry.getKey();
                linkedList.add(this.f21780q.mo14121a(entry.getValue()));
                i2++;
            }
        } else {
            threadArr = new Thread[0];
        }
        if (!C9546h.m14936a(e, "com.crashlytics.CollectCustomKeys", true)) {
            map = new TreeMap<>();
        } else {
            Map<String, String> a6 = this.f21768e.m14881a();
            map = a6;
            if (a6 != null) {
                map = a6;
                if (a6.size() > 1) {
                    map = new TreeMap<>(a6);
                }
            }
        }
        C9783d.m14227a(cVar, j, str, eVar, thread, stackTraceElementArr, threadArr, linkedList, 8, map, this.f21776m.m14674b(), a5, i, b3, str2, a2, b, f, b2 - a3, a4);
        this.f21776m.m14680a();
    }

    /* renamed from: a */
    public void m14857a(@NonNull AbstractC9809e eVar, @NonNull Thread thread, @NonNull Throwable th) {
        synchronized (this) {
            C9513b a = C9513b.m15015a();
            a.m15013a("Crashlytics is handling uncaught exception \"" + th + "\" from thread " + thread.getName());
            try {
                C9596l0.m14767a(this.f21769f.m14883c(new CallableC9584t(new Date(), th, thread, eVar)));
            } catch (Exception e) {
            }
        }
    }

    /* renamed from: a */
    public final void m14856a(@NonNull C9814b bVar, boolean z) throws Exception {
        File[] m;
        Context e = m14811e();
        C9786b a = this.f21774k.mo14195a(bVar);
        for (File file : m14789m()) {
            m14826b(bVar.f22272e, file);
            this.f21769f.m14888a(new RunnableC9568e0(e, new C9795d(file, f21760E), a, z));
        }
    }

    /* renamed from: a */
    public final void m14851a(File file, String str, int i) {
        C9513b a = C9513b.m15015a();
        a.m15013a("Collecting session parts for ID " + str);
        File[] a2 = m14849a(new C9593z(str + "SessionCrash"));
        boolean z = a2 != null && a2.length > 0;
        C9513b.m15015a().m15013a(String.format(Locale.US, "Session %s has fatal exception: %s", str, Boolean.valueOf(z)));
        File[] a3 = m14849a(new C9593z(str + "SessionEvent"));
        boolean z2 = a3 != null && a3.length > 0;
        C9513b.m15015a().m15013a(String.format(Locale.US, "Session %s has non-fatal exceptions: %s", str, Boolean.valueOf(z2)));
        if (z || z2) {
            m14850a(file, str, m14841a(str, a3, i), z ? a2[0] : null);
        } else {
            C9513b a4 = C9513b.m15015a();
            a4.m15013a("No events present for session ID " + str);
        }
        C9513b a5 = C9513b.m15015a();
        a5.m15013a("Removing session part files for ID " + str);
        m14817c(m14818c(str));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.io.Flushable] */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m14850a(java.io.File r6, java.lang.String r7, java.io.File[] r8, java.io.File r9) {
        /*
            Method dump skipped, instructions count: 525
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p325c.p337n.p338d.p341h.C9558k.m14850a(java.io.File, java.lang.String, java.io.File[], java.io.File):void");
    }

    /* renamed from: a */
    public final void m14847a(String str) {
        C9513b a = C9513b.m15015a();
        a.m15013a("Finalizing native report for session " + str);
        AbstractC9517d b = this.f21779p.mo15000b(str);
        File b2 = b.mo14996b();
        if (b2 == null || !b2.exists()) {
            C9513b a2 = C9513b.m15015a();
            a2.m15007d("No minidump data found for session " + str);
            return;
        }
        long lastModified = b2.lastModified();
        C9624b bVar = new C9624b(this.f21765b, this.f21775l, str);
        File file = new File(m14799i(), str);
        if (!file.mkdirs()) {
            C9513b.m15015a().m15013a("Couldn't create native sessions directory");
            return;
        }
        m14872a(lastModified);
        List<AbstractC9537c0> a3 = m14870a(b, str, m14811e(), m14802h(), bVar.m14674b());
        C9539d0.m14958a(file, a3);
        this.f21783t.m14897a(m14794j(str), a3);
        bVar.m14680a();
    }

    /* renamed from: a */
    public final void m14846a(String str, int i) {
        File h = m14802h();
        C9596l0.m14762a(h, new C9593z(str + "SessionEvent"), i, f21758C);
    }

    /* renamed from: a */
    public final void m14845a(String str, long j) throws Exception {
        String format = String.format(Locale.US, "Crashlytics Android SDK/%s", C9601m.m14742e());
        m14842a(str, "BeginSession", new C9572h(this, str, format, j));
        this.f21779p.mo15003a(str, format, j);
    }

    /* renamed from: a */
    public final void m14842a(String str, String str2, AbstractC9592y yVar) throws Exception {
        Throwable th;
        C9779b bVar;
        C9779b bVar2;
        C9781c cVar = null;
        cVar = null;
        try {
            File h = m14802h();
            bVar2 = new C9779b(h, str + str2);
        } catch (Throwable th2) {
            th = th2;
            bVar = null;
        }
        try {
            C9781c a = C9781c.m14272a(bVar2);
            cVar = a;
            yVar.mo14771a(a);
            C9546h.m14932a(a, "Failed to flush to session " + str2 + " file.");
            C9546h.m14934a((Closeable) bVar2, "Failed to close session " + str2 + " file.");
        } catch (Throwable th3) {
            th = th3;
            bVar = bVar2;
            C9546h.m14932a(cVar, "Failed to flush to session " + str2 + " file.");
            C9546h.m14934a((Closeable) bVar, "Failed to close session " + str2 + " file.");
            throw th;
        }
    }

    /* renamed from: a */
    public void m14840a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, AbstractC9809e eVar) {
        m14782r();
        this.f21784u = new C9610r(new C9583s(), eVar, uncaughtExceptionHandler);
        Thread.setDefaultUncaughtExceptionHandler(this.f21784u);
    }

    /* renamed from: a */
    public void m14839a(@NonNull Thread thread, @NonNull Throwable th) {
        this.f21769f.m14888a(new RunnableC9561b(new Date(), th, thread));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.io.Flushable] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v7 */
    /* renamed from: a */
    public final void m14838a(@NonNull Thread thread, @NonNull Throwable th, @NonNull String str, long j) {
        Throwable th2;
        C9779b bVar;
        Exception e;
        C9779b bVar2 = null;
        str = 0;
        C9781c cVar = null;
        try {
            try {
                C9779b bVar3 = new C9779b(m14802h(), ((String) str) + "SessionCrash");
                try {
                    C9781c a = C9781c.m14272a(bVar3);
                    cVar = a;
                    str = a;
                    bVar2 = bVar3;
                    m14859a(a, thread, th, j, "crash", true);
                    cVar = a;
                    bVar = bVar3;
                } catch (Exception e2) {
                    e = e2;
                    bVar = bVar3;
                    str = cVar;
                    bVar2 = bVar;
                    C9513b.m15015a().m15010b("An error occurred in the fatal exception logger", e);
                    C9546h.m14932a(cVar, "Failed to flush to session begin file.");
                    C9546h.m14934a((Closeable) bVar, "Failed to close fatal exception file output stream.");
                }
            } catch (Throwable th3) {
                th2 = th3;
                C9546h.m14932a((Flushable) str, "Failed to flush to session begin file.");
                C9546h.m14934a((Closeable) bVar2, "Failed to close fatal exception file output stream.");
                throw th2;
            }
        } catch (Exception e3) {
            e = e3;
            bVar = null;
            cVar = null;
        } catch (Throwable th4) {
            th2 = th4;
            bVar2 = null;
            C9546h.m14932a((Flushable) str, "Failed to flush to session begin file.");
            C9546h.m14934a((Closeable) bVar2, "Failed to close fatal exception file output stream.");
            throw th2;
        }
        C9546h.m14932a(cVar, "Failed to flush to session begin file.");
        C9546h.m14934a((Closeable) bVar, "Failed to close fatal exception file output stream.");
    }

    /* renamed from: a */
    public final void m14836a(Map<String, String> map) {
        this.f21769f.m14885b(new CallableC9565d(map));
    }

    /* renamed from: a */
    public void m14835a(File[] fileArr) {
        File[] a;
        HashSet hashSet = new HashSet();
        for (File file : fileArr) {
            C9513b.m15015a().m15013a("Found invalid session part file: " + file);
            hashSet.add(m14855a(file));
        }
        if (!hashSet.isEmpty()) {
            for (File file2 : m14849a(new C9571g(this, hashSet))) {
                C9513b.m15015a().m15013a("Deleting invalid session file: " + file2);
                file2.delete();
            }
        }
    }

    /* renamed from: a */
    public final void m14834a(File[] fileArr, int i, int i2) {
        C9513b.m15015a().m15013a("Closing open sessions.");
        while (i < fileArr.length) {
            File file = fileArr[i];
            String a = m14855a(file);
            C9513b a2 = C9513b.m15015a();
            a2.m15013a("Closing session: " + a);
            m14851a(file, a, i2);
            i++;
        }
    }

    /* renamed from: a */
    public final void m14833a(File[] fileArr, Set<String> set) {
        for (File file : fileArr) {
            String name = file.getName();
            Matcher matcher = f21759D.matcher(name);
            if (!matcher.matches()) {
                C9513b.m15015a().m15013a("Deleting unknown file: " + name);
                file.delete();
            } else if (!set.contains(matcher.group(1))) {
                C9513b.m15015a().m15013a("Trimming session file: " + name);
                file.delete();
            }
        }
    }

    /* renamed from: a */
    public final File[] m14849a(FilenameFilter filenameFilter) {
        return m14853a(m14802h(), filenameFilter);
    }

    /* renamed from: a */
    public final File[] m14841a(String str, File[] fileArr, int i) {
        File[] fileArr2 = fileArr;
        if (fileArr.length > i) {
            C9513b.m15015a().m15013a(String.format(Locale.US, "Trimming down to %d logged exceptions.", Integer.valueOf(i)));
            m14846a(str, i);
            fileArr2 = m14849a(new C9593z(str + "SessionEvent"));
        }
        return fileArr2;
    }

    /* renamed from: b */
    public final AbstractC9143h<Void> m14830b(long j) {
        if (!m14779u()) {
            return C9148k.m15997a(new ScheduledThreadPoolExecutor(1), new CallableC9579o(j));
        }
        C9513b.m15015a().m15013a("Skipping logging Crashlytics event to Firebase, FirebaseCrash exists");
        return C9148k.m15999a((Object) null);
    }

    /* renamed from: b */
    public final C9557j0 m14827b(String str) {
        return m14793k() ? this.f21768e : new C9534b0(m14802h()).m14960c(str);
    }

    /* renamed from: b */
    public final C9786b.AbstractC9788b m14832b() {
        return new C9590w();
    }

    /* renamed from: b */
    public void m14825b(String str, String str2) {
        try {
            this.f21768e.m14879a(str, str2);
            m14836a(this.f21768e.m14881a());
        } catch (IllegalArgumentException e) {
            Context context = this.f21765b;
            if (context == null || !C9546h.m14911i(context)) {
                C9513b.m15015a().m15011b("Attempting to set custom attribute with null key, ignoring.");
                return;
            }
            throw e;
        }
    }

    /* renamed from: b */
    public final void m14824b(@NonNull Thread thread, @NonNull Throwable th, @NonNull String str, long j) {
        Throwable th2;
        C9781c cVar;
        Exception e;
        C9781c a;
        C9779b bVar = null;
        C9781c cVar2 = null;
        try {
            try {
                C9513b.m15015a().m15013a("Crashlytics is logging non-fatal exception \"" + th + "\" from thread " + thread.getName());
                bVar = new C9779b(m14802h(), str + "SessionEvent" + C9546h.m14940a(this.f21764a.getAndIncrement()));
                cVar2 = null;
                bVar = bVar;
                try {
                    a = C9781c.m14272a(bVar);
                } catch (Exception e2) {
                    e = e2;
                    cVar = null;
                }
            } catch (Throwable th3) {
                th2 = th3;
            }
        } catch (Exception e3) {
            e = e3;
            bVar = null;
            cVar = null;
        } catch (Throwable th4) {
            th2 = th4;
            bVar = null;
        }
        try {
            try {
                m14859a(a, thread, th, j, "error", false);
                C9546h.m14932a(a, "Failed to flush to non-fatal file.");
            } catch (Exception e4) {
                e = e4;
                cVar = a;
                cVar2 = cVar;
                bVar = bVar;
                C9513b.m15015a().m15010b("An error occurred in the non-fatal exception logger", e);
                C9546h.m14932a(cVar, "Failed to flush to non-fatal file.");
                C9546h.m14934a((Closeable) bVar, "Failed to close non-fatal file output stream.");
                m14846a(str, 64);
                return;
            } catch (Throwable th5) {
                th2 = th5;
                cVar2 = a;
                C9546h.m14932a(cVar2, "Failed to flush to non-fatal file.");
                C9546h.m14934a((Closeable) bVar, "Failed to close non-fatal file output stream.");
                throw th2;
            }
            m14846a(str, 64);
            return;
        } catch (Exception e5) {
            C9513b.m15015a().m15010b("An error occurred when trimming non-fatal files.", e5);
            return;
        }
        C9546h.m14934a((Closeable) bVar, "Failed to close non-fatal file output stream.");
    }

    /* renamed from: b */
    public boolean m14831b(int i) {
        this.f21769f.m14891a();
        if (m14793k()) {
            C9513b.m15015a().m15013a("Skipping session finalization because a crash has already occurred.");
            return Boolean.FALSE.booleanValue();
        }
        C9513b.m15015a().m15013a("Finalizing previously open sessions.");
        try {
            m14873a(i, true);
            C9513b.m15015a().m15013a("Closed all previously open sessions");
            return true;
        } catch (Exception e) {
            C9513b.m15015a().m15010b("Unable to finalize previously open sessions.", e);
            return false;
        }
    }

    /* renamed from: c */
    public final void m14820c(int i) {
        HashSet hashSet = new HashSet();
        File[] p = m14784p();
        int min = Math.min(i, p.length);
        for (int i2 = 0; i2 < min; i2++) {
            hashSet.add(m14855a(p[i2]));
        }
        this.f21776m.m14675a(hashSet);
        m14833a(m14849a(new C9591x(null)), hashSet);
    }

    /* renamed from: c */
    public boolean m14821c() {
        if (!this.f21767d.m14739c()) {
            String f = m14808f();
            return f != null && this.f21779p.mo14998d(f);
        }
        C9513b.m15015a().m15013a("Found previous crash marker.");
        this.f21767d.m14738d();
        return Boolean.TRUE.booleanValue();
    }

    /* renamed from: c */
    public final File[] m14818c(String str) {
        return m14849a(new C9570f0(str));
    }

    /* renamed from: d */
    public final void m14816d() throws Exception {
        long v = m14778v();
        String gVar = new C9544g(this.f21771h).toString();
        C9513b a = C9513b.m15015a();
        a.m15013a("Opening a new session with ID " + gVar);
        this.f21779p.mo14999c(gVar);
        m14845a(gVar, v);
        m14809e(gVar);
        m14803g(gVar);
        m14806f(gVar);
        this.f21776m.m14673b(gVar);
        this.f21783t.m14898a(m14794j(gVar), v);
    }

    /* renamed from: d */
    public void m14815d(int i) {
        int a = i - C9596l0.m14763a(m14799i(), m14805g(), i, f21758C);
        C9596l0.m14762a(m14802h(), f21756A, a - C9596l0.m14764a(m14796j(), a, f21758C), f21758C);
    }

    /* renamed from: d */
    public void m14813d(String str) {
        this.f21768e.m14880a(str);
        m14869a(this.f21768e);
    }

    /* renamed from: e */
    public final Context m14811e() {
        return this.f21765b;
    }

    /* renamed from: e */
    public final void m14809e(String str) throws Exception {
        String b = this.f21771h.m14687b();
        C9533b bVar = this.f21773j;
        String str2 = bVar.f21709e;
        String str3 = bVar.f21710f;
        String a = this.f21771h.mo14681a();
        int a2 = EnumC9615v.m14699a(this.f21773j.f21707c).m14700a();
        m14842a(str, "SessionApp", new C9573i(b, str2, str3, a, a2));
        this.f21779p.mo15002a(str, b, str2, str3, a, a2, this.f21781r);
    }

    @Nullable
    /* renamed from: f */
    public final String m14808f() {
        File[] p = m14784p();
        return p.length > 0 ? m14855a(p[0]) : null;
    }

    /* renamed from: f */
    public final void m14806f(String str) throws Exception {
        Context e = m14811e();
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        int a = C9546h.m14941a();
        String str2 = Build.MODEL;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long b = C9546h.m14923b();
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        boolean j = C9546h.m14910j(e);
        int c = C9546h.m14918c(e);
        String str3 = Build.MANUFACTURER;
        String str4 = Build.PRODUCT;
        m14842a(str, "SessionDevice", new C9576l(this, a, str2, availableProcessors, b, blockCount, j, c, str3, str4));
        this.f21779p.mo15004a(str, a, str2, availableProcessors, b, blockCount, j, c, str3, str4);
    }

    /* renamed from: g */
    public File m14805g() {
        return new File(m14802h(), "fatal-sessions");
    }

    /* renamed from: g */
    public final void m14803g(String str) throws Exception {
        String str2 = Build.VERSION.RELEASE;
        String str3 = Build.VERSION.CODENAME;
        boolean k = C9546h.m14909k(m14811e());
        m14842a(str, "SessionOS", new C9574j(this, str2, str3, k));
        this.f21779p.mo15001a(str, str2, str3, k);
    }

    /* renamed from: h */
    public File m14802h() {
        return this.f21772i.mo14293a();
    }

    /* renamed from: h */
    public final void m14800h(String str) throws Exception {
        m14842a(str, "SessionUser", new C9577m(this, m14827b(str)));
    }

    /* renamed from: i */
    public File m14799i() {
        return new File(m14802h(), "native-sessions");
    }

    /* renamed from: j */
    public File m14796j() {
        return new File(m14802h(), "nonfatal-sessions");
    }

    /* renamed from: k */
    public boolean m14793k() {
        C9610r rVar = this.f21784u;
        return rVar != null && rVar.m14713a();
    }

    /* renamed from: l */
    public File[] m14791l() {
        return m14849a(f21763z);
    }

    /* renamed from: m */
    public File[] m14789m() {
        LinkedList linkedList = new LinkedList();
        Collections.addAll(linkedList, m14853a(m14805g(), f21756A));
        Collections.addAll(linkedList, m14853a(m14796j(), f21756A));
        Collections.addAll(linkedList, m14853a(m14802h(), f21756A));
        return (File[]) linkedList.toArray(new File[linkedList.size()]);
    }

    /* renamed from: n */
    public File[] m14787n() {
        return m14812d(m14799i().listFiles());
    }

    /* renamed from: o */
    public File[] m14785o() {
        return m14849a(f21762y);
    }

    /* renamed from: p */
    public final File[] m14784p() {
        File[] o = m14785o();
        Arrays.sort(o, f21757B);
        return o;
    }

    /* renamed from: q */
    public final AbstractC9143h<Void> m14783q() {
        File[] l;
        ArrayList arrayList = new ArrayList();
        for (File file : m14791l()) {
            try {
                arrayList.add(m14830b(Long.parseLong(file.getName().substring(3))));
            } catch (NumberFormatException e) {
                C9513b.m15015a().m15013a("Could not parse timestamp from file " + file.getName());
            }
            file.delete();
        }
        return C9148k.m15998a((Collection<? extends AbstractC9143h<?>>) arrayList);
    }

    /* renamed from: r */
    public void m14782r() {
        this.f21769f.m14885b(new CallableC9567e());
    }

    /* renamed from: s */
    public final AbstractC9143h<Boolean> m14781s() {
        if (this.f21766c.m14707b()) {
            C9513b.m15015a().m15013a("Automatic data collection is enabled. Allowing upload.");
            this.f21785v.m16004b((C9145i<Boolean>) false);
            return C9148k.m15999a(true);
        }
        C9513b.m15015a().m15013a("Automatic data collection is disabled.");
        C9513b.m15015a().m15013a("Notifying that unsent reports are available.");
        this.f21785v.m16004b((C9145i<Boolean>) true);
        AbstractC9143h<TContinuationResult> a = this.f21766c.m14704c().mo16022a(new C9586u(this));
        C9513b.m15015a().m15013a("Waiting for send/deleteUnsentReports to be called.");
        return C9596l0.m14766a(a, this.f21786w.m16008a());
    }
}
