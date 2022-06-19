package p193e.p194a.p982k0.p996o;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import com.truecaller.callrecording.worker.CallRecordingsMigrationWorker;
import com.truecaller.data.entity.CallRecording;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1392y2.p1394q.AbstractC21780a;
import p193e.p194a.p982k0.AbstractC16313f;
import p193e.p194a.p982k0.p988m.AbstractC16353a;
import s1.f0.v;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.k0.o.b */
/* loaded from: classes7-dex2jar.jar:e/a/k0/o/b.class */
public final class C16442b implements AbstractC16441a {

    /* renamed from: a */
    public final Uri f46180a = C17891a1.C17894c.m15706a();

    /* renamed from: b */
    public final ContentResolver f46181b;

    /* renamed from: c */
    public final AbstractC21780a f46182c;

    /* renamed from: d */
    public final AbstractC16313f f46183d;

    /* renamed from: e */
    public final AbstractC16353a f46184e;

    /* renamed from: f */
    public final C20592g f46185f;

    /* renamed from: g */
    public final AbstractC19219a0 f46186g;

    @Inject
    public C16442b(ContentResolver contentResolver, AbstractC21780a abstractC21780a, AbstractC16313f abstractC16313f, AbstractC16353a abstractC16353a, C20592g c20592g, AbstractC19219a0 abstractC19219a0) {
        l.e(contentResolver, "contentResolver");
        l.e(abstractC21780a, "backgroundWorkTrigger");
        l.e(abstractC16313f, "callRecordingSettings");
        l.e(abstractC16353a, "callRecordingStorageHelper");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19219a0, "permissionUtil");
        this.f46181b = contentResolver;
        this.f46182c = abstractC21780a;
        this.f46183d = abstractC16313f;
        this.f46184e = abstractC16353a;
        this.f46185f = c20592g;
        this.f46186g = abstractC19219a0;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v55 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r1v48 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1 */
    /* JADX WARN: Type inference failed for: r22v2 */
    /* JADX WARN: Type inference failed for: r22v3 */
    @Override // p193e.p194a.p982k0.p996o.AbstractC16441a
    /* renamed from: g */
    public void mo17392g() {
        ?? r16;
        FileInputStream fileInputStream;
        OutputStream openOutputStream;
        Cursor query = this.f46181b.query(this.f46180a, null, "recording_path NOT LIKE 'content%'", null, null);
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    l.e(query, "cursor");
                    int columnIndex = query.getColumnIndex("history_event_id");
                    int columnIndex2 = query.getColumnIndex("recording_path");
                    int columnIndex3 = query.getColumnIndex("_id");
                    int columnIndex4 = query.getColumnIndex("history_call_recording_id");
                    l.e(query, "cursor");
                    CallRecording callRecording = null;
                    if (columnIndex != -1) {
                        callRecording = null;
                        if (columnIndex2 != -1) {
                            String string = query.getString(columnIndex);
                            String string2 = query.getString(columnIndex2);
                            ?? r22 = columnIndex4 != -1 ? query.getLong(columnIndex4) : columnIndex3 != -1 ? query.getLong(columnIndex3) : true;
                            callRecording = null;
                            if (string2 != null) {
                                callRecording = new CallRecording(r22 == true ? 1L : 0L, string, string2);
                            }
                        }
                    }
                    arrayList.add(callRecording);
                }
                C25225a.m4016G(query, null);
                List<CallRecording> z = i.z(arrayList);
                ((ArrayList) z).size();
                for (CallRecording callRecording2 : z) {
                    String str = callRecording2.f11505c;
                    boolean z2 = !v.z(str, "TCCallRecordings", true);
                    File file = new File(str);
                    if (file.exists()) {
                        Uri parse = Uri.parse(str);
                        l.d(parse, "Uri.parse(recordingPath)");
                        Uri mo17507b = this.f46184e.mo17507b(C19286f.m13695I(String.valueOf(parse.getLastPathSegment())), z2);
                        String str2 = "====== Insert to media store:: Uri : " + mo17507b;
                        if (mo17507b == null) {
                            continue;
                        } else {
                            if (z2) {
                                try {
                                    fileInputStream = new FileInputStream(file);
                                    openOutputStream = this.f46181b.openOutputStream(mo17507b, "w");
                                } catch (Exception e) {
                                    C19286f.m13693K(this.f46181b, mo17507b);
                                    String str3 = "====== Copy file to media store:: failed with " + e;
                                    r16 = false;
                                }
                                if (openOutputStream == null) {
                                    throw new IOException("Could not open output stream");
                                    break;
                                }
                                l.d(openOutputStream, "outputStream");
                                C25225a.m3960U(fileInputStream, openOutputStream, 0, 2);
                                C25225a.m4016G(openOutputStream, null);
                                C25225a.m4016G(fileInputStream, null);
                                if (Build.VERSION.SDK_INT >= 29) {
                                    ContentResolver contentResolver = this.f46181b;
                                    ContentValues contentValues = new ContentValues();
                                    contentValues.put("is_pending", (Integer) 0);
                                    contentResolver.update(mo17507b, contentValues, null, null);
                                }
                                r16 = true;
                                if (r16 != false) {
                                    file.delete();
                                }
                            }
                            String str4 = "====== Updating table:: new uri " + mo17507b + " | recording " + callRecording2;
                            ContentValues contentValues2 = new ContentValues();
                            contentValues2.put("recording_path", mo17507b.toString());
                            this.f46181b.update(this.f46180a, contentValues2, "_id=?", new String[]{String.valueOf(callRecording2.f11503a)});
                        }
                    }
                }
                this.f46183d.mo17549X2(false);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        }
    }

    @Override // p193e.p194a.p982k0.p996o.AbstractC16441a
    /* renamed from: t */
    public void mo17391t(boolean z) {
        if (z) {
            this.f46183d.mo17549X2(true);
        }
        this.f46182c.mo9086b(CallRecordingsMigrationWorker.f10825d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005f, code lost:
        if (s1.z.c.l.a(android.os.Environment.getExternalStorageState(), "mounted") != false) goto L19;
     */
    @Override // p193e.p194a.p982k0.p996o.AbstractC16441a
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo17390x() {
        /*
            r5 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r6
            r1 = 29
            if (r0 >= r1) goto L11
            r0 = 1
            r6 = r0
            goto L13
        L11:
            r0 = 0
            r6 = r0
        L13:
            r0 = r6
            if (r0 == 0) goto L65
            r0 = r5
            e.a.k0.f r0 = r0.f46183d
            boolean r0 = r0.mo17550V()
            if (r0 == 0) goto L65
            r0 = r5
            e.a.u3.g r0 = r0.f46185f
            r8 = r0
            r0 = r8
            e.a.u3.g$a r0 = r0.f57752I
            r1 = r8
            s1.a.l[] r2 = p193e.p194a.p1272u3.C20592g.f57695p6
            r3 = 31
            r2 = r2[r3]
            e.a.u3.b r0 = r0.m10941a(r1, r2)
            boolean r0 = r0.isEnabled()
            if (r0 == 0) goto L65
            r0 = r5
            e.a.p5.a0 r0 = r0.f46186g
            boolean r0 = r0.mo13823j()
            if (r0 == 0) goto L65
            r0 = r5
            e.a.p5.a0 r0 = r0.f46186g
            boolean r0 = r0.mo13830c()
            if (r0 == 0) goto L65
            java.lang.String r0 = android.os.Environment.getExternalStorageState()
            java.lang.String r1 = "mounted"
            boolean r0 = s1.z.c.l.a(r0, r1)
            if (r0 == 0) goto L65
            goto L67
        L65:
            r0 = 0
            r7 = r0
        L67:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p982k0.p996o.C16442b.mo17390x():boolean");
    }
}
