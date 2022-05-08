package p459j.p460a.p538m0;

import android.content.Context;
import com.facebook.ads.ExtraHints;
import com.google.firebase.perf.metrics.Trace;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import net.sqlcipher.database.SQLiteDatabase;
import p081h.p160h.p179e.p180a.p190p.C6430c;
import p081h.p203i.p325c.p379z.C10062a;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.p585b5.C13930d;
import p660rx.Observable;
import p660rx.functions.Action1;
import p660rx.functions.Func1;
import p660rx.schedulers.Schedulers;
/* renamed from: j.a.m0.i */
/* loaded from: classes3-dex2jar.jar:j/a/m0/i.class */
public class C13026i {

    /* renamed from: a */
    public static int f29453a = 16;

    /* renamed from: b */
    public static String f29454b = "53514c69746520666f726d6174203300";

    /* renamed from: j.a.m0.i$a */
    /* loaded from: classes3-dex2jar.jar:j/a/m0/i$a.class */
    public static final class C13027a implements Action1<Integer> {
        /* renamed from: a */
        public void call(Integer num) {
        }
    }

    /* renamed from: j.a.m0.i$b */
    /* loaded from: classes3-dex2jar.jar:j/a/m0/i$b.class */
    public static final class C13028b implements Func1<Integer, Observable<Integer>> {

        /* renamed from: a */
        public final /* synthetic */ String[] f29455a;

        /* renamed from: b */
        public final /* synthetic */ Context f29456b;

        /* renamed from: c */
        public final /* synthetic */ CountDownLatch f29457c;

        /* renamed from: j.a.m0.i$b$a */
        /* loaded from: classes3-dex2jar.jar:j/a/m0/i$b$a.class */
        public class C13029a implements Func1<Integer, Integer> {
            public C13029a() {
            }

            /* renamed from: a */
            public Integer m4757a(Integer num) {
                try {
                    C13026i.m4764a(C13028b.this.f29456b, C13028b.this.f29455a[num.intValue() - 1]);
                } catch (Exception e) {
                    C13973d4.m2952a(e);
                }
                C13028b.this.f29457c.countDown();
                return num;
            }

            @Override // p660rx.functions.Func1
            public /* bridge */ /* synthetic */ Integer call(Integer num) {
                Integer num2 = num;
                m4757a(num2);
                return num2;
            }
        }

        public C13028b(String[] strArr, Context context, CountDownLatch countDownLatch) {
            this.f29455a = strArr;
            this.f29456b = context;
            this.f29457c = countDownLatch;
        }

        /* renamed from: a */
        public Observable<Integer> call(Integer num) {
            return Observable.just(num).subscribeOn(Schedulers.computation()).map(new C13029a());
        }
    }

    /* renamed from: a */
    public static void m4764a(Context context, String str) {
        if (m4761a(context.getDatabasePath(str))) {
            try {
                Trace b = C10062a.m13512b("EncryptSingleDb:" + str);
                m4763a(context, str, C6430c.m22634e());
                b.stop();
            } catch (IOException e) {
                C13973d4.m2952a(e);
            }
        }
    }

    /* renamed from: a */
    public static void m4763a(Context context, String str, String str2) throws IOException {
        File databasePath = context.getDatabasePath(str);
        C13930d dVar = new C13930d();
        dVar.m3018e();
        File createTempFile = File.createTempFile("sqlcipherutils", "tmp", context.getCacheDir());
        SQLiteDatabase openDatabase = SQLiteDatabase.openDatabase(databasePath.getPath(), "", (SQLiteDatabase.CursorFactory) null, 0);
        int version = openDatabase.getVersion();
        openDatabase.rawExecSQL("ATTACH DATABASE '" + createTempFile.getPath() + "' AS encrypted KEY '" + str2 + "';");
        openDatabase.rawExecSQL("SELECT sqlcipher_export('encrypted');");
        StringBuilder sb = new StringBuilder();
        sb.append("PRAGMA encrypted.user_version = ");
        sb.append(version);
        sb.append(ExtraHints.KEYWORD_SEPARATOR);
        openDatabase.rawExecSQL(sb.toString());
        openDatabase.rawExecSQL("DETACH DATABASE encrypted;");
        openDatabase.close();
        dVar.m3017f();
        databasePath.delete();
        createTempFile.renameTo(databasePath);
    }

    /* renamed from: a */
    public static void m4762a(Context context, String[] strArr) {
        Trace b = C10062a.m13512b("EncryptAllDb");
        CountDownLatch countDownLatch = new CountDownLatch(strArr.length);
        Observable.range(1, strArr.length).flatMap(new C13028b(strArr, context, countDownLatch)).subscribe(new C13027a());
        try {
            countDownLatch.await();
        } catch (InterruptedException e) {
            C14080m2.m2612a((Throwable) e);
        }
        b.stop();
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00db  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m4761a(java.io.File r5) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p538m0.C13026i.m4761a(java.io.File):boolean");
    }

    /* renamed from: a */
    public static byte[] m4760a(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }
}
