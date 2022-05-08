package com.aotter.net.trek.common;

import androidx.annotation.NonNull;
import com.aotter.net.trek.common.DiskLruCache;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.aotter.net.trek.common.e */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/e.class */
public class C1745e extends FilterOutputStream {

    /* renamed from: a */
    public final /* synthetic */ DiskLruCache.Editor f1510a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1745e(DiskLruCache.Editor editor, OutputStream outputStream) {
        super(outputStream);
        this.f1510a = editor;
    }

    public /* synthetic */ C1745e(DiskLruCache.Editor editor, OutputStream outputStream, CallableC1743c cVar) {
        this(editor, outputStream);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            ((FilterOutputStream) this).out.close();
        } catch (IOException e) {
            this.f1510a.f1491d = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
    public void flush() {
        try {
            ((FilterOutputStream) this).out.flush();
        } catch (IOException e) {
            this.f1510a.f1491d = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) {
        try {
            ((FilterOutputStream) this).out.write(i);
        } catch (IOException e) {
            this.f1510a.f1491d = true;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(@NonNull byte[] bArr, int i, int i2) {
        try {
            ((FilterOutputStream) this).out.write(bArr, i, i2);
        } catch (IOException e) {
            this.f1510a.f1491d = true;
        }
    }
}
