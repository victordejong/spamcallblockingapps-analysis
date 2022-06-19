package androidx.room.p009s;

import android.database.Cursor;
import f.t.a.b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
/* renamed from: androidx.room.s.c */
/* loaded from: classes-dex2jar.jar:androidx/room/s/c.class */
public class C0431c {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m4760a(b bVar) {
        ArrayList<String> arrayList = new ArrayList();
        Cursor r0 = bVar.r0("SELECT name FROM sqlite_master WHERE type = 'trigger'");
        while (r0.moveToNext()) {
            try {
                arrayList.add(r0.getString(0));
            } catch (Throwable th) {
                r0.close();
                throw th;
            }
        }
        r0.close();
        for (String str : arrayList) {
            if (str.startsWith("room_fts_content_sync_")) {
                bVar.w("DROP TRIGGER IF EXISTS " + str);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0046, code lost:
        if (r9 < r0) goto L14;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.database.Cursor m4759b(androidx.room.AbstractC0419j r4, f.t.a.e r5, boolean r6, android.os.CancellationSignal r7) {
        /*
            r0 = r4
            r1 = r5
            r2 = r7
            android.database.Cursor r0 = r0.m4797q(r1, r2)
            r5 = r0
            r0 = r5
            r4 = r0
            r0 = r6
            if (r0 == 0) goto L4e
            r0 = r5
            r4 = r0
            r0 = r5
            boolean r0 = r0 instanceof android.database.AbstractWindowedCursor
            if (r0 == 0) goto L4e
            r0 = r5
            android.database.AbstractWindowedCursor r0 = (android.database.AbstractWindowedCursor) r0
            r7 = r0
            r0 = r7
            int r0 = r0.getCount()
            r8 = r0
            r0 = r7
            boolean r0 = r0.hasWindow()
            if (r0 == 0) goto L34
            r0 = r7
            android.database.CursorWindow r0 = r0.getWindow()
            int r0 = r0.getNumRows()
            r9 = r0
            goto L38
        L34:
            r0 = r8
            r9 = r0
        L38:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 23
            if (r0 < r1) goto L49
            r0 = r5
            r4 = r0
            r0 = r9
            r1 = r8
            if (r0 >= r1) goto L4e
        L49:
            r0 = r7
            android.database.Cursor r0 = androidx.room.p009s.C0430b.m4762a(r0)
            r4 = r0
        L4e:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.p009s.C0431c.m4759b(androidx.room.j, f.t.a.e, boolean, android.os.CancellationSignal):android.database.Cursor");
    }

    /* renamed from: c */
    public static int m4758c(File file) throws IOException {
        FileChannel fileChannel = null;
        try {
            ByteBuffer allocate = ByteBuffer.allocate(4);
            FileChannel channel = new FileInputStream(file).getChannel();
            channel.tryLock(60L, 4L, true);
            channel.position(60L);
            if (channel.read(allocate) != 4) {
                throw new IOException("Bad database header, unable to read 4 bytes at offset 60");
            }
            allocate.rewind();
            int i = allocate.getInt();
            if (channel != null) {
                channel.close();
            }
            return i;
        } catch (Throwable th) {
            if (0 != 0) {
                fileChannel.close();
            }
            throw th;
        }
    }
}
