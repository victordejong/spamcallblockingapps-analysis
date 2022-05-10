package androidx.media2.exoplayer.external.upstream;

import android.net.Uri;
import com.inmobi.ads.C8302r;
import java.io.EOFException;
import java.io.IOException;
import java.io.RandomAccessFile;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1681d;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/FileDataSource.class */
public final class FileDataSource extends AbstractC1681d {

    /* renamed from: e */
    public RandomAccessFile f1978e;

    /* renamed from: f */
    public Uri f1979f;

    /* renamed from: g */
    public long f1980g;

    /* renamed from: h */
    public boolean f1981h;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/FileDataSource$FileDataSourceException.class */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public FileDataSource() {
        super(false);
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) throws FileDataSourceException {
        try {
            Uri uri = iVar.f6883a;
            this.f1979f = uri;
            m32391b(iVar);
            String path = uri.getPath();
            C1160a.m34522a(path);
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, C8302r.f32303d);
            this.f1978e = randomAccessFile;
            randomAccessFile.seek(iVar.f6887e);
            long length = iVar.f6888f == -1 ? randomAccessFile.length() - iVar.f6887e : iVar.f6888f;
            this.f1980g = length;
            if (length >= 0) {
                this.f1981h = true;
                m32390c(iVar);
                return this.f1980g;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws FileDataSourceException {
        this.f1979f = null;
        try {
            try {
                if (this.f1978e != null) {
                    this.f1978e.close();
                }
                this.f1978e = null;
                if (this.f1981h) {
                    this.f1981h = false;
                    m32393a();
                }
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f1978e = null;
            if (this.f1981h) {
                this.f1981h = false;
                m32393a();
            }
            throw th;
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        return this.f1979f;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f1980g == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f1978e;
            C1167d0.m34479a(randomAccessFile);
            int read = randomAccessFile.read(bArr, i, (int) Math.min(this.f1980g, i2));
            if (read > 0) {
                this.f1980g -= read;
                m32392a(read);
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }
}
