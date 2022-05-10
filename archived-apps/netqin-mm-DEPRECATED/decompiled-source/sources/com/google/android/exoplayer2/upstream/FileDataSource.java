package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.text.TextUtils;
import com.inmobi.ads.C8302r;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import p131c.p161d.p170b.p188c.p201f1.AbstractC2824g;
import p131c.p161d.p170b.p188c.p201f1.C2829k;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource.class */
public final class FileDataSource extends AbstractC2824g {

    /* renamed from: e */
    public RandomAccessFile f22532e;

    /* renamed from: f */
    public Uri f22533f;

    /* renamed from: g */
    public long f22534g;

    /* renamed from: h */
    public boolean f22535h;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/FileDataSource$FileDataSourceException.class */
    public static class FileDataSourceException extends IOException {
        public FileDataSourceException(IOException iOException) {
            super(iOException);
        }

        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException);
        }
    }

    public FileDataSource() {
        super(false);
    }

    /* renamed from: a */
    public static RandomAccessFile m18289a(Uri uri) throws FileDataSourceException {
        try {
            String path = uri.getPath();
            C2877e.m28737a(path);
            return new RandomAccessFile(path, C8302r.f32303d);
        } catch (FileNotFoundException e) {
            if (!TextUtils.isEmpty(uri.getQuery()) || !TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e);
            }
            throw new FileDataSourceException(e);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: a */
    public long mo18288a(C2829k kVar) throws FileDataSourceException {
        try {
            Uri uri = kVar.f10265a;
            this.f22533f = uri;
            m28940b(kVar);
            RandomAccessFile a = m18289a(uri);
            this.f22532e = a;
            a.seek(kVar.f10270f);
            long length = kVar.f10271g == -1 ? this.f22532e.length() - kVar.f10270f : kVar.f10271g;
            this.f22534g = length;
            if (length >= 0) {
                this.f22535h = true;
                m28939c(kVar);
                return this.f22534g;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public void close() throws FileDataSourceException {
        this.f22533f = null;
        try {
            try {
                if (this.f22532e != null) {
                    this.f22532e.close();
                }
                this.f22532e = null;
                if (this.f22535h) {
                    this.f22535h = false;
                    m28942a();
                }
            } catch (IOException e) {
                throw new FileDataSourceException(e);
            }
        } catch (Throwable th) {
            this.f22532e = null;
            if (this.f22535h) {
                this.f22535h = false;
                m28942a();
            }
            throw th;
        }
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    /* renamed from: o */
    public Uri mo18287o() {
        return this.f22533f;
    }

    @Override // p131c.p161d.p170b.p188c.p201f1.AbstractC2827j
    public int read(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.f22534g == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f22532e;
            C2885h0.m28670a(randomAccessFile);
            int read = randomAccessFile.read(bArr, i, (int) Math.min(this.f22534g, i2));
            if (read > 0) {
                this.f22534g -= read;
                m28941a(read);
            }
            return read;
        } catch (IOException e) {
            throw new FileDataSourceException(e);
        }
    }
}
