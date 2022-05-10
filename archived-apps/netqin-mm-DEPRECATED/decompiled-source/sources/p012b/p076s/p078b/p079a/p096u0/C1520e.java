package p012b.p076s.p078b.p079a.p096u0;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media2.exoplayer.external.ExoPlaybackException;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.AbstractC1197b;
import p012b.p076s.p078b.p079a.C1531w;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p084q0.C1311d;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1327k;
/* renamed from: b.s.b.a.u0.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/u0/e.class */
public final class C1520e extends AbstractC1197b implements Handler.Callback {

    /* renamed from: j */
    public final AbstractC1516b f6219j;

    /* renamed from: k */
    public final AbstractC1519d f6220k;

    /* renamed from: l */
    public final Handler f6221l;

    /* renamed from: m */
    public final C1531w f6222m;

    /* renamed from: n */
    public final C1518c f6223n;

    /* renamed from: o */
    public final Metadata[] f6224o;

    /* renamed from: p */
    public final long[] f6225p;

    /* renamed from: q */
    public int f6226q;

    /* renamed from: r */
    public int f6227r;

    /* renamed from: s */
    public AbstractC1515a f6228s;

    /* renamed from: t */
    public boolean f6229t;

    public C1520e(AbstractC1519d dVar, Looper looper, AbstractC1516b bVar) {
        super(4);
        C1160a.m34522a(dVar);
        this.f6220k = dVar;
        this.f6221l = looper == null ? null : C1167d0.m34484a(looper, (Handler.Callback) this);
        C1160a.m34522a(bVar);
        this.f6219j = bVar;
        this.f6222m = new C1531w();
        this.f6223n = new C1518c();
        this.f6224o = new Metadata[5];
        this.f6225p = new long[5];
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1238i0
    /* renamed from: a */
    public int mo32129a(Format format) {
        if (!this.f6219j.mo32137a(format)) {
            return 0;
        }
        return AbstractC1197b.m34285a((AbstractC1327k<?>) null, format.f1565l) ? 4 : 2;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: a */
    public void mo32131a(long j, long j2) throws ExoPlaybackException {
        if (!this.f6229t && this.f6227r < 5) {
            this.f6223n.mo33734a();
            if (m34284a(this.f6222m, (C1311d) this.f6223n, false) == -4) {
                if (this.f6223n.m33742c()) {
                    this.f6229t = true;
                } else if (!this.f6223n.m33744b()) {
                    C1518c cVar = this.f6223n;
                    cVar.f6218f = this.f6222m.f6243a.f1566m;
                    cVar.m33732e();
                    int i = (this.f6226q + this.f6227r) % 5;
                    Metadata a = this.f6228s.mo32135a(this.f6223n);
                    if (a != null) {
                        this.f6224o[i] = a;
                        this.f6225p[i] = this.f6223n.f5246d;
                        this.f6227r++;
                    }
                }
            }
        }
        if (this.f6227r > 0) {
            long[] jArr = this.f6225p;
            int i2 = this.f6226q;
            if (jArr[i2] <= j) {
                m32997a(this.f6224o[i2]);
                Metadata[] metadataArr = this.f6224o;
                int i3 = this.f6226q;
                metadataArr[i3] = null;
                this.f6226q = (i3 + 1) % 5;
                this.f6227r--;
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo32130a(long j, boolean z) {
        m32994z();
        this.f6229t = false;
    }

    /* renamed from: a */
    public final void m32997a(Metadata metadata) {
        Handler handler = this.f6221l;
        if (handler != null) {
            handler.obtainMessage(0, metadata).sendToTarget();
        } else {
            m32996b(metadata);
        }
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: a */
    public void mo32127a(Format[] formatArr, long j) throws ExoPlaybackException {
        this.f6228s = this.f6219j.mo32136b(formatArr[0]);
    }

    /* renamed from: b */
    public final void m32996b(Metadata metadata) {
        this.f6220k.mo32186a(metadata);
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: b */
    public boolean mo32126b() {
        return true;
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1236h0
    /* renamed from: c */
    public boolean mo32123c() {
        return this.f6229t;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            m32996b((Metadata) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // p012b.p076s.p078b.p079a.AbstractC1197b
    /* renamed from: v */
    public void mo32995v() {
        m32994z();
        this.f6228s = null;
    }

    /* renamed from: z */
    public final void m32994z() {
        Arrays.fill(this.f6224o, (Object) null);
        this.f6226q = 0;
        this.f6227r = 0;
    }
}
