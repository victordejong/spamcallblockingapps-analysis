package p131c.p431l.p432a.p468n.p469s.p473d.p474b;

import android.content.Context;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.provider.CallLog;
import com.mopub.mobileads.VastIconXmlManager;
import java.util.HashSet;
import p131c.p431l.p432a.p468n.C6843d;
import p131c.p431l.p432a.p468n.C6850i;
import p131c.p431l.p432a.p468n.p469s.p472c.C6864a;
/* renamed from: c.l.a.n.s.d.b.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/s/d/b/a.class */
public class C6866a {

    /* renamed from: b */
    public static Uri f21055b = CallLog.Calls.CONTENT_URI;

    /* renamed from: a */
    public Context f21056a;

    public C6866a(Context context) {
        this.f21056a = context;
    }

    /* renamed from: a */
    public Cursor m19514a() {
        MatrixCursor matrixCursor;
        String[] strArr = {"_id", "number", "name", "type", "new", VastIconXmlManager.DURATION, "date"};
        try {
            if (C6843d.m19593c()) {
                Cursor query = this.f21056a.getContentResolver().query(f21055b, strArr, "number IS NOT NULL ", null, "date DESC");
                if (query == null || query.getCount() <= 0) {
                    matrixCursor = null;
                } else {
                    MatrixCursor matrixCursor2 = new MatrixCursor(strArr);
                    HashSet hashSet = new HashSet();
                    long currentTimeMillis = System.currentTimeMillis();
                    C6850i.m19579a("CallLogHandler", "生成MatrixCursor开始:" + currentTimeMillis);
                    while (query.moveToNext()) {
                        String b = C6864a.m19519b(query.getString(query.getColumnIndex("number")));
                        if (!hashSet.contains(b)) {
                            hashSet.add(b);
                            Object[] objArr = new Object[7];
                            for (int i = 0; i < 7; i++) {
                                objArr[i] = query.getString(query.getColumnIndex(strArr[i]));
                            }
                            matrixCursor2.addRow(objArr);
                        }
                    }
                    long currentTimeMillis2 = System.currentTimeMillis();
                    C6850i.m19579a("CallLogHandler", "生成MatrixCursor结束:" + currentTimeMillis2 + "  共耗时：" + currentTimeMillis2);
                    matrixCursor = matrixCursor2;
                }
            } else {
                matrixCursor = this.f21056a.getContentResolver().query(f21055b, strArr, "0==0 and number IS NOT NULL) GROUP BY (number", null, "date DESC");
            }
        } catch (Exception e) {
            matrixCursor = this.f21056a.getContentResolver().query(f21055b, strArr, "number IS NOT NULL ", null, "date DESC");
        }
        return matrixCursor;
    }

    /* renamed from: b */
    public int m19513b() {
        Cursor query = this.f21056a.getContentResolver().query(f21055b, null, null, null, "date DESC");
        int count = query.getCount();
        query.close();
        return count;
    }
}
