package p193e.p194a.p947k;

import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import javax.inject.Inject;
import org.apache.avro.Schema;
import p193e.p1577m.p1578a.p1596c.p1618j1.C24485f;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17481c4;
import p193e.p194a.p1050l5.p1051a.C17499d4;
import p193e.p194a.p1050l5.p1051a.C17604j3;
import p193e.p194a.p1050l5.p1051a.C17639l4;
import p193e.p194a.p1050l5.p1051a.C17685p;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import s1.f0.v;
import s1.f0.w;
import s1.k;
import s1.o;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.k.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/f.class */
public final class C16109f implements AbstractC16107d {

    /* renamed from: a */
    public final List<o<Long, String, String>> f45377a = new ArrayList();

    /* renamed from: b */
    public final AbstractC19462a f45378b;

    /* renamed from: c */
    public final AbstractC16044q f45379c;

    /* renamed from: d */
    public final AbstractC19222c f45380d;

    @Inject
    public C16109f(AbstractC19462a abstractC19462a, AbstractC16044q abstractC16044q, AbstractC19222c abstractC19222c) {
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC16044q, "exoPlayerUtil");
        l.e(abstractC19222c, "clock");
        this.f45378b = abstractC19462a;
        this.f45379c = abstractC16044q;
        this.f45380d = abstractC19222c;
    }

    @Override // p193e.p194a.p947k.AbstractC16107d
    /* renamed from: a */
    public void mo17876a(String str, String str2, String str3) {
        l.e(str, "url");
        l.e(str3, "analyticsContext");
        C17685p.C17687b m15865a = C17685p.m15865a();
        C17639l4.C17641b m15902a = C17639l4.m15902a();
        m15902a.m15899c(str);
        m15902a.m15900b(m17868i(str));
        m15865a.m15856i(m15902a.build());
        m15865a.m15861d(Long.valueOf(System.currentTimeMillis()));
        m15865a.m15857h("DownloadInitiated");
        m15865a.m15859f(Boolean.FALSE);
        m15865a.m15862c(str3);
        C17604j3.C17606b m15929a = C17604j3.m15929a();
        m15929a.m15926c(str2 != null ? m17869h(str2) : null);
        String str4 = null;
        if (str2 != null) {
            str4 = m17870g(str2);
        }
        m15929a.m15927b(str4);
        m15929a.m15925d("");
        m15865a.m15863b(m15929a.build());
        AbstractC19462a abstractC19462a = this.f45378b;
        C17685p build = m15865a.build();
        l.d(build, "event.build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p947k.AbstractC16107d
    /* renamed from: b */
    public void mo17875b(String str, boolean z, String str2, String str3) {
        l.e(str, "url");
        l.e(str3, "analyticsContext");
        C17685p.C17687b m15865a = C17685p.m15865a();
        C17639l4.C17641b m15902a = C17639l4.m15902a();
        m15902a.m15899c(str);
        m15902a.m15900b(m17868i(str));
        m15865a.m15856i(m15902a.build());
        m15865a.m15859f(Boolean.valueOf(z));
        m15865a.m15857h("VideoPlayed");
        m15865a.m15862c(str3);
        C17604j3.C17606b m15929a = C17604j3.m15929a();
        m15929a.m15926c(str2 != null ? m17869h(str2) : null);
        String str4 = null;
        if (str2 != null) {
            str4 = m17870g(str2);
        }
        m15929a.m15927b(str4);
        m15929a.m15925d("");
        m15865a.m15863b(m15929a.build());
        AbstractC19462a abstractC19462a = this.f45378b;
        C17685p build = m15865a.build();
        l.d(build, "event.build()");
        abstractC19462a.mo13275a(build);
    }

    @Override // p193e.p194a.p947k.AbstractC16107d
    /* renamed from: c */
    public void mo17874c(List<C24485f> list, String str, String str2, int i) {
        l.e(list, "downloadEntry");
        l.e(str2, "analyticsContext");
        C24485f c24485f = (C24485f) i.B(list);
        ListIterator<C24485f> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            C24485f previous = listIterator.previous();
            if (previous.f68356b == 3) {
                String uri = c24485f.f68355a.f4991c.toString();
                l.d(uri, "downloadFirst.request.uri.toString()");
                long j = c24485f.f68359e;
                long j2 = c24485f.f68357c;
                long j3 = previous.f68358d;
                long j4 = previous.f68357c;
                C17685p.C17687b m15865a = C17685p.m15865a();
                C17639l4.C17641b m15902a = C17639l4.m15902a();
                m15902a.m15899c(uri);
                m15902a.m15900b(m17868i(uri));
                Long valueOf = Long.valueOf(j);
                m15902a.validate(m15902a.fields()[1], valueOf);
                m15902a.f49777b = valueOf;
                m15902a.fieldSetFlags()[1] = true;
                m15865a.m15856i(m15902a.build());
                m15865a.m15861d(Long.valueOf(j2));
                Long valueOf2 = Long.valueOf(j3);
                m15865a.validate(m15865a.fields()[5], valueOf2);
                m15865a.f50002d = valueOf2;
                m15865a.fieldSetFlags()[5] = true;
                Integer valueOf3 = Integer.valueOf((int) (j3 - j4));
                m15865a.validate(m15865a.fields()[6], valueOf3);
                m15865a.f50003e = valueOf3;
                m15865a.fieldSetFlags()[6] = true;
                m15865a.m15857h("Downloaded");
                m15865a.m15862c(str2);
                C17604j3.C17606b m15929a = C17604j3.m15929a();
                m15929a.m15926c(str != null ? m17869h(str) : null);
                m15929a.m15927b(str != null ? m17870g(str) : null);
                m15929a.m15925d("");
                m15865a.m15863b(m15929a.build());
                if (i > 0) {
                    Schema schema = C17481c4.f49014c;
                    C17481c4.C17483b c17483b = new C17481c4.C17483b(null);
                    c17483b.m16008b(c17483b.f49020a);
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                    for (C24485f c24485f2 : list) {
                        Schema schema2 = C17499d4.f49098e;
                        C17499d4.C17501b c17501b = new C17499d4.C17501b(null);
                        c17501b.m15994c(c24485f2.f68357c);
                        c17501b.m15995b(c24485f2.f68358d);
                        arrayList.add(c17501b.build());
                    }
                    c17483b.validate(c17483b.fields()[1], arrayList);
                    c17483b.f49021b = arrayList;
                    c17483b.fieldSetFlags()[1] = true;
                    m15865a.m15858g(c17483b.build());
                }
                AbstractC19462a abstractC19462a = this.f45378b;
                C17685p build = m15865a.build();
                l.d(build, "event.build()");
                abstractC19462a.mo13275a(build);
                return;
            }
        }
        throw new NoSuchElementException("List contains no element matching the predicate.");
    }

    @Override // p193e.p194a.p947k.AbstractC16107d
    /* renamed from: d */
    public void mo17873d(String str, long j, String str2, String str3) {
        l.e(str, "url");
        l.e(str3, "analyticsContext");
        C17685p.C17687b m15865a = C17685p.m15865a();
        C17639l4.C17641b m15902a = C17639l4.m15902a();
        m15902a.m15899c(str);
        m15902a.m15900b(m17868i(str));
        m15865a.m15856i(m15902a.build());
        m15865a.m15860e(C25225a.m3938Z1(new k("videoPlayedDuration", String.valueOf(j))));
        m15865a.m15857h("VideoStopped");
        m15865a.m15862c(str3);
        C17604j3.C17606b m15929a = C17604j3.m15929a();
        m15929a.m15926c(str2 != null ? m17869h(str2) : null);
        String str4 = null;
        if (str2 != null) {
            str4 = m17870g(str2);
        }
        m15929a.m15927b(str4);
        m15929a.m15925d("");
        m15865a.m15863b(m15929a.build());
        AbstractC19462a abstractC19462a = this.f45378b;
        C17685p build = m15865a.build();
        l.d(build, "event.build()");
        abstractC19462a.mo13275a(build);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a7 A[EDGE_INSN: B:40:0x00a7->B:20:0x00a7 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v58, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    @Override // p193e.p194a.p947k.AbstractC16107d
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo17872e(long r8, java.lang.String r10, java.lang.String r11, java.lang.String r12) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.C16109f.mo17872e(long, java.lang.String, java.lang.String, java.lang.String):void");
    }

    @Override // p193e.p194a.p947k.AbstractC16107d
    /* renamed from: f */
    public void mo17871f(List<C24485f> list, String str, String str2, int i) {
        l.e(list, "downloadEntry");
        l.e(str2, "analyticsContext");
        C24485f c24485f = (C24485f) i.B(list);
        ListIterator<C24485f> listIterator = list.listIterator(list.size());
        while (listIterator.hasPrevious()) {
            C24485f previous = listIterator.previous();
            if (previous.f68356b == 4) {
                String uri = c24485f.f68355a.f4991c.toString();
                l.d(uri, "downloadFirst.request.uri.toString()");
                long j = c24485f.f68359e;
                long j2 = c24485f.f68357c;
                long j3 = previous.f68358d;
                int i2 = previous.f68361g;
                float f = previous.f68362h.f68402b;
                C17685p.C17687b m15865a = C17685p.m15865a();
                C17639l4.C17641b m15902a = C17639l4.m15902a();
                m15902a.m15899c(uri);
                m15902a.m15900b(m17868i(uri));
                Long valueOf = Long.valueOf(j);
                m15902a.validate(m15902a.fields()[1], valueOf);
                m15902a.f49777b = valueOf;
                m15902a.fieldSetFlags()[1] = true;
                m15865a.m15856i(m15902a.build());
                m15865a.m15861d(Long.valueOf(j2));
                Long valueOf2 = Long.valueOf(j3);
                m15865a.validate(m15865a.fields()[7], valueOf2);
                m15865a.f50004f = valueOf2;
                m15865a.fieldSetFlags()[7] = true;
                Integer valueOf3 = Integer.valueOf(i2);
                m15865a.validate(m15865a.fields()[10], valueOf3);
                m15865a.f50007i = valueOf3;
                m15865a.fieldSetFlags()[10] = true;
                m15865a.m15860e(C25225a.m3938Z1(new k("PercentageDownloaded", String.valueOf(f))));
                m15865a.m15857h("Failed");
                m15865a.m15862c(str2);
                C17604j3.C17606b m15929a = C17604j3.m15929a();
                m15929a.m15926c(str != null ? m17869h(str) : null);
                m15929a.m15927b(str != null ? m17870g(str) : null);
                m15929a.m15925d("");
                m15865a.m15863b(m15929a.build());
                if (i > 0) {
                    Schema schema = C17481c4.f49014c;
                    C17481c4.C17483b c17483b = new C17481c4.C17483b(null);
                    c17483b.m16008b(c17483b.f49020a);
                    ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                    for (C24485f c24485f2 : list) {
                        Schema schema2 = C17499d4.f49098e;
                        C17499d4.C17501b c17501b = new C17499d4.C17501b(null);
                        c17501b.m15994c(c24485f2.f68357c);
                        c17501b.m15995b(c24485f2.f68358d);
                        arrayList.add(c17501b.build());
                    }
                    c17483b.validate(c17483b.fields()[1], arrayList);
                    c17483b.f49021b = arrayList;
                    c17483b.fieldSetFlags()[1] = true;
                    m15865a.m15858g(c17483b.build());
                }
                AbstractC19462a abstractC19462a = this.f45378b;
                C17685p build = m15865a.build();
                l.d(build, "event.build()");
                abstractC19462a.mo13275a(build);
                return;
            }
        }
        throw new NoSuchElementException("List contains no element matching the predicate.");
    }

    /* renamed from: g */
    public final String m17870g(String str) {
        String str2;
        if (!v.W(str, '+', false, 2) || str.length() <= 12) {
            str2 = str.length() == 12 ? w.n0(str, 2) : "";
        } else {
            str2 = str.substring(1, 3);
            l.d(str2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        }
        return str2;
    }

    /* renamed from: h */
    public final String m17869h(String str) {
        String str2 = str;
        if (str.length() >= 10) {
            str2 = w.o0(str, 10);
        }
        return str2;
    }

    /* renamed from: i */
    public final String m17868i(String str) {
        Uri parse = Uri.parse(str);
        l.d(parse, "Uri.parse(this)");
        String lastPathSegment = parse.getLastPathSegment();
        if (lastPathSegment == null) {
            lastPathSegment = "";
        }
        l.d(lastPathSegment, "Uri.parse(this).lastPathSegment ?: \"\"");
        return lastPathSegment;
    }
}
