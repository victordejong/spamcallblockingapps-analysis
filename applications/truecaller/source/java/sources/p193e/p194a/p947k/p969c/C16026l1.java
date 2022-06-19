package p193e.p194a.p947k.p969c;

import com.google.protobuf.ExtensionRegistryLite;
import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.videocallerid.p142v1.FetchVideo;
import com.truecaller.videocallerid.data.VideoDetails;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1238t2.p1239a.p1261j.p1262a.C20500b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p3.a.p0;
import p3.a.p1.a.b;
import p3.a.q1.c;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.utils.VideoCallerIdStubManagerImpl$fetchVideoDetails$2", f = "VideoCallerIdStubManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.c.l1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/l1.class */
public final class C16026l1 extends i implements l<d<? super C16092v>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C16032n1 f45192e;

    /* renamed from: f */
    public final /* synthetic */ String f45193f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16026l1(C16032n1 c16032n1, String str, d dVar) {
        super(1, dVar);
        this.f45192e = c16032n1;
        this.f45193f = str;
    }

    /* renamed from: d */
    public final Object m17986d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16026l1(this.f45192e, this.f45193f, dVar).m17984s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17985l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16026l1(this.f45192e, this.f45193f, dVar);
    }

    /* renamed from: s */
    public final Object m17984s(Object obj) {
        C20500b.C20501a mo20911c;
        C25225a.m3932a3(obj);
        C16092v c16092v = null;
        mo20911c = this.f45192e.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
        C20500b.C20501a c20501a = mo20911c;
        if (c20501a != null) {
            FetchVideo.Request.C3433a newBuilder = FetchVideo.Request.newBuilder();
            String str = this.f45193f;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setNonce(str);
            FetchVideo.Request build = newBuilder.build();
            p3.a.d dVar = ((c) c20501a).a;
            p0<FetchVideo.Request, FetchVideo.Response> p0Var = C20500b.f57557c;
            p0<FetchVideo.Request, FetchVideo.Response> p0Var2 = p0Var;
            if (p0Var == null) {
                synchronized (C20500b.class) {
                    try {
                        p0<FetchVideo.Request, FetchVideo.Response> p0Var3 = C20500b.f57557c;
                        p0Var2 = p0Var3;
                        if (p0Var3 == null) {
                            p0.b b = p0.b();
                            b.c = p0.d.a;
                            b.d = p0.a("truecaller.videocallerid.v1.VideoCallerId", "FetchVideo");
                            b.e = true;
                            FetchVideo.Request defaultInstance = FetchVideo.Request.getDefaultInstance();
                            ExtensionRegistryLite extensionRegistryLite = b.a;
                            b.a = new b.a(defaultInstance);
                            b.b = new b.a(FetchVideo.Response.getDefaultInstance());
                            p0Var2 = b.a();
                            C20500b.f57557c = p0Var2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            FetchVideo.Response response = (FetchVideo.Response) p3.a.q1.e.a(dVar, p0Var2, ((c) c20501a).b, build);
            if (!response.isInitialized()) {
                return null;
            }
            String id = response.getId();
            s1.z.c.l.d(id, "id");
            String url = response.getUrl();
            s1.z.c.l.d(url, "url");
            c16092v = new C16092v(id, C19286f.m13653z(String.valueOf(response.getPhoneNumber())), new VideoDetails(url, response.getDurationMillis(), response.getSizeBytes(), response.getMirrorPlayback()));
        }
        return c16092v;
    }
}
