package p193e.p194a.p852i.p908w;

import com.truecaller.common.network.util.KnownEndpoints;
import com.truecaller.log.AssertionUtil;
import com.truecaller.log.UnmutedException;
import java.io.IOException;
import java.util.List;
import java.util.Set;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p997k3.p999k.C16489a;
import w3.c.a.a.a.h;
import x3.a0;
/* renamed from: e.a.i.w.f$c */
/* loaded from: classes3-dex2jar.jar:e/a/i/w/f$c.class */
public class f$c implements Runnable {

    /* renamed from: a */
    public final KnownEndpoints f43410a;

    /* renamed from: b */
    public final String f43411b;

    /* renamed from: c */
    public final Set<String> f43412c;

    /* renamed from: d */
    public final Integer f43413d;

    /* renamed from: e */
    public final String f43414e;

    /* renamed from: f */
    public final String f43415f;

    /* renamed from: g */
    public final String f43416g;

    /* renamed from: h */
    public final int f43417h;

    /* renamed from: i */
    public final /* synthetic */ f f43418i;

    public f$c(f fVar, KnownEndpoints knownEndpoints, String str, int i, Set set, Integer num, String str2, String str3, List list, f$a f_a) {
        this.f43418i = fVar;
        this.f43410a = knownEndpoints;
        this.f43411b = str;
        this.f43417h = i;
        this.f43412c = set;
        this.f43413d = num;
        this.f43414e = str2;
        this.f43415f = str3;
        this.f43416g = list == null ? null : h.o(list, ',');
    }

    /* renamed from: a */
    public final C16489a m19003a(KnownEndpoints knownEndpoints, String str, Integer num, String str2, String str3, String str4, String str5, int i) throws IOException {
        a0 a0Var;
        try {
            a0Var = ((AbstractC15246b) C8367d.m28633a(knownEndpoints, AbstractC15246b.class)).m19010a(this.f43418i.a(), str, num, str2, str3, str4, str5, i < 0 ? null : Integer.valueOf(i)).execute();
        } catch (IllegalStateException e) {
            AssertionUtil.reportThrowableButNeverCrash(new UnmutedException.AdsIllegalStateException(UnmutedException.AdsIllegalStateException.Cause.CAMPAIGN_REQUEST_ILLEGAL_STATE));
            a0Var = null;
        }
        C16489a c16489a = null;
        if (a0Var != null) {
            c16489a = null;
            if (a0Var.b()) {
                c16489a = (C16489a) a0Var.b;
            }
        }
        return c16489a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x01eb, code lost:
        if (r20 != androidx.recyclerview.widget.RecyclerView.FOREVER_NS) goto L42;
     */
    /* JADX WARN: Type inference failed for: r0v117, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v174, types: [long] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void run() {
        /*
            Method dump skipped, instructions count: 1302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p908w.f$c.run():void");
    }
}
