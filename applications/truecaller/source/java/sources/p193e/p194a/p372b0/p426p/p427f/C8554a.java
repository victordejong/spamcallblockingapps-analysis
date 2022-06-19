package p193e.p194a.p372b0.p426p.p427f;

import android.database.sqlite.SQLiteDatabase;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import p193e.p194a.p372b0.p413i.p415f.AbstractC8473c;
/* renamed from: e.a.b0.p.f.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/f/a.class */
public class C8554a extends AbstractC8473c {

    /* renamed from: c */
    public static final AbstractC8473c.C8474a[] f26358c = {new AbstractC8473c.C8474a("_id", "INTEGER PRIMARY KEY"), new AbstractC8473c.C8474a(AnalyticsConstants.NAME, "TEXT"), new AbstractC8473c.C8474a("parent_id", "INTEGER", true), new AbstractC8473c.C8474a(RemoteMessageConst.Notification.COLOR, "INTEGER"), new AbstractC8473c.C8474a("image", "TEXT")};

    public C8554a() {
        super("available_tags", f26358c);
    }

    @Override // p193e.p194a.p372b0.p413i.p415f.AbstractC8473c
    /* renamed from: b */
    public void mo28391b(SQLiteDatabase sQLiteDatabase, int i, int i2) {
    }
}
