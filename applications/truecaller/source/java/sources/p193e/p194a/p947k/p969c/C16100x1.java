package p193e.p194a.p947k.p969c;

import android.net.Uri;
import com.tenor.android.core.constant.ContentFormat;
import io.agora.rtc.Constants;
import java.io.File;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.videocallerid.utils.VideoFileUtilImpl$getVideoFileInfo$2", f = "VideoFileUtil.kt", l = {Constants.ERR_WATERMARKR_INFO, 128}, m = "invokeSuspend")
/* renamed from: e.a.k.c.x1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/x1.class */
public final class C16100x1 extends i implements l<d<? super C16068r1>, Object> {

    /* renamed from: e */
    public Object f45357e;

    /* renamed from: f */
    public Object f45358f;

    /* renamed from: g */
    public long f45359g;

    /* renamed from: h */
    public long f45360h;

    /* renamed from: i */
    public int f45361i;

    /* renamed from: j */
    public final /* synthetic */ C15942a f45362j;

    /* renamed from: k */
    public final /* synthetic */ Uri f45363k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16100x1(C15942a c15942a, Uri uri, d dVar) {
        super(1, dVar);
        this.f45362j = c15942a;
        this.f45363k = uri;
    }

    /* renamed from: d */
    public final Object m17891d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C16100x1(this.f45362j, this.f45363k, dVar).m17889s(s.a);
    }

    /* renamed from: l */
    public final d<s> m17890l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C16100x1(this.f45362j, this.f45363k, dVar);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v66, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* renamed from: s */
    public final Object m17889s(Object obj) {
        File file;
        String str;
        char c;
        char c2;
        Object obj2;
        File file2;
        a aVar = a.a;
        int i = this.f45361i;
        if (i == 0) {
            C25225a.m3932a3(obj);
            String path = this.f45363k.getPath();
            if (path == null) {
                return null;
            }
            s1.z.c.l.d(path, "uri.path ?: return@withSafeIOContext null");
            file2 = new File(path);
            if (!Boolean.valueOf(file2.exists()).booleanValue()) {
                file2 = null;
            }
            if (file2 == null) {
                return null;
            }
            C15942a c15942a = this.f45362j;
            this.f45357e = file2;
            this.f45361i = 1;
            Objects.requireNonNull(c15942a);
            Object a4 = s1.a.a.a.v0.f.d.a4(c15942a.f44949c, new C16106z1(new C16097w1(c15942a, file2, null), null), this);
            obj2 = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            c2 = this.f45360h;
            c = this.f45359g;
            str = (String) this.f45358f;
            file = (File) this.f45357e;
            C25225a.m3932a3(obj);
            return new C16068r1(file, str, c, c2, ((Boolean) obj).booleanValue());
        } else {
            C25225a.m3932a3(obj);
            obj2 = obj;
            file2 = (File) this.f45357e;
        }
        Long l = (Long) obj2;
        if (l != null) {
            c2 = l.longValue();
            c = file2.length();
            C15942a c15942a2 = this.f45362j;
            this.f45357e = file2;
            this.f45358f = ContentFormat.IMAGE_MP4;
            this.f45359g = c;
            this.f45360h = c2;
            this.f45361i = 2;
            Object m18112e = c15942a2.m18112e(file2, this);
            if (m18112e == aVar) {
                return aVar;
            }
            file = file2;
            obj = m18112e;
            str = ContentFormat.IMAGE_MP4;
            return new C16068r1(file, str, c, c2, ((Boolean) obj).booleanValue());
        }
        return null;
    }
}
