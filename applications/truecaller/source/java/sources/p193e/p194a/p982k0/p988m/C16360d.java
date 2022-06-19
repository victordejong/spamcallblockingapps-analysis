package p193e.p194a.p982k0.p988m;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import android.os.Environment;
import com.truecaller.log.AssertionUtil;
import java.io.File;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p982k0.p983a.AbstractC16301q;
import p193e.p194a.p982k0.p988m.AbstractC16354b;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.k0.m.d */
/* loaded from: classes7-dex2jar.jar:e/a/k0/m/d.class */
public final class C16360d extends AbstractC16359c {

    /* renamed from: d */
    public final AbstractC16301q f46023d;

    /* renamed from: e.a.k0.m.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/k0/m/d$a.class */
    public static final class C16361a extends m implements l<ContentValues, s> {

        /* renamed from: c */
        public final /* synthetic */ String f46025c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16361a(String str) {
            super(1);
            C16360d.this = r4;
            this.f46025c = str;
        }

        /* renamed from: d */
        public Object m17508d(Object obj) {
            ContentValues contentValues = (ContentValues) obj;
            s1.z.c.l.e(contentValues, "it");
            Objects.requireNonNull(C16360d.this);
            File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MUSIC), "TCCallRecordings");
            if (!file.exists()) {
                file.mkdirs();
            }
            contentValues.put("_data", new File(file, this.f46025c).getPath());
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16360d(AbstractC16301q abstractC16301q, ContentResolver contentResolver) {
        super(abstractC16301q, contentResolver);
        s1.z.c.l.e(abstractC16301q, "fileWrapper");
        s1.z.c.l.e(contentResolver, "contentResolver");
        this.f46023d = abstractC16301q;
    }

    @Override // p193e.p194a.p982k0.p988m.AbstractC16353a
    /* renamed from: b */
    public Uri mo17507b(String str, boolean z) {
        s1.z.c.l.e(str, "recordingName");
        return m17511f(str, new C16361a(str));
    }

    @Override // p193e.p194a.p982k0.p988m.AbstractC16353a
    /* renamed from: e */
    public AbstractC16354b mo17506e(String str, boolean z) {
        AbstractC16354b.C16356b c16356b = AbstractC16354b.C16356b.f46017a;
        if (!s1.z.c.l.a(Environment.getExternalStorageState(), "mounted")) {
            return AbstractC16354b.C16355a.f46016a;
        }
        try {
            String absolutePath = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_MUSIC), "TCCallRecordings").getAbsolutePath();
            s1.z.c.l.d(absolutePath, "absolutePath");
            boolean z2 = true;
            try {
            } catch (SecurityException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
            if (!this.f46023d.mo17608d(absolutePath)) {
                z2 = true;
                if (!this.f46023d.mo17610b(absolutePath)) {
                    AssertionUtil.reportWeirdnessButNeverCrash("Failed to create recording directory");
                    z2 = false;
                }
            }
            if (!z2) {
                return c16356b;
            }
            String builder = Uri.parse(absolutePath).buildUpon().appendPath(m17510g(str, z)).toString();
            s1.z.c.l.d(builder, "Uri.parse(absolutePath).…Path(fileName).toString()");
            return new AbstractC16354b.C16358d(builder);
        } catch (Exception e2) {
            return c16356b;
        }
    }

    @Override // p193e.p194a.p982k0.p988m.AbstractC16359c
    /* renamed from: i */
    public int mo17505i(String str) {
        s1.z.c.l.e(str, "path");
        return (int) (new File(str).length() / 1024);
    }
}
