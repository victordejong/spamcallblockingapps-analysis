package p193e.p194a.p372b0.p426p;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.tag.network.TagRestModel;
import com.truecaller.common.tag.sync.TagsUploadWorker;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import javax.inject.Inject;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p426p.p427f.C8557d;
import p193e.p194a.p437c.p578p.C10480a;
import x3.a0;
/* renamed from: e.a.b0.p.e */
/* loaded from: classes7-dex2jar.jar:e/a/b0/p/e.class */
public final class C8553e implements AbstractC8552d {

    /* renamed from: c */
    public static final Map<Long, C8551c> f26355c = new ConcurrentHashMap();

    /* renamed from: a */
    public final Context f26356a;

    /* renamed from: b */
    public final AbstractC8426f f26357b;

    @Inject
    public C8553e(Context context, AbstractC8426f abstractC8426f) {
        this.f26356a = context;
        this.f26357b = abstractC8426f;
    }

    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: a */
    public List<C8551c> mo28403a(long j) {
        Long l;
        String str;
        Cursor query = C8557d.m28392a(this.f26356a).getReadableDatabase().query("available_tags", new String[]{"_id", AnalyticsConstants.NAME, "parent_id", RemoteMessageConst.Notification.COLOR, "image"}, "parent_id=?", new String[]{String.valueOf(j)}, null, null, "_id ASC");
        ArrayList arrayList = new ArrayList(10);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    try {
                        long j2 = query.getLong(query.getColumnIndex("_id"));
                        String string = query.getString(query.getColumnIndex(AnalyticsConstants.NAME));
                        long j3 = query.getLong(query.getColumnIndex("parent_id"));
                        if (query.getColumnCount() > 3) {
                            long j4 = query.getLong(query.getColumnIndex(RemoteMessageConst.Notification.COLOR));
                            str = query.getString(query.getColumnIndex("image"));
                            l = Long.valueOf(j4);
                        } else {
                            l = null;
                            str = null;
                        }
                        arrayList.add(new C8551c(j2, string, j3, l, str));
                    } catch (SQLiteException e) {
                        C10480a.m26061I1(e);
                    }
                } finally {
                    query.close();
                }
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: b */
    public void mo28402b() {
        Throwable th;
        SQLiteException e;
        Cursor cursor;
        String str;
        Long l;
        Cursor cursor2 = null;
        try {
            try {
                try {
                    cursor = C8557d.m28392a(this.f26356a).getReadableDatabase().query("available_tags", new String[]{"_id", AnalyticsConstants.NAME, "parent_id", RemoteMessageConst.Notification.COLOR, "image"}, null, null, null, null, "_id ASC");
                    if (cursor != null) {
                        try {
                            f26355c.clear();
                            while (cursor.moveToNext()) {
                                long j = cursor.getLong(cursor.getColumnIndex("_id"));
                                String string = cursor.getString(cursor.getColumnIndex(AnalyticsConstants.NAME));
                                long j2 = cursor.getLong(cursor.getColumnIndex("parent_id"));
                                if (cursor.getColumnCount() > 3) {
                                    long j3 = cursor.getLong(cursor.getColumnIndex(RemoteMessageConst.Notification.COLOR));
                                    str = cursor.getString(cursor.getColumnIndex("image"));
                                    l = Long.valueOf(j3);
                                } else {
                                    l = null;
                                    str = null;
                                }
                                f26355c.put(Long.valueOf(j), new C8551c(j, string, j2, l, str));
                            }
                        } catch (SQLiteException e2) {
                            e = e2;
                            cursor2 = cursor;
                            C10480a.m26061I1(e);
                            if (cursor == null) {
                                return;
                            }
                            cursor.close();
                        } catch (Throwable th2) {
                            cursor2 = cursor;
                            th = th2;
                            if (cursor2 != null) {
                                try {
                                    cursor2.close();
                                } catch (IOException e3) {
                                }
                            }
                            throw th;
                        }
                    }
                } catch (SQLiteException e4) {
                    e = e4;
                    cursor = null;
                }
                if (cursor == null) {
                    return;
                }
                cursor.close();
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (IOException e5) {
        }
    }

    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: c */
    public boolean mo28401c() {
        Throwable e;
        TagRestModel.TagsResponse tagsResponse;
        try {
            try {
                a0 execute = C18334g0.m15249S().m28387c(C18334g0.m15251Q("tagsEntityTag")).execute();
                if (execute.a.e == 304) {
                    return true;
                }
                if (execute.b() && (tagsResponse = (TagRestModel.TagsResponse) execute.b) != null && tagsResponse.data != null) {
                    SQLiteDatabase writableDatabase = C8557d.m28392a(this.f26356a).getWritableDatabase();
                    try {
                        writableDatabase.beginTransaction();
                        try {
                            writableDatabase.delete("available_tags", null, null);
                            for (TagRestModel.Tag tag : tagsResponse.data) {
                                ContentValues contentValues = new ContentValues();
                                contentValues.put("_id", Integer.valueOf(tag.f10983id));
                                contentValues.put(AnalyticsConstants.NAME, tag.name);
                                contentValues.put("parent_id", Integer.valueOf(tag.parentId));
                                contentValues.put("image", tag.iconUrl);
                                contentValues.put(RemoteMessageConst.Notification.COLOR, tag.color);
                                writableDatabase.replace("available_tags", null, contentValues);
                            }
                            writableDatabase.setTransactionSuccessful();
                            mo28402b();
                            C18334g0.m15198v0("tagsDownloadedAtLeastOnce", true);
                            C18334g0.m15276B0("tagsEntityTag", execute.a.g.a("etag"));
                            return true;
                        } finally {
                            writableDatabase.endTransaction();
                        }
                    } catch (RuntimeException e2) {
                        return false;
                    }
                }
                return false;
            } catch (RuntimeException e3) {
                e = e3;
                C10480a.m26061I1(e);
                return false;
            }
        } catch (IOException e4) {
            e = e4;
            C10480a.m26061I1(e);
            return false;
        }
    }

    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: d */
    public boolean mo28400d() {
        return !f26355c.isEmpty();
    }

    /* JADX WARN: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo28399e() {
        /*
            Method dump skipped, instructions count: 781
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p426p.C8553e.mo28399e():boolean");
    }

    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: f */
    public boolean mo28398f() {
        Throwable e;
        TagRestModel.KeywordsResponse keywordsResponse;
        try {
            a0 execute = C18334g0.m15249S().m28388b(C18334g0.m15251Q("tagsKeywordsEntityTag")).execute();
            if (execute.a.e == 304) {
                return true;
            }
            if (!execute.b() || (keywordsResponse = (TagRestModel.KeywordsResponse) execute.b) == null) {
                return false;
            }
            if (keywordsResponse.data == null) {
                return false;
            }
            try {
                try {
                    SQLiteDatabase writableDatabase = C8557d.m28392a(this.f26356a).getWritableDatabase();
                    try {
                        writableDatabase.beginTransaction();
                        try {
                            writableDatabase.delete("tag_keywords", null, null);
                            for (TagRestModel.TagKeywords tagKeywords : keywordsResponse.data) {
                                Iterator<TagRestModel.Keyword> it = tagKeywords.keywords.iterator();
                                a0 a0Var = execute;
                                while (true) {
                                    execute = a0Var;
                                    if (it.hasNext()) {
                                        TagRestModel.Keyword next = it.next();
                                        if (!TextUtils.isEmpty(next.term)) {
                                            ContentValues contentValues = new ContentValues(4);
                                            contentValues.put("term", next.term.toLowerCase());
                                            contentValues.put("relevance", Double.valueOf(next.relevance));
                                            contentValues.put("tag_id", Integer.valueOf(tagKeywords.tagId));
                                            writableDatabase.insert("tag_keywords", null, contentValues);
                                        }
                                    }
                                }
                            }
                            C18334g0.m15192y0("tagsKeywordsVersion", keywordsResponse.version);
                            writableDatabase.setTransactionSuccessful();
                            C18334g0.m15276B0("tagsKeywordsEntityTag", execute.a.g.a("etag"));
                            return true;
                        } finally {
                            writableDatabase.endTransaction();
                        }
                    } catch (RuntimeException e2) {
                        return false;
                    }
                } catch (IOException e3) {
                    e = e3;
                    C10480a.m26061I1(e);
                    return false;
                }
            } catch (RuntimeException e4) {
                e = e4;
                C10480a.m26061I1(e);
                return false;
            }
        } catch (IOException e5) {
            e = e5;
        } catch (RuntimeException e6) {
            e = e6;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:65:? A[RETURN, SYNTHETIC] */
    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo28397g(java.util.List<java.lang.String> r9, java.lang.String r10, int r11) {
        /*
            Method dump skipped, instructions count: 271
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p426p.C8553e.mo28397g(java.util.List, java.lang.String, int):void");
    }

    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: h */
    public C8551c mo28396h(long j) {
        return f26355c.get(Long.valueOf(j));
    }

    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: i */
    public List<C8551c> mo28395i(String str) {
        String str2;
        Long l;
        Cursor query = C8557d.m28392a(this.f26356a).getReadableDatabase().query("available_tags", new String[]{"_id", AnalyticsConstants.NAME, "parent_id", RemoteMessageConst.Notification.COLOR, "image"}, "name LIKE ?", new String[]{C22128a.m8725C2("%", str, "%")}, null, null, null);
        ArrayList arrayList = new ArrayList(10);
        if (query != null) {
            while (query.moveToNext()) {
                try {
                    try {
                        long j = query.getLong(query.getColumnIndex("_id"));
                        String string = query.getString(query.getColumnIndex(AnalyticsConstants.NAME));
                        long j2 = query.getLong(query.getColumnIndex("parent_id"));
                        if (query.getColumnCount() > 3) {
                            long j3 = query.getLong(query.getColumnIndex(RemoteMessageConst.Notification.COLOR));
                            str2 = query.getString(query.getColumnIndex("image"));
                            l = Long.valueOf(j3);
                        } else {
                            l = null;
                            str2 = null;
                        }
                        arrayList.add(new C8551c(j, string, j2, l, str2));
                    } catch (SQLiteException e) {
                        C10480a.m26061I1(e);
                    }
                } finally {
                    query.close();
                }
            }
        }
        return arrayList;
    }

    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: j */
    public void mo28394j(List<Long> list, long j, long j2, int i, int i2) {
        try {
            SQLiteDatabase writableDatabase = C8557d.m28392a(this.f26356a).getWritableDatabase();
            writableDatabase.beginTransaction();
            for (Long l : list) {
                String valueOf = String.valueOf(l);
                writableDatabase.delete("user_tags", "normalized_number=?", new String[]{valueOf});
                ContentValues contentValues = new ContentValues();
                contentValues.put("normalized_number", valueOf);
                contentValues.put("tag_id", Long.valueOf(j));
                contentValues.put("tag_id_2", Long.valueOf(j2));
                if (i > 0) {
                    contentValues.put(AnalyticsConstants.CONTEXT, Integer.valueOf(i));
                }
                if (i2 > 0) {
                    contentValues.put("search_type", Integer.valueOf(i2));
                }
                contentValues.put("timestamp", Long.valueOf(System.currentTimeMillis()));
                writableDatabase.insert("user_tags", null, contentValues);
            }
            writableDatabase.setTransactionSuccessful();
            writableDatabase.endTransaction();
            TagsUploadWorker.m35713n(this.f26356a);
        } catch (SQLiteException e) {
            C10480a.m26061I1(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:88:? A[RETURN, SYNTHETIC] */
    @Override // p193e.p194a.p372b0.p426p.AbstractC8552d
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo28393k() {
        /*
            Method dump skipped, instructions count: 563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p372b0.p426p.C8553e.mo28393k():boolean");
    }
}
