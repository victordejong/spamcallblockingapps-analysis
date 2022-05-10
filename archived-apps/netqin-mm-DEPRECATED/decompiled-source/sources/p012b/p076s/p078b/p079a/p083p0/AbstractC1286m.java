package p012b.p076s.p078b.p079a.p083p0;

import android.os.Handler;
import androidx.media2.exoplayer.external.Format;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p083p0.AbstractC1286m;
import p012b.p076s.p078b.p079a.p084q0.C1310c;
/* renamed from: b.s.b.a.p0.m */
/* loaded from: classes-dex2jar.jar:b/s/b/a/p0/m.class */
public interface AbstractC1286m {

    /* renamed from: b.s.b.a.p0.m$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/p0/m$a.class */
    public static final class C1287a {

        /* renamed from: a */
        public final Handler f5100a;

        /* renamed from: b */
        public final AbstractC1286m f5101b;

        public C1287a(Handler handler, AbstractC1286m mVar) {
            Handler handler2;
            if (mVar != null) {
                C1160a.m34522a(handler);
                handler2 = handler;
            } else {
                handler2 = null;
            }
            this.f5100a = handler2;
            this.f5101b = mVar;
        }

        /* renamed from: a */
        public void m33895a(final int i) {
            if (this.f5101b != null) {
                this.f5100a.post(new Runnable(this, i) { // from class: b.s.b.a.p0.l

                    /* renamed from: a */
                    public final AbstractC1286m.C1287a f5098a;

                    /* renamed from: b */
                    public final int f5099b;

                    {
                        this.f5098a = this;
                        this.f5099b = i;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f5098a.m33890b(this.f5099b);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m33894a(final int i, final long j, final long j2) {
            if (this.f5101b != null) {
                this.f5100a.post(new Runnable(this, i, j, j2) { // from class: b.s.b.a.p0.j

                    /* renamed from: a */
                    public final AbstractC1286m.C1287a f5092a;

                    /* renamed from: b */
                    public final int f5093b;

                    /* renamed from: c */
                    public final long f5094c;

                    /* renamed from: d */
                    public final long f5095d;

                    {
                        this.f5092a = this;
                        this.f5093b = i;
                        this.f5094c = j;
                        this.f5095d = j2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f5092a.m33889b(this.f5093b, this.f5094c, this.f5095d);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m33893a(final Format format) {
            if (this.f5101b != null) {
                this.f5100a.post(new Runnable(this, format) { // from class: b.s.b.a.p0.i

                    /* renamed from: a */
                    public final AbstractC1286m.C1287a f5090a;

                    /* renamed from: b */
                    public final Format f5091b;

                    {
                        this.f5090a = this;
                        this.f5091b = format;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f5090a.m33888b(this.f5091b);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m33892a(final C1310c cVar) {
            cVar.m33735a();
            if (this.f5101b != null) {
                this.f5100a.post(new Runnable(this, cVar) { // from class: b.s.b.a.p0.k

                    /* renamed from: a */
                    public final AbstractC1286m.C1287a f5096a;

                    /* renamed from: b */
                    public final C1310c f5097b;

                    {
                        this.f5096a = this;
                        this.f5097b = cVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f5096a.m33885c(this.f5097b);
                    }
                });
            }
        }

        /* renamed from: a */
        public void m33891a(final String str, final long j, final long j2) {
            if (this.f5101b != null) {
                this.f5100a.post(new Runnable(this, str, j, j2) { // from class: b.s.b.a.p0.h

                    /* renamed from: a */
                    public final AbstractC1286m.C1287a f5086a;

                    /* renamed from: b */
                    public final String f5087b;

                    /* renamed from: c */
                    public final long f5088c;

                    /* renamed from: d */
                    public final long f5089d;

                    {
                        this.f5086a = this;
                        this.f5087b = str;
                        this.f5088c = j;
                        this.f5089d = j2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f5086a.m33886b(this.f5087b, this.f5088c, this.f5089d);
                    }
                });
            }
        }

        /* renamed from: b */
        public final /* synthetic */ void m33890b(int i) {
            this.f5101b.mo33901a(i);
        }

        /* renamed from: b */
        public final /* synthetic */ void m33889b(int i, long j, long j2) {
            this.f5101b.mo33899b(i, j, j2);
        }

        /* renamed from: b */
        public final /* synthetic */ void m33888b(Format format) {
            this.f5101b.mo33900a(format);
        }

        /* renamed from: b */
        public void m33887b(final C1310c cVar) {
            if (this.f5101b != null) {
                this.f5100a.post(new Runnable(this, cVar) { // from class: b.s.b.a.p0.g

                    /* renamed from: a */
                    public final AbstractC1286m.C1287a f5084a;

                    /* renamed from: b */
                    public final C1310c f5085b;

                    {
                        this.f5084a = this;
                        this.f5085b = cVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f5084a.m33884d(this.f5085b);
                    }
                });
            }
        }

        /* renamed from: b */
        public final /* synthetic */ void m33886b(String str, long j, long j2) {
            this.f5101b.mo33898b(str, j, j2);
        }

        /* renamed from: c */
        public final /* synthetic */ void m33885c(C1310c cVar) {
            cVar.m33735a();
            this.f5101b.mo33897c(cVar);
        }

        /* renamed from: d */
        public final /* synthetic */ void m33884d(C1310c cVar) {
            this.f5101b.mo33896d(cVar);
        }
    }

    /* renamed from: a */
    void mo33901a(int i);

    /* renamed from: a */
    void mo33900a(Format format);

    /* renamed from: b */
    void mo33899b(int i, long j, long j2);

    /* renamed from: b */
    void mo33898b(String str, long j, long j2);

    /* renamed from: c */
    void mo33897c(C1310c cVar);

    /* renamed from: d */
    void mo33896d(C1310c cVar);
}
