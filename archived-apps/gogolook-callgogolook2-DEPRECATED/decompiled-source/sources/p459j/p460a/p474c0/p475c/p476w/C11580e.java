package p459j.p460a.p474c0.p475c.p476w;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.provider.Telephony;
import android.text.TextUtils;
import androidx.collection.LongSparseArray;
import androidx.core.app.NotificationCompat;
import gogolook.callgogolook2.messaging.sms.DatabaseMessages;
import java.util.List;
import java.util.Locale;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.C11534l;
import p459j.p460a.p474c0.p475c.C11565v;
import p459j.p460a.p474c0.p480d.C11689c;
import p459j.p460a.p474c0.p488f.C11834j;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p582w0.p590x4.C14247d;
/* renamed from: j.a.c0.c.w.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/e.class */
public class C11580e {

    /* renamed from: f */
    public static final String f25881f = String.format(Locale.US, "(%s NOTNULL)", "sms_message_uri");

    /* renamed from: g */
    public static final String[] f25882g = {"count()"};

    /* renamed from: a */
    public AbstractC11581a f25883a;

    /* renamed from: b */
    public AbstractC11581a f25884b;

    /* renamed from: c */
    public final String f25885c;

    /* renamed from: d */
    public final String f25886d;

    /* renamed from: e */
    public final String f25887e;

    /* renamed from: j.a.c0.c.w.e$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/e$a.class */
    public interface AbstractC11581a {
        void close();

        int getCount();

        int getPosition();

        DatabaseMessages.AbstractC4672b next();
    }

    /* renamed from: j.a.c0.c.w.e$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/e$b.class */
    public static class C11582b implements AbstractC11581a {

        /* renamed from: a */
        public Cursor f25888a;

        /* renamed from: b */
        public final C11534l f25889b;

        public C11582b(C11534l lVar, String str) throws SQLiteException {
            this.f25889b = lVar;
            try {
                if (C12153d0.m6992a("MessagingApp", 2)) {
                    C12153d0.m6983d("MessagingApp", "SyncCursorPair: Querying for local messages; selection = " + str);
                }
                this.f25888a = this.f25889b.m9216a(NotificationCompat.CarExtender.KEY_MESSAGES, C11583c.f25890a, str, null, null, null, "received_timestamp DESC");
            } catch (SQLiteException e) {
                C12153d0.m6986b("MessagingApp", "SyncCursorPair: failed to query local sms/mms", e);
                throw e;
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11580e.AbstractC11581a
        public void close() {
            Cursor cursor = this.f25888a;
            if (cursor != null) {
                cursor.close();
                this.f25888a = null;
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11580e.AbstractC11581a
        public int getCount() {
            Cursor cursor = this.f25888a;
            return cursor == null ? 0 : cursor.getCount();
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11580e.AbstractC11581a
        public int getPosition() {
            Cursor cursor = this.f25888a;
            return cursor == null ? 0 : cursor.getPosition();
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11580e.AbstractC11581a
        public DatabaseMessages.AbstractC4672b next() {
            Cursor cursor = this.f25888a;
            if (cursor == null || !cursor.moveToNext()) {
                return null;
            }
            return C11580e.m9062c(this.f25888a);
        }
    }

    /* renamed from: j.a.c0.c.w.e$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/e$c.class */
    public static class C11583c {

        /* renamed from: a */
        public static final String[] f25890a = {"_id", "received_timestamp", "sms_message_uri", "message_protocol", "conversation_id"};
    }

    /* renamed from: j.a.c0.c.w.e$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/w/e$d.class */
    public static class C11584d implements AbstractC11581a {

        /* renamed from: a */
        public Cursor f25891a;

        /* renamed from: b */
        public Cursor f25892b;

        /* renamed from: c */
        public DatabaseMessages.AbstractC4672b f25893c;

        /* renamed from: d */
        public DatabaseMessages.AbstractC4672b f25894d;

        public C11584d(String str, String str2) throws SQLiteException {
            this.f25891a = null;
            this.f25892b = null;
            try {
                Context a = AbstractC11516a.m9413n().mo9412a();
                if (C12153d0.m6992a("MessagingApp", 2)) {
                    C12153d0.m6983d("MessagingApp", "SyncCursorPair: Querying for remote SMS; selection = " + str);
                }
                this.f25891a = C11689c.m8598a(a, a.getContentResolver(), Telephony.Sms.CONTENT_URI, DatabaseMessages.SmsMessage.m27457r(), str, null, "date DESC");
                if (this.f25891a != null) {
                    if (C12153d0.m6992a("MessagingApp", 2)) {
                        C12153d0.m6983d("MessagingApp", "SyncCursorPair: Querying for remote MMS; selection = " + str2);
                    }
                    this.f25892b = C11689c.m8598a(a, a.getContentResolver(), Telephony.Mms.CONTENT_URI, DatabaseMessages.MmsMessage.m27471u(), str2, null, "date DESC");
                    if (this.f25892b != null) {
                        this.f25893c = m9055b();
                        this.f25894d = m9056a();
                        return;
                    }
                    C12153d0.m6981e("MessagingApp", "SyncCursorPair: Remote MMS query returned null cursor; need to cancel sync");
                    throw new RuntimeException("Null cursor from remote MMS query");
                }
                C12153d0.m6981e("MessagingApp", "SyncCursorPair: Remote SMS query returned null cursor; need to cancel sync");
                throw new RuntimeException("Null cursor from remote SMS query");
            } catch (SQLiteException e) {
                C12153d0.m6986b("MessagingApp", "SyncCursorPair: failed to query remote messages", e);
                throw e;
            }
        }

        /* renamed from: a */
        public final DatabaseMessages.AbstractC4672b m9056a() {
            Cursor cursor = this.f25892b;
            if (cursor == null || !cursor.moveToNext()) {
                return null;
            }
            return DatabaseMessages.MmsMessage.m27476b(this.f25892b);
        }

        /* renamed from: b */
        public final DatabaseMessages.AbstractC4672b m9055b() {
            Cursor cursor = this.f25891a;
            if (cursor == null || !cursor.moveToNext()) {
                return null;
            }
            return DatabaseMessages.SmsMessage.m27459b(this.f25891a);
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11580e.AbstractC11581a
        public void close() {
            Cursor cursor = this.f25891a;
            if (cursor != null) {
                cursor.close();
                this.f25891a = null;
            }
            Cursor cursor2 = this.f25892b;
            if (cursor2 != null) {
                cursor2.close();
                this.f25892b = null;
            }
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11580e.AbstractC11581a
        public int getCount() {
            Cursor cursor = this.f25891a;
            int i = 0;
            int count = cursor == null ? 0 : cursor.getCount();
            Cursor cursor2 = this.f25892b;
            if (cursor2 != null) {
                i = cursor2.getCount();
            }
            return count + i;
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11580e.AbstractC11581a
        public int getPosition() {
            Cursor cursor = this.f25891a;
            int i = 0;
            int position = cursor == null ? 0 : cursor.getPosition();
            Cursor cursor2 = this.f25892b;
            if (cursor2 != null) {
                i = cursor2.getPosition();
            }
            return (position + i) - 1;
        }

        @Override // p459j.p460a.p474c0.p475c.p476w.C11580e.AbstractC11581a
        public DatabaseMessages.AbstractC4672b next() {
            DatabaseMessages.AbstractC4672b bVar;
            DatabaseMessages.AbstractC4672b bVar2 = this.f25893c;
            if (bVar2 == null || this.f25894d == null) {
                bVar = this.f25893c;
                if (bVar != null) {
                    this.f25893c = m9055b();
                } else {
                    bVar = this.f25894d;
                    this.f25894d = m9056a();
                }
            } else if (bVar2.mo27455b() >= this.f25894d.mo27455b()) {
                bVar = this.f25893c;
                this.f25893c = m9055b();
            } else {
                bVar = this.f25894d;
                this.f25894d = m9056a();
            }
            return bVar;
        }
    }

    public C11580e(long j, long j2) {
        this.f25885c = m9068a(f25881f, "received_timestamp", j, j2, (String) null, (String) null);
        this.f25886d = m9068a(m9058g(), "date", j, j2, (String) null, (String) null);
        this.f25887e = m9068a(m9059f(), "date", j >= 0 ? (j + 999) / 1000 : j, j2 >= 0 ? (j2 + 999) / 1000 : j2, (String) null, (String) null);
    }

    /* renamed from: a */
    public static String m9068a(String str, String str2, long j, long j2, String str3, String str4) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        if (j > 0) {
            sb.append(" AND ");
            sb.append(str2);
            sb.append(">=");
            sb.append(j);
        }
        if (j2 > 0) {
            sb.append(" AND ");
            sb.append(str2);
            sb.append("<");
            sb.append(j2);
        }
        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
            sb.append(" AND ");
            sb.append(str3);
            sb.append("=");
            sb.append(str4);
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01c5  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m9069a(p459j.p460a.p474c0.p475c.C11534l r9, java.lang.String r10, java.lang.String[] r11, java.lang.String r12, java.lang.String[] r13, java.lang.String r14, java.lang.String[] r15) {
        /*
            Method dump skipped, instructions count: 461
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.p476w.C11580e.m9069a(j.a.c0.c.l, java.lang.String, java.lang.String[], java.lang.String, java.lang.String[], java.lang.String, java.lang.String[]):boolean");
    }

    /* renamed from: b */
    public static int m9065b(Cursor cursor) {
        if (cursor != null && cursor.moveToFirst()) {
            return cursor.getInt(0);
        }
        String str = cursor != null ? cursor.getCount() == 0 ? "empty" : "" : C14247d.f31851f;
        throw new IllegalArgumentException("Cannot get count from " + str + " cursor");
    }

    /* renamed from: c */
    public static DatabaseMessages.LocalDatabaseMessage m9062c(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        return new DatabaseMessages.LocalDatabaseMessage(cursor.getLong(0), cursor.getInt(3), cursor.getString(2), cursor.getLong(1), cursor.getString(4));
    }

    /* renamed from: f */
    public static String m9059f() {
        return C11834j.m8089c();
    }

    /* renamed from: g */
    public static String m9058g() {
        return C11834j.m8079e();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3, types: [long] */
    /* JADX WARN: Type inference failed for: r18v4, types: [long] */
    /* JADX WARN: Type inference failed for: r18v5, types: [long] */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1, types: [long] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r6v0, types: [j.a.c0.c.w.e] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long m9072a(int r7, int r8, java.util.ArrayList<gogolook.callgogolook2.messaging.sms.DatabaseMessages.SmsMessage> r9, androidx.collection.LongSparseArray<gogolook.callgogolook2.messaging.sms.DatabaseMessages.MmsMessage> r10, java.util.ArrayList<gogolook.callgogolook2.messaging.sms.DatabaseMessages.LocalDatabaseMessage> r11, p459j.p460a.p474c0.p475c.C11565v.C11568c r12) {
        /*
            Method dump skipped, instructions count: 652
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p474c0.p475c.p476w.C11580e.m9072a(int, int, java.util.ArrayList, androidx.collection.LongSparseArray, java.util.ArrayList, j.a.c0.c.v$c):long");
    }

    /* renamed from: a */
    public void m9073a() {
        AbstractC11581a aVar = this.f25883a;
        if (aVar != null) {
            aVar.close();
        }
        AbstractC11581a aVar2 = this.f25884b;
        if (aVar2 != null) {
            aVar2.close();
        }
    }

    /* renamed from: a */
    public final void m9067a(List<DatabaseMessages.SmsMessage> list, LongSparseArray<DatabaseMessages.MmsMessage> longSparseArray, DatabaseMessages.AbstractC4672b bVar, C11565v.C11568c cVar) {
        long j;
        if (bVar.mo27456a() == 1) {
            DatabaseMessages.MmsMessage mmsMessage = (DatabaseMessages.MmsMessage) bVar;
            longSparseArray.append(mmsMessage.m27475q(), mmsMessage);
            j = mmsMessage.f11312i;
        } else {
            DatabaseMessages.SmsMessage smsMessage = (DatabaseMessages.SmsMessage) bVar;
            list.add(smsMessage);
            j = smsMessage.f11363h;
        }
        cVar.m9112a(j);
    }

    /* renamed from: a */
    public boolean m9070a(C11534l lVar) {
        return m9069a(lVar, this.f25885c, null, this.f25886d, null, this.f25887e, null);
    }

    /* renamed from: b */
    public int m9066b() {
        return this.f25883a.getCount();
    }

    /* renamed from: b */
    public void m9064b(C11534l lVar) {
        this.f25883a = new C11582b(lVar, this.f25885c);
        this.f25884b = new C11584d(this.f25886d, this.f25887e);
    }

    /* renamed from: c */
    public int m9063c() {
        return this.f25883a.getPosition();
    }

    /* renamed from: d */
    public int m9061d() {
        return this.f25884b.getCount();
    }

    /* renamed from: e */
    public int m9060e() {
        return this.f25884b.getPosition();
    }
}
