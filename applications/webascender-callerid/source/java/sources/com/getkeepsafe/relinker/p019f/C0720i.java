package com.getkeepsafe.relinker.p019f;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: com.getkeepsafe.relinker.f.i */
/* loaded from: classes-dex2jar.jar:com/getkeepsafe/relinker/f/i.class */
public class C0720i implements Closeable {

    /* renamed from: f */
    private final FileChannel f3199f;

    public C0720i(File file) throws FileNotFoundException {
        if (file == null || !file.exists()) {
            throw new IllegalArgumentException("File is null or does not exist");
        }
        this.f3199f = new FileInputStream(file).getChannel();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.f.d] */
    /* renamed from: a */
    private long m3941a(AbstractC0717d abstractC0717d, long j, long j2) throws IOException {
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c < j) {
                AbstractC0718e m3943b = abstractC0717d.m3943b(c);
                if (m3943b.f3194a == 1) {
                    long j3 = m3943b.f3196c;
                    if (j3 <= j2 && j2 <= m3943b.f3197d + j3) {
                        return (j2 - j3) + m3943b.f3195b;
                    }
                }
                r0 = c + 1;
            } else {
                throw new IllegalStateException("Could not map vma to file offset!");
            }
        }
    }

    /* renamed from: b */
    public AbstractC0717d m3940b() throws IOException {
        this.f3199f.position(0L);
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        if (m3933l(allocate, 0L) == 1179403647) {
            short m3937f = m3937f(allocate, 4L);
            boolean z = m3937f(allocate, 5L) == 2;
            if (m3937f == 1) {
                return new g(z, this);
            }
            if (m3937f != 2) {
                throw new IllegalStateException("Invalid class type!");
            }
            return new h(z, this);
        }
        throw new IllegalArgumentException("Invalid ELF Magic!");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19 */
    /* JADX WARN: Type inference failed for: r0v20 */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.getkeepsafe.relinker.f.d] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v71 */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.getkeepsafe.relinker.f.i] */
    /* renamed from: c */
    public List<String> m3939c() throws IOException {
        char c;
        AbstractC0716c m3944a;
        this.f3199f.position(0L);
        ArrayList arrayList = new ArrayList();
        ?? m3940b = m3940b();
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(m3940b.f3188a ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN);
        ?? r0 = m3940b.f3192e;
        int i = 0;
        char c2 = r0;
        if (r0 == 65535) {
            c2 = m3940b.m3942c(0).f3198a;
        }
        ?? r02 = 0;
        while (true) {
            char c3 = r02;
            if (c3 >= c2) {
                c = 0;
                break;
            }
            AbstractC0718e m3943b = m3940b.m3943b(c3);
            if (m3943b.f3194a == 2) {
                c = m3943b.f3195b;
                break;
            }
            r02 = c3 + 1;
        }
        if (c == 0) {
            return Collections.unmodifiableList(arrayList);
        }
        ArrayList<Long> arrayList2 = new ArrayList();
        char c4 = 0;
        do {
            m3944a = m3940b.m3944a(c, i);
            long j = m3944a.f3186a;
            if (j == 1) {
                arrayList2.add(Long.valueOf(m3944a.f3187b));
            } else if (j == 5) {
                c4 = m3944a.f3187b;
            }
            i++;
        } while (m3944a.f3186a != 0);
        if (c4 == 0) {
            throw new IllegalStateException("String table offset not found!");
        }
        long m3941a = m3941a(m3940b, c2, c4);
        for (Long l : arrayList2) {
            arrayList.add(m3934j(allocate, l.longValue() + m3941a));
        }
        return arrayList;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f3199f.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* renamed from: e */
    protected void m3938e(ByteBuffer byteBuffer, long j, int i) throws IOException {
        byteBuffer.position(0);
        byteBuffer.limit(i);
        ?? r0 = 0;
        while (true) {
            char c = r0;
            if (c >= i) {
                byteBuffer.position(0);
                return;
            }
            int read = this.f3199f.read(byteBuffer, j + c);
            if (read == -1) {
                throw new EOFException();
            }
            r0 = c + read;
        }
    }

    /* renamed from: f */
    protected short m3937f(ByteBuffer byteBuffer, long j) throws IOException {
        m3938e(byteBuffer, j, 1);
        return (short) (byteBuffer.get() & 255);
    }

    /* renamed from: g */
    protected int m3936g(ByteBuffer byteBuffer, long j) throws IOException {
        m3938e(byteBuffer, j, 2);
        return byteBuffer.getShort() & 65535;
    }

    /* renamed from: i */
    protected long m3935i(ByteBuffer byteBuffer, long j) throws IOException {
        m3938e(byteBuffer, j, 8);
        return byteBuffer.getLong();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.getkeepsafe.relinker.f.i] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: j */
    protected String m3934j(ByteBuffer byteBuffer, long j) throws IOException {
        StringBuilder sb = new StringBuilder();
        ?? r7 = j;
        while (true) {
            short m3937f = m3937f(byteBuffer, r7);
            if (m3937f != 0) {
                sb.append((char) m3937f);
                r7 = 1 + r7;
            } else {
                return sb.toString();
            }
        }
    }

    /* renamed from: l */
    protected long m3933l(ByteBuffer byteBuffer, long j) throws IOException {
        m3938e(byteBuffer, j, 4);
        return byteBuffer.getInt() & 4294967295L;
    }
}
