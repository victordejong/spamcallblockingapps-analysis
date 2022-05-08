package com.flurry.sdk;

import com.flurry.sdk.C3291ii;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
/* renamed from: com.flurry.sdk.gt */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/gt.class */
public final class C3185gt {

    /* renamed from: a */
    public static final String f5260a = "gt";

    /* JADX WARN: Not initialized variable reg: 9, insn: 0x0102: MOVE  (r0 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r9 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:51:0x0102 */
    /* renamed from: a */
    public static C3291ii m32915a(File file) {
        Closeable closeable;
        FileInputStream fileInputStream;
        Throwable th;
        Exception e;
        DataInputStream dataInputStream;
        C3291ii iiVar = null;
        if (file == null || !file.exists()) {
            return null;
        }
        C3291ii.C3292a aVar = new C3291ii.C3292a();
        try {
            try {
                fileInputStream = new FileInputStream(file);
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e2) {
            e = e2;
            dataInputStream = null;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            closeable = null;
        }
        try {
            dataInputStream = new DataInputStream(fileInputStream);
            try {
            } catch (Exception e3) {
                e = e3;
                C3356jq.m32614a(3, f5260a, "Error loading legacy agent data.", e);
                C3445la.m32465a((Closeable) dataInputStream);
                C3445la.m32465a((Closeable) fileInputStream);
                return iiVar;
            }
        } catch (Exception e4) {
            e = e4;
            dataInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            closeable = null;
            C3445la.m32465a(closeable);
            C3445la.m32465a((Closeable) fileInputStream);
            throw th;
        }
        if (dataInputStream.readUnsignedShort() != 46586) {
            C3356jq.m32615a(3, f5260a, "Unexpected file type");
        } else {
            int readUnsignedShort = dataInputStream.readUnsignedShort();
            if (readUnsignedShort != 2) {
                String str = f5260a;
                StringBuilder sb = new StringBuilder("Unknown agent file version: ");
                sb.append(readUnsignedShort);
                C3356jq.m32615a(6, str, sb.toString());
            } else {
                iiVar = (C3291ii) aVar.mo32526a(dataInputStream);
                C3445la.m32465a((Closeable) dataInputStream);
                C3445la.m32465a((Closeable) fileInputStream);
                return iiVar;
            }
        }
        C3445la.m32465a((Closeable) dataInputStream);
        C3445la.m32465a((Closeable) fileInputStream);
        return null;
    }
}
