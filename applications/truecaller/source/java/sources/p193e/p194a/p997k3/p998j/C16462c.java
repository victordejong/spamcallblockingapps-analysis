package p193e.p194a.p997k3.p998j;

import android.database.Cursor;
import com.truecaller.data.entity.CallRecording;
import s1.z.c.l;
/* renamed from: e.a.k3.j.c */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/c.class */
public final class C16462c {

    /* renamed from: a */
    public final int f46215a;

    /* renamed from: b */
    public final int f46216b;

    /* renamed from: c */
    public final int f46217c;

    /* renamed from: d */
    public final int f46218d;

    public C16462c(Cursor cursor) {
        l.e(cursor, "cursor");
        this.f46215a = cursor.getColumnIndex("history_event_id");
        this.f46216b = cursor.getColumnIndex("recording_path");
        this.f46217c = cursor.getColumnIndex("_id");
        this.f46218d = cursor.getColumnIndex("history_call_recording_id");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* renamed from: a */
    public final CallRecording m17356a(Cursor cursor) {
        ?? r12;
        l.e(cursor, "cursor");
        int i = this.f46215a;
        if (i == -1 || this.f46216b == -1) {
            return null;
        }
        String string = cursor.getString(i);
        String string2 = cursor.getString(this.f46216b);
        int i2 = this.f46218d;
        if (i2 != -1) {
            r12 = cursor.getLong(i2);
        } else {
            int i3 = this.f46217c;
            r12 = i3 != -1 ? cursor.getLong(i3) : true;
        }
        if (string2 == null) {
            return null;
        }
        return new CallRecording(r12 == true ? 1L : 0L, string, string2);
    }
}
