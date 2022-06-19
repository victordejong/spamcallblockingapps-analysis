package p193e.p194a.p947k.p969c;

import com.google.protobuf.GeneratedMessageLite;
import com.truecaller.api.services.videocallerid.p142v1.GetUploadLinks;
import java.io.IOException;
import java.util.Map;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1238t2.p1239a.p1261j.p1262a.C20500b;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p947k.p969c.AbstractC16045q0;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.videocallerid.utils.VideoCallerIdStubManagerImpl$getUploadLinks$2", f = "VideoCallerIdStubManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.k.c.m1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/m1.class */
public final class C16029m1 extends i implements p<i0, d<? super AbstractC16045q0>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C16032n1 f45196e;

    /* renamed from: f */
    public final /* synthetic */ C16068r1 f45197f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16029m1(C16032n1 c16032n1, C16068r1 c16068r1, d dVar) {
        super(2, dVar);
        this.f45196e = c16032n1;
        this.f45197f = c16068r1;
    }

    /* renamed from: i */
    public final d<s> m17982i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16029m1(this.f45196e, this.f45197f, dVar);
    }

    /* renamed from: k */
    public final Object m17981k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16029m1(this.f45196e, this.f45197f, dVar).m17980s(s.a);
    }

    /* renamed from: s */
    public final Object m17980s(Object obj) {
        Object obj2;
        C20500b.C20501a mo20911c;
        C20500b.C20501a c20501a;
        C25225a.m3932a3(obj);
        try {
            mo20911c = this.f45196e.mo20911c((r5 & 1) != 0 ? AbstractC8371e.C8372a.f25732a : null);
            c20501a = mo20911c;
        } catch (IOException e) {
            obj2 = new AbstractC16045q0.C16046a(e);
        } catch (RuntimeException e2) {
            obj2 = new AbstractC16045q0.C16046a(e2);
        }
        if (c20501a != null) {
            GetUploadLinks.Request.C3437a newBuilder = GetUploadLinks.Request.newBuilder();
            String str = this.f45197f.f45286b;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setMimeType(str);
            long j = this.f45197f.f45287c;
            newBuilder.copyOnWrite();
            ((GeneratedMessageLite.Builder) newBuilder).instance.setSizeBytes(j);
            GetUploadLinks.Response m11078c = c20501a.m11078c((GetUploadLinks.Request) newBuilder.build());
            l.d(m11078c, "result");
            String id = m11078c.getId();
            l.d(id, "result.id");
            String uploadUrl = m11078c.getUploadUrl();
            l.d(uploadUrl, "result.uploadUrl");
            String downloadUrl = m11078c.getDownloadUrl();
            l.d(downloadUrl, "result.downloadUrl");
            Map<String, String> formFieldsMap = m11078c.getFormFieldsMap();
            l.d(formFieldsMap, "result.formFieldsMap");
            obj2 = new AbstractC16045q0.C16047b(new C16042p0(id, uploadUrl, downloadUrl, formFieldsMap));
            return obj2;
        }
        return new AbstractC16045q0.C16046a(null);
    }
}
