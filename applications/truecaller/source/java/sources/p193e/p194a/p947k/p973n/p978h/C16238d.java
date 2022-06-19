package p193e.p194a.p947k.p973n.p978h;

import io.agora.rtc.Constants;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Provider;
import p193e.p194a.p1129p5.AbstractC19243l;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p971l.AbstractC16121c;
import p193e.p194a.p947k.p981q.AbstractC16268e;
import q3.a.x2.a1;
import q3.a.x2.k1;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.k.n.h.d */
/* loaded from: classes15-dex2jar.jar:e/a/k/n/h/d.class */
public final class C16238d implements AbstractC16234a {

    /* renamed from: a */
    public final f f45767a;

    /* renamed from: b */
    public final Provider<String> f45768b;

    /* renamed from: c */
    public final AbstractC16268e f45769c;

    /* renamed from: d */
    public final AbstractC16044q f45770d;

    /* renamed from: e */
    public final AbstractC19321u f45771e;

    /* renamed from: f */
    public final AbstractC19243l f45772f;

    @e(c = "com.truecaller.videocallerid.db.predefinedVideos.PredefinedVideosRepositoryImpl", f = "PredefinedVideosRepository.kt", l = {Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED}, m = "isVideoPredefinedVideo")
    /* renamed from: e.a.k.n.h.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/n/h/d$a.class */
    public static final class C16239a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f45773d;

        /* renamed from: e */
        public int f45774e;

        /* renamed from: g */
        public Object f45776g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16239a(d dVar) {
            super(dVar);
            C16238d.this = r4;
        }

        /* renamed from: s */
        public final Object m17680s(Object obj) {
            this.f45773d = obj;
            this.f45774e |= Integer.MIN_VALUE;
            return C16238d.this.m17681b(null, this);
        }
    }

    @Inject
    public C16238d(@Named("IO") f fVar, @Named("PredefinedVideoFirebaseConfig") Provider<String> provider, AbstractC16268e abstractC16268e, AbstractC16044q abstractC16044q, AbstractC19321u abstractC19321u, AbstractC19243l abstractC19243l) {
        l.e(fVar, "asyncContext");
        l.e(provider, "predefinedVideoConfig");
        l.e(abstractC16268e, "downloadManager");
        l.e(abstractC16044q, "exoPlayerUtil");
        l.e(abstractC19321u, "networkUtil");
        l.e(abstractC19243l, "gsonUtil");
        this.f45767a = fVar;
        this.f45768b = provider;
        this.f45769c = abstractC16268e;
        this.f45770d = abstractC16044q;
        this.f45771e = abstractC19321u;
        this.f45772f = abstractC19243l;
    }

    /* renamed from: a */
    public final void m17682a(Map<String, a1<AbstractC16121c>> map, String str, AbstractC16121c abstractC16121c) {
        a1<AbstractC16121c> a1Var = map.get(str);
        if (a1Var != null) {
            a1Var.g(abstractC16121c);
        } else {
            map.put(str, k1.a(abstractC16121c));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c1  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m17681b(java.lang.String r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p947k.p973n.p978h.C16238d.m17681b(java.lang.String, s1.w.d):java.lang.Object");
    }
}
