package com.flurry.sdk;

import com.flurry.sdk.AbstractC3464lo;
import com.flurry.sdk.AbstractC3506u;
import com.flurry.sdk.C3324j;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.ab */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ab.class */
public class C2788ab extends AbstractC3506u implements AbstractC3464lo {

    /* renamed from: k */
    public List<Integer> f3917k;

    /* renamed from: l */
    public List<String> f3918l;

    /* renamed from: m */
    public List<String> f3919m;

    /* renamed from: n */
    public List<String> f3920n;

    /* renamed from: o */
    public String f3921o;

    /* renamed from: p */
    public String f3922p;

    /* renamed from: q */
    public String f3923q;

    /* renamed from: r */
    public String f3924r;

    /* renamed from: s */
    public C2888br f3925s;

    /* renamed from: t */
    public List<C3057f> f3926t;

    /* renamed from: u */
    public String f3927u;

    /* renamed from: v */
    public Map<String, List<AbstractC3469lr>> f3928v;

    /* renamed from: w */
    public Map<String, Boolean> f3929w;

    /* renamed from: z */
    public AbstractC3464lo.AbstractC3465a f3930z;

    /* renamed from: com.flurry.sdk.ab$3 */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ab$3.class */
    public static final /* synthetic */ class C27913 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f3934a = new int[C3324j.EnumC3325a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f3934a[C3324j.EnumC3325a.kOnFetched.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3934a[C3324j.EnumC3325a.kOnFetchFailed.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3934a[C3324j.EnumC3325a.kOnAppExit.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @Override // com.flurry.sdk.AbstractC3506u
    /* renamed from: a */
    public final void mo32318a(final C3324j jVar) {
        C3324j.EnumC3325a aVar;
        if (jVar.f5647a == this && (aVar = jVar.f5648b) != null) {
            int i = C27913.f3934a[aVar.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    if (jVar.f5649c == EnumC2873bh.kUnfilled) {
                        C3444l.m32473a().m32472a("nativeAdUnfilled");
                    }
                    if (this.f3930z != null) {
                        C3331jb.m32681a().m32678a(new Runnable() { // from class: com.flurry.sdk.ab.2
                            @Override // java.lang.Runnable
                            public final void run() {
                                AbstractC3464lo.AbstractC3465a unused = C2788ab.this.f3930z;
                                int i2 = jVar.f5649c.f4222z;
                            }
                        });
                    }
                } else if (i == 3) {
                    m32307s();
                }
            } else if (this.f6063g == null) {
                C3009dw.m33318a(this, EnumC2873bh.kMissingAdController);
            } else {
                m32308r();
                this.f3925s = new C2888br(this);
                C2889bs.m33466a(this);
                synchronized (this) {
                    this.f6066j = AbstractC3506u.EnumC3515a.READY;
                }
                C3444l.m32473a().m32472a("nativeAdReady");
                if (this.f3930z != null) {
                    C3331jb.m32681a().m32678a(new Runnable() { // from class: com.flurry.sdk.ab.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            AbstractC3464lo.AbstractC3465a unused = C2788ab.this.f3930z;
                        }
                    });
                }
            }
        }
    }

    @Override // com.flurry.sdk.AbstractC3506u
    /* renamed from: n */
    public final boolean mo32311n() {
        return super.mo32311n();
    }

    @Override // com.flurry.sdk.AbstractC3518x
    /* renamed from: w */
    public final boolean mo32276w() {
        if (!AbstractC3506u.EnumC3515a.READY.equals(this.f6066j)) {
            return false;
        }
        return this.f6064h.m33518l();
    }
}
