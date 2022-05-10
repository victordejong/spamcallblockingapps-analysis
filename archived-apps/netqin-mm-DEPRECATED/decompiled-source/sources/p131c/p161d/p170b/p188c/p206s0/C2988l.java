package p131c.p161d.p170b.p188c.p206s0;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* renamed from: c.d.b.c.s0.l */
/* loaded from: classes-dex2jar.jar:c/d/b/c/s0/l.class */
public final class C2988l {

    /* renamed from: a */
    public final C2989a f10741a;

    /* renamed from: b */
    public int f10742b;

    /* renamed from: c */
    public long f10743c;

    /* renamed from: d */
    public long f10744d;

    /* renamed from: e */
    public long f10745e;

    /* renamed from: f */
    public long f10746f;

    /* renamed from: c.d.b.c.s0.l$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/s0/l$a.class */
    public static final class C2989a {

        /* renamed from: a */
        public final AudioTrack f10747a;

        /* renamed from: b */
        public final AudioTimestamp f10748b = new AudioTimestamp();

        /* renamed from: c */
        public long f10749c;

        /* renamed from: d */
        public long f10750d;

        /* renamed from: e */
        public long f10751e;

        public C2989a(AudioTrack audioTrack) {
            this.f10747a = audioTrack;
        }

        /* renamed from: a */
        public long m28269a() {
            return this.f10751e;
        }

        /* renamed from: b */
        public long m28268b() {
            return this.f10748b.nanoTime / 1000;
        }

        /* renamed from: c */
        public boolean m28267c() {
            boolean timestamp = this.f10747a.getTimestamp(this.f10748b);
            if (timestamp) {
                long j = this.f10748b.framePosition;
                if (this.f10750d > j) {
                    this.f10749c++;
                }
                this.f10750d = j;
                this.f10751e = j + (this.f10749c << 32);
            }
            return timestamp;
        }
    }

    public C2988l(AudioTrack audioTrack) {
        if (C2885h0.f10477a >= 19) {
            this.f10741a = new C2989a(audioTrack);
            m28270g();
            return;
        }
        this.f10741a = null;
        m28277a(3);
    }

    /* renamed from: a */
    public void m28278a() {
        if (this.f10742b == 4) {
            m28270g();
        }
    }

    /* renamed from: a */
    public final void m28277a(int i) {
        this.f10742b = i;
        if (i == 0) {
            this.f10745e = 0L;
            this.f10746f = -1L;
            this.f10743c = System.nanoTime() / 1000;
            this.f10744d = 5000L;
        } else if (i == 1) {
            this.f10744d = 5000L;
        } else if (i == 2 || i == 3) {
            this.f10744d = 10000000L;
        } else if (i == 4) {
            this.f10744d = 500000L;
        } else {
            throw new IllegalStateException();
        }
    }

    /* renamed from: a */
    public boolean m28276a(long j) {
        C2989a aVar = this.f10741a;
        boolean z = false;
        if (aVar != null) {
            if (j - this.f10745e < this.f10744d) {
                z = false;
            } else {
                this.f10745e = j;
                boolean c = aVar.m28267c();
                int i = this.f10742b;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 4) {
                                    throw new IllegalStateException();
                                }
                            } else if (c) {
                                m28270g();
                            }
                        } else if (!c) {
                            m28270g();
                        }
                    } else if (!c) {
                        m28270g();
                    } else if (this.f10741a.m28269a() > this.f10746f) {
                        m28277a(2);
                    }
                } else if (c) {
                    z = false;
                    if (this.f10741a.m28268b() >= this.f10743c) {
                        this.f10746f = this.f10741a.m28269a();
                        m28277a(1);
                    }
                } else if (j - this.f10743c > 500000) {
                    m28277a(3);
                }
                z = c;
            }
        }
        return z;
    }

    /* renamed from: b */
    public long m28275b() {
        C2989a aVar = this.f10741a;
        return aVar != null ? aVar.m28269a() : -1L;
    }

    /* renamed from: c */
    public long m28274c() {
        C2989a aVar = this.f10741a;
        return aVar != null ? aVar.m28268b() : -9223372036854775807L;
    }

    /* renamed from: d */
    public boolean m28273d() {
        int i = this.f10742b;
        boolean z = true;
        if (i != 1) {
            z = i == 2;
        }
        return z;
    }

    /* renamed from: e */
    public boolean m28272e() {
        return this.f10742b == 2;
    }

    /* renamed from: f */
    public void m28271f() {
        m28277a(4);
    }

    /* renamed from: g */
    public void m28270g() {
        if (this.f10741a != null) {
            m28277a(0);
        }
    }
}
