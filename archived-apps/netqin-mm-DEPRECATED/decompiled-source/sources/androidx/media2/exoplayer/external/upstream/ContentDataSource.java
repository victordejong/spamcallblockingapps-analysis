package androidx.media2.exoplayer.external.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import com.inmobi.ads.C8302r;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p111z0.AbstractC1681d;
import p012b.p076s.p078b.p079a.p111z0.C1687i;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ContentDataSource.class */
public final class ContentDataSource extends AbstractC1681d {

    /* renamed from: e */
    public final ContentResolver f1972e;

    /* renamed from: f */
    public Uri f1973f;

    /* renamed from: g */
    public AssetFileDescriptor f1974g;

    /* renamed from: h */
    public FileInputStream f1975h;

    /* renamed from: i */
    public long f1976i;

    /* renamed from: j */
    public boolean f1977j;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/upstream/ContentDataSource$ContentDataSourceException.class */
    public static class ContentDataSourceException extends IOException {
        public ContentDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public ContentDataSource(Context context) {
        super(false);
        this.f1972e = context.getContentResolver();
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: a */
    public long mo32144a(C1687i iVar) throws ContentDataSourceException {
        try {
            Uri uri = iVar.f6883a;
            this.f1973f = uri;
            m32391b(iVar);
            AssetFileDescriptor openAssetFileDescriptor = this.f1972e.openAssetFileDescriptor(uri, C8302r.f32303d);
            this.f1974g = openAssetFileDescriptor;
            if (openAssetFileDescriptor != null) {
                FileInputStream fileInputStream = new FileInputStream(openAssetFileDescriptor.getFileDescriptor());
                this.f1975h = fileInputStream;
                long startOffset = openAssetFileDescriptor.getStartOffset();
                long skip = fileInputStream.skip(iVar.f6887e + startOffset) - startOffset;
                if (skip == iVar.f6887e) {
                    long j = -1;
                    if (iVar.f6888f != -1) {
                        this.f1976i = iVar.f6888f;
                    } else {
                        long length = openAssetFileDescriptor.getLength();
                        if (length == -1) {
                            FileChannel channel = fileInputStream.getChannel();
                            long size = channel.size();
                            if (size != 0) {
                                j = size - channel.position();
                            }
                            this.f1976i = j;
                        } else {
                            this.f1976i = length - skip;
                        }
                    }
                    this.f1977j = true;
                    m32390c(iVar);
                    return this.f1976i;
                }
                throw new EOFException();
            }
            String valueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 36);
            sb.append("Could not open file descriptor for: ");
            sb.append(valueOf);
            throw new FileNotFoundException(sb.toString());
        } catch (IOException e) {
            throw new ContentDataSourceException(e);
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public void close() throws ContentDataSourceException {
        this.f1973f = null;
        try {
            try {
                if (this.f1975h != null) {
                    this.f1975h.close();
                }
                this.f1975h = null;
            } catch (IOException e) {
                throw new ContentDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f1975h = null;
            try {
                try {
                    if (this.f1974g != null) {
                        this.f1974g.close();
                    }
                    throw th;
                } catch (IOException e2) {
                    throw new ContentDataSourceException(e2);
                }
            } finally {
                this.f1974g = null;
                if (this.f1977j) {
                    this.f1977j = false;
                    m32393a();
                }
            }
        }
        try {
            try {
                if (this.f1974g != null) {
                    this.f1974g.close();
                }
                this.f1974g = null;
                if (this.f1977j) {
                    this.f1977j = false;
                    m32393a();
                }
            } catch (IOException e3) {
                throw new ContentDataSourceException(e3);
            }
        } finally {
        }
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    /* renamed from: o */
    public Uri mo32142o() {
        return this.f1973f;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.AbstractC1684g
    public int read(byte[] bArr, int i, int i2) throws ContentDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        long j = this.f1976i;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new ContentDataSourceException(e);
            }
        }
        FileInputStream fileInputStream = this.f1975h;
        C1167d0.m34479a(fileInputStream);
        int read = fileInputStream.read(bArr, i, i2);
        if (read != -1) {
            long j2 = this.f1976i;
            if (j2 != -1) {
                this.f1976i = j2 - read;
            }
            m32392a(read);
            return read;
        } else if (this.f1976i == -1) {
            return -1;
        } else {
            throw new ContentDataSourceException(new EOFException());
        }
    }
}
