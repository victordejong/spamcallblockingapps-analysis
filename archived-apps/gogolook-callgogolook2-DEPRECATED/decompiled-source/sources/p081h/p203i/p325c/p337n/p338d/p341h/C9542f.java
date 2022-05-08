package p081h.p203i.p325c.p337n.p338d.p341h;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
import p081h.p203i.p325c.p337n.p338d.p343j.AbstractC9715v;
/* renamed from: h.i.c.n.d.h.f */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/h/f.class */
public class C9542f implements AbstractC9537c0 {
    @Nullable

    /* renamed from: a */
    public final byte[] f21719a;
    @NonNull

    /* renamed from: b */
    public final String f21720b;
    @NonNull

    /* renamed from: c */
    public final String f21721c;

    public C9542f(@NonNull String str, @NonNull String str2, @Nullable byte[] bArr) {
        this.f21720b = str;
        this.f21721c = str2;
        this.f21719a = bArr;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9537c0
    @Nullable
    /* renamed from: a */
    public AbstractC9715v.AbstractC9719c.AbstractC9721b mo14693a() {
        AbstractC9715v.AbstractC9719c.AbstractC9721b bVar;
        byte[] c = m14950c();
        if (c == null) {
            bVar = null;
        } else {
            AbstractC9715v.AbstractC9719c.AbstractC9721b.AbstractC9722a c2 = AbstractC9715v.AbstractC9719c.AbstractC9721b.m14578c();
            c2.mo14575a(c);
            c2.mo14576a(this.f21720b);
            bVar = c2.mo14577a();
        }
        return bVar;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9537c0
    @NonNull
    /* renamed from: b */
    public String mo14692b() {
        return this.f21721c;
    }

    @Nullable
    /* renamed from: c */
    public final byte[] m14950c() {
        if (m14949d()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(this.f21719a);
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }

    /* renamed from: d */
    public final boolean m14949d() {
        byte[] bArr = this.f21719a;
        return bArr == null || bArr.length == 0;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p341h.AbstractC9537c0
    @Nullable
    public InputStream getStream() {
        return m14949d() ? null : new ByteArrayInputStream(this.f21719a);
    }
}
