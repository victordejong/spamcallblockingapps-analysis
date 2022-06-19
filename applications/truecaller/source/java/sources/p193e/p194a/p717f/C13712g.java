package p193e.p194a.p717f;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.blocking.ActionSource;
import com.truecaller.blocking.FilterAction;
import com.truecaller.blocking.FilterMatch;
import com.truecaller.incallui.utils.BlockAction;
import com.truecaller.settings.CallingSettings;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1405z2.AbstractC21847a;
import p193e.p194a.p288a0.AbstractC7395n;
import p193e.p194a.p673d0.AbstractC12522j0;
import p193e.p194a.p717f.p734z.AbstractC13826k;
import p193e.p194a.p751f4.p762g.AbstractC14028r;
import p193e.p194a.p798g5.AbstractC14537p;
import p193e.p194a.p837h0.AbstractC14835j;
import p193e.p194a.p997k3.p1000l.AbstractC16498f;
import p193e.p194a.p997k3.p998j.C16461b;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.f.g */
/* loaded from: classes10-dex2jar.jar:e/a/f/g.class */
public final class C13712g implements AbstractC13826k {

    /* renamed from: a */
    public final f f39705a;

    /* renamed from: b */
    public final Context f39706b;

    /* renamed from: c */
    public final Provider<AbstractC12522j0> f39707c;

    /* renamed from: d */
    public final Provider<AbstractC14028r> f39708d;

    /* renamed from: e */
    public final Provider<AbstractC14835j> f39709e;

    /* renamed from: f */
    public final Provider<AbstractC14537p> f39710f;

    /* renamed from: g */
    public final Provider<CallingSettings> f39711g;

    /* renamed from: h */
    public final Provider<AbstractC16498f> f39712h;

    /* renamed from: i */
    public final Provider<AbstractC7395n> f39713i;

    /* renamed from: j */
    public final Provider<C16461b> f39714j;

    /* renamed from: k */
    public final Provider<AbstractC21847a> f39715k;

    /* renamed from: e.a.f.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/g$a.class */
    public static final class C13713a {

        /* renamed from: a */
        public final int f39716a;

        /* renamed from: b */
        public final boolean f39717b;

        /* renamed from: c */
        public final boolean f39718c;

        public C13713a(int i, boolean z, boolean z2) {
            this.f39716a = i;
            this.f39717b = z;
            this.f39718c = z2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C13713a)) {
                    return false;
                }
                C13713a c13713a = (C13713a) obj;
                return this.f39716a == c13713a.f39716a && this.f39717b == c13713a.f39717b && this.f39718c == c13713a.f39718c;
            }
            return true;
        }

        public int hashCode() {
            int i = this.f39716a;
            boolean z = this.f39717b;
            int i2 = 1;
            int i3 = z ? 1 : 0;
            if (z) {
                i3 = 1;
            }
            boolean z2 = this.f39718c;
            if (!z2) {
                i2 = z2 ? 1 : 0;
            }
            return (((i * 31) + i3) * 31) + i2;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("InCallUIFilterMatch(spamScore=");
            m8728C.append(this.f39716a);
            m8728C.append(", isWhiteListed=");
            m8728C.append(this.f39717b);
            m8728C.append(", isTopSpammer=");
            return C22128a.m8590o(m8728C, this.f39718c, ")");
        }
    }

    @Inject
    public C13712g(@Named("IO") f fVar, Context context, Provider<AbstractC12522j0> provider, Provider<AbstractC14028r> provider2, Provider<AbstractC14835j> provider3, Provider<AbstractC14537p> provider4, Provider<CallingSettings> provider5, Provider<AbstractC16498f> provider6, Provider<AbstractC7395n> provider7, Provider<C16461b> provider8, Provider<AbstractC21847a> provider9) {
        l.e(fVar, "asyncCoroutineContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(provider, "searchEngine");
        l.e(provider2, "searchManager");
        l.e(provider3, "filterManager");
        l.e(provider4, "tagDisplayUtil");
        l.e(provider5, "callingSettings");
        l.e(provider6, "numberProvider");
        l.e(provider7, "spamCategoryFetcher");
        l.e(provider8, "aggregatedContactDao");
        l.e(provider9, "badgeHelper");
        this.f39705a = fVar;
        this.f39706b = context;
        this.f39707c = provider;
        this.f39708d = provider2;
        this.f39709e = provider3;
        this.f39710f = provider4;
        this.f39711g = provider5;
        this.f39712h = provider6;
        this.f39713i = provider7;
        this.f39714j = provider8;
        this.f39715k = provider9;
    }

    /* renamed from: a */
    public static final BlockAction m21290a(C13712g c13712g, FilterMatch filterMatch) {
        BlockAction blockAction;
        Objects.requireNonNull(c13712g);
        if (!(filterMatch.f10453b == FilterAction.FILTER_BLACKLISTED)) {
            blockAction = null;
        } else {
            Object obj = c13712g.f39711g.get();
            l.d(obj, "callingSettings.get()");
            CallingSettings.BlockMethod mo8949z = ((CallingSettings) obj).mo8949z();
            blockAction = (mo8949z != null && mo8949z.ordinal() == 1) ? BlockAction.MUTE : BlockAction.HANG_UP;
        }
        return blockAction;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
        if (r8 != null) goto L18;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.truecaller.blocking.FilterMatch m21289b(p193e.p194a.p717f.C13712g r8, java.lang.String r9) {
        /*
            r0 = r8
            android.content.Context r0 = r0.f39706b
            android.telephony.TelephonyManager r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13541j0(r0)
            r10 = r0
            r0 = r10
            java.lang.String r0 = r0.getNetworkCountryIso()
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            if (r0 == 0) goto L2a
            java.util.Locale r0 = java.util.Locale.ENGLISH
            r13 = r0
            r0 = r13
            java.lang.String r1 = "Locale.ENGLISH"
            r2 = r11
            r3 = r13
            java.lang.String r4 = "(this as java.lang.String).toUpperCase(locale)"
            java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8586p(r0, r1, r2, r3, r4)
            r13 = r0
            goto L2d
        L2a:
            r0 = 0
            r13 = r0
        L2d:
            r0 = r10
            java.lang.String r0 = r0.getSimCountryIso()
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L48
            java.util.Locale r0 = java.util.Locale.ENGLISH
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Locale.ENGLISH"
            r2 = r10
            r3 = r11
            java.lang.String r4 = "(this as java.lang.String).toUpperCase(locale)"
            java.lang.String r0 = p193e.p1432d.p1439c.p1440a.C22128a.m8586p(r0, r1, r2, r3, r4)
            r10 = r0
            goto L4a
        L48:
            r0 = 0
            r10 = r0
        L4a:
            r0 = r8
            javax.inject.Provider<e.a.h0.j> r0 = r0.f39709e
            java.lang.Object r0 = r0.get()
            e.a.h0.j r0 = (p193e.p194a.p837h0.AbstractC14835j) r0
            r11 = r0
            r0 = r13
            if (r0 == 0) goto L73
            r0 = r12
            r8 = r0
            r0 = r13
            boolean r0 = s1.f0.r.p(r0)
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L6c
            r0 = r13
            r8 = r0
        L6c:
            r0 = r8
            if (r0 == 0) goto L73
            goto L75
        L73:
            r0 = r10
            r8 = r0
        L75:
            r0 = r11
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = r8
            r5 = 0
            r6 = 1
            com.truecaller.blocking.FilterMatch r0 = r0.mo19590f(r1, r2, r3, r4, r5, r6)
            r8 = r0
            r0 = r8
            java.lang.String r1 = "filterManager.get().find…           true\n        )"
            s1.z.c.l.d(r0, r1)
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.C13712g.m21289b(e.a.f.g, java.lang.String):com.truecaller.blocking.FilterMatch");
    }

    /* renamed from: c */
    public final C13713a m21288c(FilterMatch filterMatch, int i) {
        int i2;
        boolean z;
        boolean z2 = false;
        if (filterMatch.f10454c == ActionSource.TOP_SPAMMER) {
            int i3 = filterMatch.f10457f;
            i2 = i;
            if (i3 > i) {
                i2 = i3;
            }
            z2 = true;
            z = false;
        } else if (filterMatch.f10453b == FilterAction.ALLOW_WHITELISTED) {
            i2 = 0;
            z = true;
        } else {
            i2 = 0;
            z = false;
        }
        return new C13713a(i2, z, z2);
    }
}
