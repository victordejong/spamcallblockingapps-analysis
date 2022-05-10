package p012b.p076s.p112c.p114g;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import androidx.media.AudioAttributesCompat;
import androidx.media2.common.MediaItem;
import androidx.media2.common.SubtitleData;
import androidx.media2.player.MediaPlayer2;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import p012b.p042i.p053o.C0943c;
import p012b.p042i.p053o.C0948h;
import p012b.p076s.p112c.C1710b;
import p012b.p076s.p112c.C1711c;
import p012b.p076s.p112c.C1713d;
import p012b.p076s.p112c.p114g.C1759e;
import p012b.p076s.p112c.p115h.C1780a;
/* renamed from: b.s.c.g.c */
/* loaded from: classes-dex2jar.jar:b/s/c/g/c.class */
public final class C1719c extends MediaPlayer2 implements C1759e.AbstractC1764d {

    /* renamed from: a */
    public final C1759e f7006a;

    /* renamed from: b */
    public final Handler f7007b;

    /* renamed from: e */
    public AbstractRunnableC1741k0 f7010e;

    /* renamed from: g */
    public Pair<Executor, MediaPlayer2.AbstractC0409b> f7012g;

    /* renamed from: h */
    public HandlerThread f7013h;

    /* renamed from: c */
    public final ArrayDeque<AbstractRunnableC1741k0> f7008c = new ArrayDeque<>();

    /* renamed from: d */
    public final Object f7009d = new Object();

    /* renamed from: f */
    public final Object f7011f = new Object();

    /* renamed from: b.s.c.g.c$a */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$a.class */
    public class CallableC1720a implements Callable<Long> {
        public CallableC1720a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Long call() throws Exception {
            return Long.valueOf(C1719c.this.f7006a.m32216e());
        }
    }

    /* renamed from: b.s.c.g.c$a0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$a0.class */
    public class C1721a0 implements AbstractC1739j0 {

        /* renamed from: a */
        public final /* synthetic */ MediaItem f7015a;

        /* renamed from: b */
        public final /* synthetic */ int f7016b;

        /* renamed from: c */
        public final /* synthetic */ int f7017c;

        public C1721a0(MediaItem mediaItem, int i, int i2) {
            this.f7015a = mediaItem;
            this.f7016b = i;
            this.f7017c = i2;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractC1739j0
        /* renamed from: a */
        public void mo32249a(MediaPlayer2.AbstractC0409b bVar) {
            bVar.mo37800c(C1719c.this, this.f7015a, this.f7016b, this.f7017c);
        }
    }

    /* renamed from: b.s.c.g.c$b */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$b.class */
    public class CallableC1722b implements Callable<Long> {
        public CallableC1722b() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Long call() throws Exception {
            return Long.valueOf(C1719c.this.f7006a.m32214f());
        }
    }

    /* renamed from: b.s.c.g.c$b0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$b0.class */
    public class CallableC1723b0 implements Callable<Void> {
        public CallableC1723b0() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C1719c.this.f7006a.m32241A();
            return null;
        }
    }

    /* renamed from: b.s.c.g.c$c */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$c.class */
    public class CallableC1724c implements Callable<Long> {
        public CallableC1724c() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Long call() throws Exception {
            return Long.valueOf(C1719c.this.f7006a.m32220c());
        }
    }

    /* renamed from: b.s.c.g.c$c0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$c0.class */
    public class RunnableC1725c0 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C1780a f7022a;

        /* renamed from: b */
        public final /* synthetic */ Callable f7023b;

        public RunnableC1725c0(C1719c cVar, C1780a aVar, Callable callable) {
            this.f7022a = aVar;
            this.f7023b = callable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f7022a.mo32103b(this.f7023b.call());
            } catch (Throwable th) {
                this.f7022a.mo32104a(th);
            }
        }
    }

    /* renamed from: b.s.c.g.c$d */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$d.class */
    public class C1726d extends AbstractRunnableC1741k0 {
        public C1726d(int i, boolean z) {
            super(i, z);
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32240B();
        }
    }

    /* renamed from: b.s.c.g.c$d0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$d0.class */
    public class C1727d0 extends AbstractRunnableC1741k0 {

        /* renamed from: f */
        public final /* synthetic */ MediaItem f7025f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1727d0(int i, boolean z, MediaItem mediaItem) {
            super(i, z);
            this.f7025f = mediaItem;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32229a(this.f7025f);
        }
    }

    /* renamed from: b.s.c.g.c$e */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$e.class */
    public class C1728e extends AbstractRunnableC1741k0 {

        /* renamed from: f */
        public final /* synthetic */ MediaItem f7027f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1728e(int i, boolean z, MediaItem mediaItem) {
            super(i, z);
            this.f7027f = mediaItem;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32221b(this.f7027f);
        }
    }

    /* renamed from: b.s.c.g.c$e0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$e0.class */
    public class CallableC1729e0 implements Callable<MediaItem> {
        public CallableC1729e0() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public MediaItem call() throws Exception {
            return C1719c.this.f7006a.m32218d();
        }
    }

    /* renamed from: b.s.c.g.c$f */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$f.class */
    public class C1730f extends AbstractRunnableC1741k0 {

        /* renamed from: f */
        public final /* synthetic */ AudioAttributesCompat f7030f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1730f(int i, boolean z, AudioAttributesCompat audioAttributesCompat) {
            super(i, z);
            this.f7030f = audioAttributesCompat;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32230a(this.f7030f);
        }
    }

    /* renamed from: b.s.c.g.c$f0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$f0.class */
    public class C1731f0 extends AbstractRunnableC1741k0 {
        public C1731f0(int i, boolean z) {
            super(i, z);
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32194z();
        }
    }

    /* renamed from: b.s.c.g.c$g */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$g.class */
    public class CallableC1732g implements Callable<AudioAttributesCompat> {
        public CallableC1732g() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public AudioAttributesCompat call() throws Exception {
            return C1719c.this.f7006a.m32223b();
        }
    }

    /* renamed from: b.s.c.g.c$g0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$g0.class */
    public class C1733g0 extends AbstractRunnableC1741k0 {
        public C1733g0(int i, boolean z) {
            super(i, z);
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32195y();
        }
    }

    /* renamed from: b.s.c.g.c$h */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$h.class */
    public class C1734h extends AbstractRunnableC1741k0 {

        /* renamed from: f */
        public final /* synthetic */ C1711c f7035f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1734h(int i, boolean z, C1711c cVar) {
            super(i, z);
            this.f7035f = cVar;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32226a(this.f7035f);
        }
    }

    /* renamed from: b.s.c.g.c$h0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$h0.class */
    public class C1735h0 extends AbstractRunnableC1741k0 {
        public C1735h0(int i, boolean z) {
            super(i, z);
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32196x();
        }
    }

    /* renamed from: b.s.c.g.c$i */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$i.class */
    public class CallableC1736i implements Callable<C1711c> {
        public CallableC1736i() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public C1711c call() throws Exception {
            return C1719c.this.f7006a.m32212h();
        }
    }

    /* renamed from: b.s.c.g.c$i0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$i0.class */
    public class C1737i0 extends AbstractRunnableC1741k0 {

        /* renamed from: f */
        public final /* synthetic */ long f7039f;

        /* renamed from: g */
        public final /* synthetic */ int f7040g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1737i0(int i, boolean z, long j, int i2) {
            super(i, z);
            this.f7039f = j;
            this.f7040g = i2;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32233a(this.f7039f, this.f7040g);
        }
    }

    /* renamed from: b.s.c.g.c$j */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$j.class */
    public class CallableC1738j implements Callable<Integer> {
        public CallableC1738j() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            return Integer.valueOf(C1719c.this.f7006a.m32207m());
        }
    }

    /* renamed from: b.s.c.g.c$j0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$j0.class */
    public interface AbstractC1739j0 {
        /* renamed from: a */
        void mo32249a(MediaPlayer2.AbstractC0409b bVar);
    }

    /* renamed from: b.s.c.g.c$k */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$k.class */
    public class CallableC1740k implements Callable<Integer> {
        public CallableC1740k() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Integer call() throws Exception {
            return Integer.valueOf(C1719c.this.f7006a.m32208l());
        }
    }

    /* renamed from: b.s.c.g.c$k0 */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$k0.class */
    public abstract class AbstractRunnableC1741k0 implements Runnable {

        /* renamed from: a */
        public final int f7044a;

        /* renamed from: b */
        public final boolean f7045b;

        /* renamed from: c */
        public MediaItem f7046c;

        /* renamed from: d */
        public boolean f7047d;

        /* renamed from: b.s.c.g.c$k0$a */
        /* loaded from: classes-dex2jar.jar:b/s/c/g/c$k0$a.class */
        public class C1742a implements AbstractC1739j0 {

            /* renamed from: a */
            public final /* synthetic */ int f7049a;

            public C1742a(int i) {
                this.f7049a = i;
            }

            @Override // p012b.p076s.p112c.p114g.C1719c.AbstractC1739j0
            /* renamed from: a */
            public void mo32249a(MediaPlayer2.AbstractC0409b bVar) {
                AbstractRunnableC1741k0 k0Var = AbstractRunnableC1741k0.this;
                bVar.mo37805a(C1719c.this, k0Var.f7046c, k0Var.f7044a, this.f7049a);
            }
        }

        public AbstractRunnableC1741k0(int i, boolean z) {
            this.f7044a = i;
            this.f7045b = z;
        }

        /* renamed from: a */
        public abstract void mo32250a() throws IOException, MediaPlayer2.NoDrmSchemeException;

        /* renamed from: a */
        public void m32251a(int i) {
            if (this.f7044a < 1000) {
                C1719c.this.m32283a((AbstractC1739j0) new C1742a(i));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z;
            int i = 0;
            if (this.f7044a == 14) {
                synchronized (C1719c.this.f7009d) {
                    AbstractRunnableC1741k0 peekFirst = C1719c.this.f7008c.peekFirst();
                    z = peekFirst != null && peekFirst.f7044a == 14;
                }
            } else {
                z = false;
            }
            if (!z) {
                try {
                } catch (IOException e) {
                    i = 4;
                } catch (IllegalArgumentException e2) {
                    i = 2;
                } catch (IllegalStateException e3) {
                } catch (SecurityException e4) {
                    i = 3;
                } catch (Exception e5) {
                    i = Integer.MIN_VALUE;
                }
                if (this.f7044a == 1000 || !C1719c.this.f7006a.m32202r()) {
                    mo32250a();
                } else {
                    i = 1;
                }
            } else {
                i = 5;
            }
            this.f7046c = C1719c.this.f7006a.m32218d();
            if (!this.f7045b || i != 0 || z) {
                m32251a(i);
                synchronized (C1719c.this.f7009d) {
                    C1719c.this.f7010e = null;
                    C1719c.this.m32253t();
                }
            }
            synchronized (this) {
                this.f7047d = true;
                notifyAll();
            }
        }
    }

    /* renamed from: b.s.c.g.c$l */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$l.class */
    public class C1743l extends AbstractRunnableC1741k0 {

        /* renamed from: f */
        public final /* synthetic */ Surface f7051f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1743l(int i, boolean z, Surface surface) {
            super(i, z);
            this.f7051f = surface;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32231a(this.f7051f);
        }
    }

    /* renamed from: b.s.c.g.c$m */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$m.class */
    public class C1744m extends AbstractRunnableC1741k0 {

        /* renamed from: f */
        public final /* synthetic */ float f7053f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1744m(int i, boolean z, float f) {
            super(i, z);
            this.f7053f = f;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32237a(this.f7053f);
        }
    }

    /* renamed from: b.s.c.g.c$n */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$n.class */
    public class CallableC1745n implements Callable<Float> {
        public CallableC1745n() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Float call() throws Exception {
            return Float.valueOf(C1719c.this.f7006a.m32206n());
        }
    }

    /* renamed from: b.s.c.g.c$o */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$o.class */
    public class RunnableC1746o implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1739j0 f7056a;

        /* renamed from: b */
        public final /* synthetic */ MediaPlayer2.AbstractC0409b f7057b;

        public RunnableC1746o(C1719c cVar, AbstractC1739j0 j0Var, MediaPlayer2.AbstractC0409b bVar) {
            this.f7056a = j0Var;
            this.f7057b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f7056a.mo32249a(this.f7057b);
        }
    }

    /* renamed from: b.s.c.g.c$p */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$p.class */
    public class CallableC1747p implements Callable<List<MediaPlayer2.AbstractC0410c>> {
        public CallableC1747p() {
        }

        @Override // java.util.concurrent.Callable
        public List<MediaPlayer2.AbstractC0410c> call() throws Exception {
            return C1719c.this.f7006a.m32209k();
        }
    }

    /* renamed from: b.s.c.g.c$q */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$q.class */
    public class CallableC1748q implements Callable<Integer> {

        /* renamed from: a */
        public final /* synthetic */ int f7059a;

        public CallableC1748q(int i) {
            this.f7059a = i;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Integer call() {
            return Integer.valueOf(C1719c.this.f7006a.m32222b(this.f7059a));
        }
    }

    /* renamed from: b.s.c.g.c$r */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$r.class */
    public class C1749r extends AbstractRunnableC1741k0 {

        /* renamed from: f */
        public final /* synthetic */ int f7061f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1749r(int i, boolean z, int i2) {
            super(i, z);
            this.f7061f = i2;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32215e(this.f7061f);
        }
    }

    /* renamed from: b.s.c.g.c$s */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$s.class */
    public class C1750s extends AbstractRunnableC1741k0 {

        /* renamed from: f */
        public final /* synthetic */ int f7063f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1750s(int i, boolean z, int i2) {
            super(i, z);
            this.f7063f = i2;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractRunnableC1741k0
        /* renamed from: a */
        public void mo32250a() {
            C1719c.this.f7006a.m32236a(this.f7063f);
        }
    }

    /* renamed from: b.s.c.g.c$t */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$t.class */
    public class CallableC1751t implements Callable<Void> {
        public CallableC1751t() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            C1719c.this.f7006a.m32241A();
            return null;
        }
    }

    /* renamed from: b.s.c.g.c$u */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$u.class */
    public class CallableC1752u implements Callable<Void> {
        public CallableC1752u() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() {
            C1719c.this.f7006a.m32238a();
            return null;
        }
    }

    /* renamed from: b.s.c.g.c$v */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$v.class */
    public class C1753v implements AbstractC1739j0 {

        /* renamed from: a */
        public final /* synthetic */ MediaItem f7067a;

        /* renamed from: b */
        public final /* synthetic */ int f7068b;

        /* renamed from: c */
        public final /* synthetic */ int f7069c;

        public C1753v(MediaItem mediaItem, int i, int i2) {
            this.f7067a = mediaItem;
            this.f7068b = i;
            this.f7069c = i2;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractC1739j0
        /* renamed from: a */
        public void mo32249a(MediaPlayer2.AbstractC0409b bVar) {
            bVar.mo37799d(C1719c.this, this.f7067a, this.f7068b, this.f7069c);
        }
    }

    /* renamed from: b.s.c.g.c$w */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$w.class */
    public class C1754w implements AbstractC1739j0 {

        /* renamed from: a */
        public final /* synthetic */ MediaItem f7071a;

        /* renamed from: b */
        public final /* synthetic */ int f7072b;

        /* renamed from: c */
        public final /* synthetic */ SubtitleData f7073c;

        public C1754w(MediaItem mediaItem, int i, SubtitleData subtitleData) {
            this.f7071a = mediaItem;
            this.f7072b = i;
            this.f7073c = subtitleData;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractC1739j0
        /* renamed from: a */
        public void mo32249a(MediaPlayer2.AbstractC0409b bVar) {
            bVar.mo37804a(C1719c.this, this.f7071a, this.f7072b, this.f7073c);
        }
    }

    /* renamed from: b.s.c.g.c$x */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$x.class */
    public class C1755x implements AbstractC1739j0 {

        /* renamed from: a */
        public final /* synthetic */ MediaItem f7075a;

        /* renamed from: b */
        public final /* synthetic */ C1713d f7076b;

        public C1755x(MediaItem mediaItem, C1713d dVar) {
            this.f7075a = mediaItem;
            this.f7076b = dVar;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractC1739j0
        /* renamed from: a */
        public void mo32249a(MediaPlayer2.AbstractC0409b bVar) {
            bVar.mo37802a(C1719c.this, this.f7075a, this.f7076b);
        }
    }

    /* renamed from: b.s.c.g.c$y */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$y.class */
    public class C1756y implements AbstractC1739j0 {

        /* renamed from: a */
        public final /* synthetic */ MediaItem f7078a;

        /* renamed from: b */
        public final /* synthetic */ C1710b f7079b;

        public C1756y(MediaItem mediaItem, C1710b bVar) {
            this.f7078a = mediaItem;
            this.f7079b = bVar;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractC1739j0
        /* renamed from: a */
        public void mo32249a(MediaPlayer2.AbstractC0409b bVar) {
            bVar.mo37803a(C1719c.this, this.f7078a, this.f7079b);
        }
    }

    /* renamed from: b.s.c.g.c$z */
    /* loaded from: classes-dex2jar.jar:b/s/c/g/c$z.class */
    public class C1757z implements AbstractC1739j0 {

        /* renamed from: a */
        public final /* synthetic */ MediaItem f7081a;

        /* renamed from: b */
        public final /* synthetic */ int f7082b;

        public C1757z(MediaItem mediaItem, int i) {
            this.f7081a = mediaItem;
            this.f7082b = i;
        }

        @Override // p012b.p076s.p112c.p114g.C1719c.AbstractC1739j0
        /* renamed from: a */
        public void mo32249a(MediaPlayer2.AbstractC0409b bVar) {
            bVar.mo37801b(C1719c.this, this.f7081a, this.f7082b, 0);
        }
    }

    public C1719c(Context context) {
        HandlerThread handlerThread = new HandlerThread("ExoMediaPlayer2Thread");
        this.f7013h = handlerThread;
        handlerThread.start();
        this.f7006a = new C1759e(context.getApplicationContext(), this, this.f7013h.getLooper());
        this.f7007b = new Handler(this.f7006a.m32213g());
        m32252u();
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public Object mo32289a(float f) {
        C1744m mVar = new C1744m(26, false, f);
        m32282a((AbstractRunnableC1741k0) mVar);
        return mVar;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public Object mo32288a(int i) {
        C1750s sVar = new C1750s(2, false, i);
        m32282a((AbstractRunnableC1741k0) sVar);
        return sVar;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public Object mo32287a(long j, int i) {
        C1737i0 i0Var = new C1737i0(14, true, j, i);
        m32282a((AbstractRunnableC1741k0) i0Var);
        return i0Var;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public Object mo32286a(Surface surface) {
        C1743l lVar = new C1743l(27, false, surface);
        m32282a((AbstractRunnableC1741k0) lVar);
        return lVar;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public Object mo32285a(AudioAttributesCompat audioAttributesCompat) {
        C1730f fVar = new C1730f(16, false, audioAttributesCompat);
        m32282a((AbstractRunnableC1741k0) fVar);
        return fVar;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public Object mo32284a(C1711c cVar) {
        C1734h hVar = new C1734h(24, false, cVar);
        m32282a((AbstractRunnableC1741k0) hVar);
        return hVar;
    }

    /* renamed from: a */
    public final Object m32282a(AbstractRunnableC1741k0 k0Var) {
        synchronized (this.f7009d) {
            this.f7008c.add(k0Var);
            m32253t();
        }
        return k0Var;
    }

    /* renamed from: a */
    public final <T> T m32280a(Callable<T> callable) {
        T t;
        C1780a e = C1780a.m32102e();
        C0948h.m35437b(this.f7007b.post(new RunnableC1725c0(this, e, callable)));
        boolean z = false;
        while (true) {
            try {
                try {
                    t = (T) e.get();
                    break;
                } catch (ExecutionException e2) {
                    Throwable cause = e2.getCause();
                    Log.e("ExoPlayerMediaPlayer2", "Internal player error", new RuntimeException(cause));
                    throw new IllegalStateException(cause);
                }
            } catch (InterruptedException e3) {
                z = true;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return t;
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: a */
    public void mo32176a() {
        synchronized (this.f7009d) {
            if (this.f7010e != null && this.f7010e.f7044a == 14 && this.f7010e.f7045b) {
                this.f7010e.m32251a(0);
                this.f7010e = null;
                m32253t();
            }
        }
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: a */
    public void mo32175a(MediaItem mediaItem) {
        m32271d(mediaItem, 701);
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: a */
    public void mo32174a(MediaItem mediaItem, int i) {
        m32275b(mediaItem, 703, i);
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: a */
    public void mo32173a(MediaItem mediaItem, int i, int i2) {
        m32283a((AbstractC1739j0) new C1753v(mediaItem, i, i2));
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: a */
    public void mo32172a(MediaItem mediaItem, int i, SubtitleData subtitleData) {
        m32283a((AbstractC1739j0) new C1754w(mediaItem, i, subtitleData));
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: a */
    public void mo32171a(MediaItem mediaItem, C1710b bVar) {
        m32283a((AbstractC1739j0) new C1756y(mediaItem, bVar));
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: a */
    public void mo32170a(MediaItem mediaItem, C1713d dVar) {
        m32283a((AbstractC1739j0) new C1755x(mediaItem, dVar));
    }

    /* renamed from: a */
    public void m32283a(AbstractC1739j0 j0Var) {
        Pair<Executor, MediaPlayer2.AbstractC0409b> pair;
        synchronized (this.f7011f) {
            pair = this.f7012g;
        }
        if (pair != null) {
            try {
                ((Executor) pair.first).execute(new RunnableC1746o(this, j0Var, (MediaPlayer2.AbstractC0409b) pair.second));
            } catch (RejectedExecutionException e) {
                Log.w("ExoPlayerMediaPlayer2", "The given executor is shutting down. Ignoring the player event.");
            }
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public void mo32279a(Executor executor, MediaPlayer2.AbstractC0408a aVar) {
        C0948h.m35442a(executor);
        C0948h.m35442a(aVar);
        synchronized (this.f7011f) {
            Pair.create(executor, aVar);
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public void mo32278a(Executor executor, MediaPlayer2.AbstractC0409b bVar) {
        C0948h.m35442a(executor);
        C0948h.m35442a(bVar);
        synchronized (this.f7011f) {
            this.f7012g = Pair.create(executor, bVar);
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: a */
    public boolean mo32281a(Object obj) {
        boolean remove;
        synchronized (this.f7009d) {
            remove = this.f7008c.remove(obj);
        }
        return remove;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: b */
    public int mo32276b(int i) {
        return ((Integer) m32280a((Callable<Object>) new CallableC1748q(i))).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: b */
    public void mo32277b() {
        m32255r();
        synchronized (this.f7011f) {
            HandlerThread handlerThread = this.f7013h;
            if (handlerThread != null) {
                this.f7013h = null;
                m32280a((Callable) new CallableC1752u());
                handlerThread.quit();
            }
        }
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: b */
    public void mo32169b(MediaItem mediaItem) {
        m32271d(mediaItem, 3);
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: b */
    public void mo32168b(MediaItem mediaItem, int i) {
        synchronized (this.f7009d) {
            if (this.f7010e != null && this.f7010e.f7045b) {
                this.f7010e.m32251a(Integer.MIN_VALUE);
                this.f7010e = null;
                m32253t();
            }
        }
        m32283a((AbstractC1739j0) new C1757z(mediaItem, i));
    }

    /* renamed from: b */
    public final void m32275b(MediaItem mediaItem, int i, int i2) {
        m32283a((AbstractC1739j0) new C1721a0(mediaItem, i, i2));
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: c */
    public AudioAttributesCompat mo32274c() {
        return (AudioAttributesCompat) m32280a((Callable<Object>) new CallableC1732g());
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: c */
    public Object mo32273c(int i) {
        C1749r rVar = new C1749r(15, false, i);
        m32282a((AbstractRunnableC1741k0) rVar);
        return rVar;
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: c */
    public void mo32167c(MediaItem mediaItem) {
        m32271d(mediaItem, 5);
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: c */
    public void mo32166c(MediaItem mediaItem, int i) {
        m32275b(mediaItem, 704, i);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: d */
    public long mo32272d() {
        return ((Long) m32280a((Callable<Object>) new CallableC1724c())).longValue();
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: d */
    public void mo32165d(MediaItem mediaItem) {
        m32271d(mediaItem, 7);
    }

    /* renamed from: d */
    public final void m32271d(MediaItem mediaItem, int i) {
        m32275b(mediaItem, i, 0);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: e */
    public MediaItem mo32270e() {
        return (MediaItem) m32280a((Callable<Object>) new CallableC1729e0());
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: e */
    public void mo32164e(MediaItem mediaItem) {
        m32271d(mediaItem, 802);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: f */
    public long mo32269f() {
        return ((Long) m32280a((Callable<Object>) new CallableC1720a())).longValue();
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: f */
    public void mo32163f(MediaItem mediaItem) {
        m32271d(mediaItem, 100);
        synchronized (this.f7009d) {
            if (this.f7010e != null && this.f7010e.f7044a == 6 && C0943c.m35448a(this.f7010e.f7046c, mediaItem) && this.f7010e.f7045b) {
                this.f7010e.m32251a(0);
                this.f7010e = null;
                m32253t();
            }
        }
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: g */
    public long mo32268g() {
        return ((Long) m32280a((Callable<Object>) new CallableC1722b())).longValue();
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: g */
    public void mo32162g(MediaItem mediaItem) {
        m32271d(mediaItem, 6);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: h */
    public C1711c mo32267h() {
        return (C1711c) m32280a((Callable<Object>) new CallableC1736i());
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: h */
    public void mo32161h(MediaItem mediaItem) {
        m32271d(mediaItem, 2);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: i */
    public float mo32266i() {
        return ((Float) m32280a((Callable<Object>) new CallableC1745n())).floatValue();
    }

    @Override // p012b.p076s.p112c.p114g.C1759e.AbstractC1764d
    /* renamed from: i */
    public void mo32160i(MediaItem mediaItem) {
        m32271d(mediaItem, 702);
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: j */
    public Object mo32264j(MediaItem mediaItem) {
        C1727d0 d0Var = new C1727d0(19, false, mediaItem);
        m32282a((AbstractRunnableC1741k0) d0Var);
        return d0Var;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: j */
    public List<MediaPlayer2.AbstractC0410c> mo32265j() {
        return (List) m32280a((Callable<Object>) new CallableC1747p());
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: k */
    public int mo32263k() {
        return ((Integer) m32280a((Callable<Object>) new CallableC1740k())).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: k */
    public Object mo32262k(MediaItem mediaItem) {
        C1728e eVar = new C1728e(22, false, mediaItem);
        m32282a((AbstractRunnableC1741k0) eVar);
        return eVar;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: l */
    public int mo32261l() {
        return ((Integer) m32280a((Callable<Object>) new CallableC1738j())).intValue();
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: m */
    public Object mo32260m() {
        C1735h0 h0Var = new C1735h0(4, false);
        m32282a((AbstractRunnableC1741k0) h0Var);
        return h0Var;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: n */
    public Object mo32259n() {
        C1733g0 g0Var = new C1733g0(5, false);
        m32282a((AbstractRunnableC1741k0) g0Var);
        return g0Var;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: o */
    public Object mo32258o() {
        C1731f0 f0Var = new C1731f0(6, true);
        m32282a((AbstractRunnableC1741k0) f0Var);
        return f0Var;
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: p */
    public void mo32257p() {
        AbstractRunnableC1741k0 k0Var;
        m32254s();
        synchronized (this.f7009d) {
            try {
                k0Var = this.f7010e;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (k0Var != null) {
            synchronized (k0Var) {
                while (!k0Var.f7047d) {
                    try {
                        k0Var.wait();
                    } catch (InterruptedException e) {
                    }
                }
            }
        }
        this.f7007b.removeCallbacksAndMessages(null);
        m32280a((Callable) new CallableC1751t());
    }

    @Override // androidx.media2.player.MediaPlayer2
    /* renamed from: q */
    public Object mo32256q() {
        C1726d dVar = new C1726d(29, false);
        m32282a((AbstractRunnableC1741k0) dVar);
        return dVar;
    }

    /* renamed from: r */
    public void m32255r() {
        synchronized (this.f7011f) {
            this.f7012g = null;
        }
    }

    /* renamed from: s */
    public void m32254s() {
        synchronized (this.f7009d) {
            this.f7008c.clear();
        }
    }

    /* renamed from: t */
    public void m32253t() {
        if (this.f7010e == null && !this.f7008c.isEmpty()) {
            AbstractRunnableC1741k0 removeFirst = this.f7008c.removeFirst();
            this.f7010e = removeFirst;
            this.f7007b.post(removeFirst);
        }
    }

    /* renamed from: u */
    public final void m32252u() {
        m32280a((Callable) new CallableC1723b0());
    }
}
