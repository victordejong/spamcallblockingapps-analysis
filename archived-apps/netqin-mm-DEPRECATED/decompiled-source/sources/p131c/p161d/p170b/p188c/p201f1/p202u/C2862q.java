package p131c.p161d.p170b.p188c.p201f1.p202u;

import android.os.ConditionVariable;
import com.google.android.exoplayer2.upstream.cache.Cache;
import java.io.File;
import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p207t0.AbstractC3007a;
/* renamed from: c.d.b.c.f1.u.q */
/* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/q.class */
public final class C2862q implements Cache {

    /* renamed from: l */
    public static final HashSet<File> f10407l = new HashSet<>();

    /* renamed from: a */
    public final File f10408a;

    /* renamed from: b */
    public final AbstractC2846d f10409b;

    /* renamed from: c */
    public final C2853k f10410c;

    /* renamed from: d */
    public final C2848f f10411d;

    /* renamed from: e */
    public final HashMap<String, ArrayList<Cache.AbstractC7207a>> f10412e;

    /* renamed from: f */
    public final Random f10413f;

    /* renamed from: g */
    public final boolean f10414g;

    /* renamed from: h */
    public long f10415h;

    /* renamed from: i */
    public long f10416i;

    /* renamed from: j */
    public boolean f10417j;

    /* renamed from: k */
    public Cache.CacheException f10418k;

    /* renamed from: c.d.b.c.f1.u.q$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/f1/u/q$a.class */
    public class C2863a extends Thread {

        /* renamed from: a */
        public final /* synthetic */ ConditionVariable f10419a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2863a(String str, ConditionVariable conditionVariable) {
            super(str);
            this.f10419a = conditionVariable;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            synchronized (C2862q.this) {
                this.f10419a.open();
                C2862q.this.m28770c();
                C2862q.this.f10409b.mo28787a();
            }
        }
    }

    @Deprecated
    public C2862q(File file, AbstractC2846d dVar) {
        this(file, dVar, (byte[]) null, false);
    }

    public C2862q(File file, AbstractC2846d dVar, C2853k kVar, C2848f fVar) {
        if (m28772b(file)) {
            this.f10408a = file;
            this.f10409b = dVar;
            this.f10410c = kVar;
            this.f10411d = fVar;
            this.f10412e = new HashMap<>();
            this.f10413f = new Random();
            this.f10414g = dVar.mo28783b();
            this.f10415h = -1L;
            ConditionVariable conditionVariable = new ConditionVariable();
            new C2863a("SimpleCache.initialize()", conditionVariable).start();
            conditionVariable.block();
            return;
        }
        throw new IllegalStateException("Another SimpleCache instance uses the folder: " + file);
    }

    public C2862q(File file, AbstractC2846d dVar, AbstractC3007a aVar, byte[] bArr, boolean z, boolean z2) {
        this(file, dVar, new C2853k(aVar, file, bArr, z, z2), (aVar == null || z2) ? null : new C2848f(aVar));
    }

    @Deprecated
    public C2862q(File file, AbstractC2846d dVar, byte[] bArr, boolean z) {
        this(file, dVar, null, bArr, z, true);
    }

    /* renamed from: a */
    public static long m28779a(File file) throws IOException {
        long nextLong = new SecureRandom().nextLong();
        long abs = nextLong == Long.MIN_VALUE ? 0L : Math.abs(nextLong);
        String l = Long.toString(abs, 16);
        File file2 = new File(file, l + ".uid");
        if (file2.createNewFile()) {
            return abs;
        }
        throw new IOException("Failed to create UID file: " + file2);
    }

    /* renamed from: a */
    public static long m28776a(File[] fileArr) {
        for (File file : fileArr) {
            String name = file.getName();
            if (name.endsWith(".uid")) {
                try {
                    return m28771b(name);
                } catch (NumberFormatException e) {
                    C2894o.m28597b("SimpleCache", "Malformed UID file: " + file);
                    file.delete();
                }
            }
        }
        return -1L;
    }

    /* renamed from: b */
    public static long m28771b(String str) {
        return Long.parseLong(str.substring(0, str.indexOf(46)), 16);
    }

    /* renamed from: b */
    public static boolean m28772b(File file) {
        boolean add;
        synchronized (C2862q.class) {
            try {
                add = f10407l.add(file.getAbsoluteFile());
            } catch (Throwable th) {
                throw th;
            }
        }
        return add;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public long mo18258a() {
        long j;
        synchronized (this) {
            C2877e.m28731b(!this.f10417j);
            j = this.f10416i;
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public C2850h mo18254a(String str, long j) throws InterruptedException, Cache.CacheException {
        C2850h b;
        synchronized (this) {
            C2877e.m28731b(!this.f10417j);
            m28775b();
            while (true) {
                b = mo18250b(str, j);
                if (b == null) {
                    wait();
                }
            }
        }
        return b;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public AbstractC2858m mo18255a(String str) {
        AbstractC2858m d;
        synchronized (this) {
            C2877e.m28731b(!this.f10417j);
            d = this.f10410c.m28831d(str);
        }
        return d;
    }

    /* renamed from: a */
    public final C2864r m28777a(String str, C2864r rVar) {
        if (!this.f10414g) {
            return rVar;
        }
        File file = rVar.f10373e;
        C2877e.m28737a(file);
        String name = file.getName();
        long j = rVar.f10371c;
        long currentTimeMillis = System.currentTimeMillis();
        boolean z = false;
        C2848f fVar = this.f10411d;
        if (fVar != null) {
            try {
                fVar.m28867a(name, j, currentTimeMillis);
            } catch (IOException e) {
                C2894o.m28594d("SimpleCache", "Failed to update index with new touch timestamp.");
            }
        } else {
            z = true;
        }
        C2864r a = this.f10410c.m28833c(str).m28851a(rVar, currentTimeMillis, z);
        m28780a(rVar, a);
        return a;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public File mo18253a(String str, long j, long j2) throws Cache.CacheException {
        File a;
        synchronized (this) {
            C2877e.m28731b(!this.f10417j);
            m28775b();
            C2852j c = this.f10410c.m28833c(str);
            C2877e.m28737a(c);
            C2877e.m28731b(c.m28847d());
            if (!this.f10408a.exists()) {
                this.f10408a.mkdirs();
                m28767d();
            }
            this.f10409b.mo28784a(this, str, j, j2);
            File file = new File(this.f10408a, Integer.toString(this.f10413f.nextInt(10)));
            if (!file.exists()) {
                file.mkdir();
            }
            a = C2864r.m28765a(file, c.f10376a, j, System.currentTimeMillis());
        }
        return a;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public void mo18257a(C2850h hVar) {
        synchronized (this) {
            C2877e.m28731b(!this.f10417j);
            m28766d(hVar);
        }
    }

    /* renamed from: a */
    public final void m28781a(C2864r rVar) {
        this.f10410c.m28829e(rVar.f10369a).m28852a(rVar);
        this.f10416i += rVar.f10371c;
        m28773b(rVar);
    }

    /* renamed from: a */
    public final void m28780a(C2864r rVar, C2850h hVar) {
        ArrayList<Cache.AbstractC7207a> arrayList = this.f10412e.get(rVar.f10369a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).mo18248a(this, rVar, hVar);
            }
        }
        this.f10409b.mo18248a(this, rVar, hVar);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public void mo18256a(File file, long j) throws Cache.CacheException {
        synchronized (this) {
            boolean z = true;
            C2877e.m28731b(!this.f10417j);
            if (file.exists()) {
                if (j == 0) {
                    file.delete();
                    return;
                }
                C2864r a = C2864r.m28762a(file, j, this.f10410c);
                C2877e.m28737a(a);
                C2864r rVar = a;
                C2852j c = this.f10410c.m28833c(rVar.f10369a);
                C2877e.m28737a(c);
                C2852j jVar = c;
                C2877e.m28731b(jVar.m28847d());
                long a2 = C2857l.m28806a(jVar.m28856a());
                if (a2 != -1) {
                    if (rVar.f10370b + rVar.f10371c > a2) {
                        z = false;
                    }
                    C2877e.m28731b(z);
                }
                if (this.f10411d != null) {
                    try {
                        this.f10411d.m28867a(file.getName(), rVar.f10371c, rVar.f10374f);
                    } catch (IOException e) {
                        throw new Cache.CacheException(e);
                    }
                }
                m28781a(rVar);
                try {
                    this.f10410c.m28834c();
                    notifyAll();
                } catch (IOException e2) {
                    throw new Cache.CacheException(e2);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m28778a(File file, boolean z, File[] fileArr, Map<String, C2847e> map) {
        if (fileArr != null && fileArr.length != 0) {
            for (File file2 : fileArr) {
                String name = file2.getName();
                if (z && name.indexOf(46) == -1) {
                    m28778a(file2, false, file2.listFiles(), map);
                } else if (!z || (!C2853k.m28827g(name) && !name.endsWith(".uid"))) {
                    long j = -1;
                    long j2 = -9223372036854775807L;
                    C2847e remove = map != null ? map.remove(name) : null;
                    if (remove != null) {
                        j = remove.f10364a;
                        j2 = remove.f10365b;
                    }
                    C2864r a = C2864r.m28763a(file2, j, j2, this.f10410c);
                    if (a != null) {
                        m28781a(a);
                    } else {
                        file2.delete();
                    }
                }
            }
        } else if (!z) {
            file.delete();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: a */
    public void mo18252a(String str, C2859n nVar) throws Cache.CacheException {
        synchronized (this) {
            C2877e.m28731b(!this.f10417j);
            m28775b();
            this.f10410c.m28839a(str, nVar);
            try {
                this.f10410c.m28834c();
            } catch (IOException e) {
                throw new Cache.CacheException(e);
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: b */
    public C2850h mo18250b(String str, long j) throws Cache.CacheException {
        synchronized (this) {
            C2877e.m28731b(!this.f10417j);
            m28775b();
            C2864r c = m28768c(str, j);
            if (c.f10372d) {
                return m28777a(str, c);
            }
            C2852j e = this.f10410c.m28829e(str);
            if (e.m28847d()) {
                return null;
            }
            e.m28850a(true);
            return c;
        }
    }

    /* renamed from: b */
    public void m28775b() throws Cache.CacheException {
        synchronized (this) {
            if (this.f10418k != null) {
                throw this.f10418k;
            }
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache
    /* renamed from: b */
    public void mo18251b(C2850h hVar) {
        synchronized (this) {
            C2877e.m28731b(!this.f10417j);
            C2852j c = this.f10410c.m28833c(hVar.f10369a);
            C2877e.m28737a(c);
            C2877e.m28731b(c.m28847d());
            c.m28850a(false);
            this.f10410c.m28828f(c.f10377b);
            notifyAll();
        }
    }

    /* renamed from: b */
    public final void m28773b(C2864r rVar) {
        ArrayList<Cache.AbstractC7207a> arrayList = this.f10412e.get(rVar.f10369a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).mo18247b(this, rVar);
            }
        }
        this.f10409b.mo18247b(this, rVar);
    }

    /* renamed from: c */
    public final C2864r m28768c(String str, long j) {
        C2864r a;
        C2852j c = this.f10410c.m28833c(str);
        if (c == null) {
            return C2864r.m28758b(str, j);
        }
        while (true) {
            a = c.m28855a(j);
            if (!a.f10372d || a.f10373e.length() == a.f10371c) {
                break;
            }
            m28767d();
        }
        return a;
    }

    /* renamed from: c */
    public final void m28770c() {
        if (this.f10408a.exists() || this.f10408a.mkdirs()) {
            File[] listFiles = this.f10408a.listFiles();
            if (listFiles == null) {
                String str = "Failed to list cache directory files: " + this.f10408a;
                C2894o.m28597b("SimpleCache", str);
                this.f10418k = new Cache.CacheException(str);
                return;
            }
            long a = m28776a(listFiles);
            this.f10415h = a;
            if (a == -1) {
                try {
                    this.f10415h = m28779a(this.f10408a);
                } catch (IOException e) {
                    String str2 = "Failed to create cache UID: " + this.f10408a;
                    C2894o.m28599a("SimpleCache", str2, e);
                    this.f10418k = new Cache.CacheException(str2, e);
                    return;
                }
            }
            try {
                this.f10410c.m28844a(this.f10415h);
                if (this.f10411d != null) {
                    this.f10411d.m28870a(this.f10415h);
                    Map<String, C2847e> a2 = this.f10411d.m28871a();
                    m28778a(this.f10408a, true, listFiles, a2);
                    this.f10411d.m28866a(a2.keySet());
                } else {
                    m28778a(this.f10408a, true, listFiles, null);
                }
                this.f10410c.m28838b();
                try {
                    this.f10410c.m28834c();
                } catch (IOException e2) {
                    C2894o.m28599a("SimpleCache", "Storing index file failed", e2);
                }
            } catch (IOException e3) {
                String str3 = "Failed to initialize cache indices: " + this.f10408a;
                C2894o.m28599a("SimpleCache", str3, e3);
                this.f10418k = new Cache.CacheException(str3, e3);
            }
        } else {
            String str4 = "Failed to create cache directory: " + this.f10408a;
            C2894o.m28597b("SimpleCache", str4);
            this.f10418k = new Cache.CacheException(str4);
        }
    }

    /* renamed from: c */
    public final void m28769c(C2850h hVar) {
        ArrayList<Cache.AbstractC7207a> arrayList = this.f10412e.get(hVar.f10369a);
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                arrayList.get(size).mo18249a(this, hVar);
            }
        }
        this.f10409b.mo18249a(this, hVar);
    }

    /* renamed from: d */
    public final void m28767d() {
        ArrayList arrayList = new ArrayList();
        for (C2852j jVar : this.f10410c.m28846a()) {
            Iterator<C2864r> it = jVar.m28849b().iterator();
            while (it.hasNext()) {
                C2864r next = it.next();
                if (next.f10373e.length() != next.f10371c) {
                    arrayList.add(next);
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            m28766d((C2850h) arrayList.get(i));
        }
    }

    /* renamed from: d */
    public final void m28766d(C2850h hVar) {
        C2852j c = this.f10410c.m28833c(hVar.f10369a);
        if (c != null && c.m28854a(hVar)) {
            this.f10416i -= hVar.f10371c;
            if (this.f10411d != null) {
                String name = hVar.f10373e.getName();
                try {
                    this.f10411d.m28868a(name);
                } catch (IOException e) {
                    C2894o.m28594d("SimpleCache", "Failed to remove file index entry for: " + name);
                }
            }
            this.f10410c.m28828f(c.f10377b);
            m28769c(hVar);
        }
    }
}
