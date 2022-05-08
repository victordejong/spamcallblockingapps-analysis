package androidx.multidex;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import okhttp3.internal.http2.Http2;
/* loaded from: classes-dex2jar.jar:androidx/multidex/ZipUtil.class */
final class ZipUtil {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/multidex/ZipUtil$CentralDirectory.class */
    public static class CentralDirectory {

        /* renamed from: a */
        long f4333a;

        /* renamed from: b */
        long f4334b;

        CentralDirectory() {
        }
    }

    ZipUtil() {
    }

    /* renamed from: a */
    static long m17924a(RandomAccessFile randomAccessFile, CentralDirectory centralDirectory) throws IOException {
        CRC32 crc32 = new CRC32();
        long j = centralDirectory.f4334b;
        randomAccessFile.seek(centralDirectory.f4333a);
        int min = (int) Math.min(16384L, j);
        byte[] bArr = new byte[Http2.INITIAL_MAX_FRAME_SIZE];
        int read = randomAccessFile.read(bArr, 0, min);
        while (read != -1) {
            crc32.update(bArr, 0, read);
            j -= read;
            if (j == 0) {
                break;
            }
            read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
        }
        return crc32.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static androidx.multidex.ZipUtil.CentralDirectory m17923b(java.io.RandomAccessFile r6) throws java.io.IOException, java.util.zip.ZipException {
        /*
            r0 = r6
            long r0 = r0.length()
            r1 = 22
            long r0 = r0 - r1
            r7 = r0
            r0 = 0
            r9 = r0
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0097
            r0 = r7
            r1 = 65536(0x10000, double:3.2379E-319)
            long r0 = r0 - r1
            r11 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0022
            goto L_0x0025
        L_0x0022:
            r0 = r11
            r9 = r0
        L_0x0025:
            r0 = 101010256(0x6054b50, float:2.506985E-35)
            int r0 = java.lang.Integer.reverseBytes(r0)
            r13 = r0
        L_0x002c:
            r0 = r6
            r1 = r7
            r0.seek(r1)
            r0 = r6
            int r0 = r0.readInt()
            r1 = r13
            if (r0 != r1) goto L_0x0080
            r0 = r6
            r1 = 2
            int r0 = r0.skipBytes(r1)
            r0 = r6
            r1 = 2
            int r0 = r0.skipBytes(r1)
            r0 = r6
            r1 = 2
            int r0 = r0.skipBytes(r1)
            r0 = r6
            r1 = 2
            int r0 = r0.skipBytes(r1)
            androidx.multidex.ZipUtil$CentralDirectory r0 = new androidx.multidex.ZipUtil$CentralDirectory
            r1 = r0
            r1.<init>()
            r14 = r0
            r0 = r14
            r1 = r6
            int r1 = r1.readInt()
            int r1 = java.lang.Integer.reverseBytes(r1)
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r0.f4334b = r1
            r0 = r14
            r1 = r6
            int r1 = r1.readInt()
            int r1 = java.lang.Integer.reverseBytes(r1)
            long r1 = (long) r1
            r2 = 4294967295(0xffffffff, double:2.1219957905E-314)
            long r1 = r1 & r2
            r0.f4333a = r1
            r0 = r14
            return r0
        L_0x0080:
            r0 = r7
            r1 = 1
            long r0 = r0 - r1
            r7 = r0
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x008d
            goto L_0x002c
        L_0x008d:
            java.util.zip.ZipException r0 = new java.util.zip.ZipException
            r1 = r0
            java.lang.String r2 = "End Of Central Directory signature not found"
            r1.<init>(r2)
            throw r0
        L_0x0097:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r14 = r0
            r0 = r14
            java.lang.String r1 = "File too short to be a zip file: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            r1 = r6
            long r1 = r1.length()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.util.zip.ZipException r0 = new java.util.zip.ZipException
            r1 = r0
            r2 = r14
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.multidex.ZipUtil.m17923b(java.io.RandomAccessFile):androidx.multidex.ZipUtil$CentralDirectory");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static long m17922c(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            return m17924a(randomAccessFile, m17923b(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }
}
