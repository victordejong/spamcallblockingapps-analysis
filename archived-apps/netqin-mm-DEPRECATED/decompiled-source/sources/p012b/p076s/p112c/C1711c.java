package p012b.p076s.p112c;

import android.media.PlaybackParams;
import android.os.Build;
/* renamed from: b.s.c.c */
/* loaded from: classes-dex2jar.jar:b/s/c/c.class */
public final class C1711c {

    /* renamed from: a */
    public Integer f6987a;

    /* renamed from: b */
    public Float f6988b;

    /* renamed from: c */
    public Float f6989c;

    /* renamed from: d */
    public PlaybackParams f6990d;

    /* renamed from: b.s.c.c$a */
    /* loaded from: classes-dex2jar.jar:b/s/c/c$a.class */
    public static final class C1712a {

        /* renamed from: a */
        public Integer f6991a;

        /* renamed from: b */
        public Float f6992b;

        /* renamed from: c */
        public Float f6993c;

        /* renamed from: d */
        public PlaybackParams f6994d;

        public C1712a() {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f6994d = new PlaybackParams();
            }
        }

        public C1712a(C1711c cVar) {
            if (cVar == null) {
                throw new NullPointerException("playbakcParams shouldn't be null");
            } else if (Build.VERSION.SDK_INT >= 23) {
                this.f6994d = cVar.m32304c();
            } else {
                this.f6991a = cVar.m32306a();
                this.f6992b = cVar.m32305b();
                this.f6993c = cVar.m32303d();
            }
        }

        /* renamed from: a */
        public C1712a m32301a(float f) {
            if (f == 0.0f) {
                throw new IllegalArgumentException("0 pitch is not allowed");
            } else if (f >= 0.0f) {
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f6994d.setPitch(f);
                } else {
                    this.f6992b = Float.valueOf(f);
                }
                return this;
            } else {
                throw new IllegalArgumentException("pitch must not be negative");
            }
        }

        /* renamed from: a */
        public C1712a m32300a(int i) {
            if (Build.VERSION.SDK_INT >= 23) {
                this.f6994d.setAudioFallbackMode(i);
            } else {
                this.f6991a = Integer.valueOf(i);
            }
            return this;
        }

        /* renamed from: a */
        public C1711c m32302a() {
            return Build.VERSION.SDK_INT >= 23 ? new C1711c(this.f6994d) : new C1711c(this.f6991a, this.f6992b, this.f6993c);
        }

        /* renamed from: b */
        public C1712a m32299b(float f) {
            if (f == 0.0f) {
                throw new IllegalArgumentException("0 speed is not allowed");
            } else if (f >= 0.0f) {
                if (Build.VERSION.SDK_INT >= 23) {
                    this.f6994d.setSpeed(f);
                } else {
                    this.f6993c = Float.valueOf(f);
                }
                return this;
            } else {
                throw new IllegalArgumentException("negative speed is not supported");
            }
        }
    }

    public C1711c(PlaybackParams playbackParams) {
        this.f6990d = playbackParams;
    }

    public C1711c(Integer num, Float f, Float f2) {
        this.f6987a = num;
        this.f6988b = f;
        this.f6989c = f2;
    }

    /* renamed from: a */
    public Integer m32306a() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.f6987a;
        }
        try {
            return Integer.valueOf(this.f6990d.getAudioFallbackMode());
        } catch (IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: b */
    public Float m32305b() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.f6988b;
        }
        try {
            return Float.valueOf(this.f6990d.getPitch());
        } catch (IllegalStateException e) {
            return null;
        }
    }

    /* renamed from: c */
    public PlaybackParams m32304c() {
        if (Build.VERSION.SDK_INT >= 23) {
            return this.f6990d;
        }
        return null;
    }

    /* renamed from: d */
    public Float m32303d() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.f6989c;
        }
        try {
            return Float.valueOf(this.f6990d.getSpeed());
        } catch (IllegalStateException e) {
            return null;
        }
    }
}
