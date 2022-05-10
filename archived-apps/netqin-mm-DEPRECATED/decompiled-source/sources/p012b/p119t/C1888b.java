package p012b.p119t;

import com.inmobi.ads.C8302r;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.zip.CRC32;
import java.util.zip.ZipException;
/* renamed from: b.t.b */
/* loaded from: classes-dex2jar.jar:b/t/b.class */
public final class C1888b {

    /* renamed from: b.t.b$a */
    /* loaded from: classes-dex2jar.jar:b/t/b$a.class */
    public static class C1889a {

        /* renamed from: a */
        public long f7447a;

        /* renamed from: b */
        public long f7448b;
    }

    /* renamed from: a */
    public static long m31815a(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, C8302r.f32303d);
        try {
            return m31813a(randomAccessFile, m31814a(randomAccessFile));
        } finally {
            randomAccessFile.close();
        }
    }

    /* renamed from: a */
    public static long m31813a(RandomAccessFile randomAccessFile, C1889a aVar) throws IOException {
        CRC32 crc32 = new CRC32();
        long j = aVar.f7448b;
        randomAccessFile.seek(aVar.f7447a);
        byte[] bArr = new byte[16384];
        int read = randomAccessFile.read(bArr, 0, (int) Math.min(16384L, j));
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

    /* renamed from: a */
    public static C1889a m31814a(RandomAccessFile randomAccessFile) throws IOException, ZipException {
        long length = randomAccessFile.length() - 22;
        long j = 0;
        if (length >= 0) {
            j = length - 65536;
            if (j < 0) {
            }
            int reverseBytes = Integer.reverseBytes(101010256);
            do {
                randomAccessFile.seek(length);
                if (randomAccessFile.readInt() == reverseBytes) {
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    randomAccessFile.skipBytes(2);
                    C1889a aVar = new C1889a();
                    aVar.f7448b = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    aVar.f7447a = Integer.reverseBytes(randomAccessFile.readInt()) & 4294967295L;
                    return aVar;
                }
                length--;
            } while (length >= j);
            throw new ZipException("End Of Central Directory signature not found");
        }
        throw new ZipException("File too short to be a zip file: " + randomAccessFile.length());
    }
}
