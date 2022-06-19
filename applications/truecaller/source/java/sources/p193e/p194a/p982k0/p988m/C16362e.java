package p193e.p194a.p982k0.p988m;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Environment;
import com.truecaller.log.AssertionUtil;
import java.io.File;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p982k0.p983a.AbstractC16301q;
import p193e.p194a.p982k0.p988m.AbstractC16354b;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.k0.m.e */
/* loaded from: classes7-dex2jar.jar:e/a/k0/m/e.class */
public final class C16362e extends AbstractC16359c {

    /* renamed from: e.a.k0.m.e$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/m/e$a.class */
    public static final class C16363a extends m implements l<ContentValues, s> {

        /* renamed from: b */
        public final /* synthetic */ boolean f46026b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16363a(boolean z) {
            super(1);
            this.f46026b = z;
        }

        /* renamed from: d */
        public Object m17504d(Object obj) {
            ContentValues contentValues = (ContentValues) obj;
            s1.z.c.l.e(contentValues, "it");
            if (this.f46026b) {
                contentValues.put("is_pending", (Integer) 1);
            }
            StringBuilder sb = new StringBuilder();
            sb.append(Environment.DIRECTORY_MUSIC);
            String str = File.separator;
            contentValues.put("relative_path", C22128a.m8610j(sb, str, "TCCallRecordings", str));
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16362e(AbstractC16301q abstractC16301q, ContentResolver contentResolver) {
        super(abstractC16301q, contentResolver);
        s1.z.c.l.e(abstractC16301q, "fileWrapper");
        s1.z.c.l.e(contentResolver, "contentResolver");
    }

    @Override // p193e.p194a.p982k0.p988m.AbstractC16353a
    /* renamed from: b */
    public Uri mo17507b(String str, boolean z) {
        s1.z.c.l.e(str, "recordingName");
        return m17511f(str, new C16363a(z));
    }

    @Override // p193e.p194a.p982k0.p988m.AbstractC16353a
    /* renamed from: e */
    public AbstractC16354b mo17506e(String str, boolean z) {
        AbstractC16354b abstractC16354b;
        AbstractC16354b abstractC16354b2 = AbstractC16354b.C16357c.f46018a;
        try {
            String m17510g = m17510g(str, z);
            s1.z.c.l.e(m17510g, "recordingName");
            Uri m17511f = m17511f(m17510g, new C16363a(false));
            String uri = m17511f != null ? m17511f.toString() : null;
            abstractC16354b = uri == null ? abstractC16354b2 : new AbstractC16354b.C16358d(uri);
        } catch (Exception e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            abstractC16354b = abstractC16354b2;
        }
        return abstractC16354b;
    }

    @Override // p193e.p194a.p982k0.p988m.AbstractC16359c
    /* renamed from: i */
    public int mo17505i(String str) {
        s1.z.c.l.e(str, "path");
        RuntimeException runtimeException = new RuntimeException("Absolute path should be not available for Android 10+");
        AssertionUtil.shouldNeverHappen(runtimeException, new String[0]);
        throw runtimeException;
    }
}
