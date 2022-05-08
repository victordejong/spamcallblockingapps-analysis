package com.bumptech.glide.a;

import com.asus.updatesdk.BuildConfig;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a.class */
public final class a implements Closeable {

    /* renamed from: b  reason: collision with root package name */
    private final File f3359b;
    private final File c;
    private final File d;
    private final File e;
    private long g;
    private Writer j;
    private int l;
    private long i = 0;
    private final LinkedHashMap<String, b> k = new LinkedHashMap<>(0, 0.75f, true);
    private long m = 0;

    /* renamed from: a  reason: collision with root package name */
    final ThreadPoolExecutor f3358a = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> n = new Callable<Void>() { // from class: com.bumptech.glide.a.a.1
        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a */
        public Void call() {
            synchronized (a.this) {
                if (a.this.j == null) {
                    return null;
                }
                a.this.f();
                if (a.this.d()) {
                    a.this.c();
                    a.this.l = 0;
                }
                return null;
            }
        }
    };
    private final int f = 1;
    private final int h = 1;

    /* renamed from: com.bumptech.glide.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$a.class */
    public final class C0090a {

        /* renamed from: a  reason: collision with root package name */
        final b f3361a;

        /* renamed from: b  reason: collision with root package name */
        final boolean[] f3362b;
        public boolean c;

        private C0090a(b bVar) {
            this.f3361a = bVar;
            this.f3362b = bVar.e ? null : new boolean[a.this.h];
        }

        /* synthetic */ C0090a(a aVar, b bVar, byte b2) {
            this(bVar);
        }

        public final File a() {
            File file;
            synchronized (a.this) {
                if (this.f3361a.f != this) {
                    throw new IllegalStateException();
                }
                if (!this.f3361a.e) {
                    this.f3362b[0] = true;
                }
                file = this.f3361a.d[0];
                if (!a.this.f3359b.exists()) {
                    a.this.f3359b.mkdirs();
                }
            }
            return file;
        }

        public final void b() {
            a.this.a(this, false);
        }

        public final void c() {
            if (!this.c) {
                try {
                    b();
                } catch (IOException e) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        final String f3363a;

        /* renamed from: b  reason: collision with root package name */
        final long[] f3364b;
        File[] c;
        File[] d;
        boolean e;
        C0090a f;
        long g;

        private b(String str) {
            this.f3363a = str;
            this.f3364b = new long[a.this.h];
            this.c = new File[a.this.h];
            this.d = new File[a.this.h];
            StringBuilder append = new StringBuilder(str).append('.');
            int length = append.length();
            for (int i = 0; i < a.this.h; i++) {
                append.append(i);
                this.c[i] = new File(a.this.f3359b, append.toString());
                append.append(".tmp");
                this.d[i] = new File(a.this.f3359b, append.toString());
                append.setLength(length);
            }
        }

        /* synthetic */ b(a aVar, String str, byte b2) {
            this(str);
        }

        private static IOException b(String[] strArr) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public final String a() {
            StringBuilder sb = new StringBuilder();
            for (long j : this.f3364b) {
                sb.append(' ').append(j);
            }
            return sb.toString();
        }

        final void a(String[] strArr) {
            if (strArr.length != a.this.h) {
                throw b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f3364b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw b(strArr);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/a/a$c.class */
    public final class c {

        /* renamed from: a  reason: collision with root package name */
        public final File[] f3365a;
        private final String c;
        private final long d;
        private final long[] e;

        private c(String str, long j, File[] fileArr, long[] jArr) {
            this.c = str;
            this.d = j;
            this.f3365a = fileArr;
            this.e = jArr;
        }

        /* synthetic */ c(a aVar, String str, long j, File[] fileArr, long[] jArr, byte b2) {
            this(str, j, fileArr, jArr);
        }
    }

    private a(File file, long j) {
        this.f3359b = file;
        this.c = new File(file, "journal");
        this.d = new File(file, "journal.tmp");
        this.e = new File(file, "journal.bkp");
        this.g = j;
    }

    public static a a(File file, long j) {
        a aVar;
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                a(file2, file3, false);
            }
        }
        a aVar2 = new a(file, j);
        if (aVar2.c.exists()) {
            try {
                aVar2.a();
                aVar2.b();
                aVar = aVar2;
            } catch (IOException e) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                aVar2.close();
                com.bumptech.glide.a.c.a(aVar2.f3359b);
            }
            return aVar;
        }
        file.mkdirs();
        aVar = new a(file, j);
        aVar.c();
        return aVar;
    }

    private void a() {
        String a2;
        String str;
        com.bumptech.glide.a.b bVar = new com.bumptech.glide.a.b(new FileInputStream(this.c), com.bumptech.glide.a.c.f3370a);
        try {
            String a3 = bVar.a();
            String a4 = bVar.a();
            String a5 = bVar.a();
            String a6 = bVar.a();
            String a7 = bVar.a();
            if (!"libcore.io.DiskLruCache".equals(a3) || !"1".equals(a4) || !Integer.toString(this.f).equals(a5) || !Integer.toString(this.h).equals(a6) || !BuildConfig.FLAVOR.equals(a7)) {
                throw new IOException("unexpected journal header: [" + a3 + ", " + a4 + ", " + a6 + ", " + a7 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    a2 = bVar.a();
                    int indexOf = a2.indexOf(32);
                    if (indexOf == -1) {
                        throw new IOException("unexpected journal line: " + a2);
                    }
                    int i2 = indexOf + 1;
                    int indexOf2 = a2.indexOf(32, i2);
                    if (indexOf2 == -1) {
                        str = a2.substring(i2);
                        if (indexOf == 6 && a2.startsWith("REMOVE")) {
                            this.k.remove(str);
                            i++;
                        }
                    } else {
                        str = a2.substring(i2, indexOf2);
                    }
                    b bVar2 = this.k.get(str);
                    b bVar3 = bVar2;
                    if (bVar2 == null) {
                        bVar3 = new b(this, str, (byte) 0);
                        this.k.put(str, bVar3);
                    }
                    if (indexOf2 != -1 && indexOf == 5 && a2.startsWith("CLEAN")) {
                        String[] split = a2.substring(indexOf2 + 1).split(" ");
                        bVar3.e = true;
                        bVar3.f = null;
                        bVar3.a(split);
                    } else if (indexOf2 == -1 && indexOf == 5 && a2.startsWith("DIRTY")) {
                        bVar3.f = new C0090a(this, bVar3, (byte) 0);
                    } else if (indexOf2 != -1 || indexOf != 4 || !a2.startsWith("READ")) {
                        break;
                    }
                    i++;
                } catch (EOFException e) {
                    this.l = i - this.k.size();
                    if (bVar.f3368b == -1) {
                        c();
                    } else {
                        this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), com.bumptech.glide.a.c.f3370a));
                    }
                    com.bumptech.glide.a.c.a(bVar);
                    return;
                }
            }
            throw new IOException("unexpected journal line: " + a2);
        } catch (Throwable th) {
            com.bumptech.glide.a.c.a(bVar);
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(C0090a aVar, boolean z) {
        synchronized (this) {
            b bVar = aVar.f3361a;
            if (bVar.f != aVar) {
                throw new IllegalStateException();
            }
            int i = 0;
            if (z) {
                i = 0;
                if (!bVar.e) {
                    int i2 = 0;
                    while (true) {
                        i = 0;
                        if (i2 >= this.h) {
                            break;
                        } else if (!aVar.f3362b[i2]) {
                            aVar.b();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                        } else if (!bVar.d[i2].exists()) {
                            aVar.b();
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            while (i < this.h) {
                File file = bVar.d[i];
                if (!z) {
                    a(file);
                } else if (file.exists()) {
                    File file2 = bVar.c[i];
                    file.renameTo(file2);
                    long j = bVar.f3364b[i];
                    long length = file2.length();
                    bVar.f3364b[i] = length;
                    this.i = (this.i - j) + length;
                }
                i++;
            }
            this.l++;
            bVar.f = null;
            if (bVar.e || z) {
                bVar.e = true;
                this.j.append((CharSequence) "CLEAN");
                this.j.append(' ');
                this.j.append((CharSequence) bVar.f3363a);
                this.j.append((CharSequence) bVar.a());
                this.j.append('\n');
                if (z) {
                    long j2 = this.m;
                    this.m = 1 + j2;
                    bVar.g = j2;
                }
            } else {
                this.k.remove(bVar.f3363a);
                this.j.append((CharSequence) "REMOVE");
                this.j.append(' ');
                this.j.append((CharSequence) bVar.f3363a);
                this.j.append('\n');
            }
            this.j.flush();
            if (this.i > this.g || d()) {
                this.f3358a.submit(this.n);
            }
        }
    }

    private static void a(File file) {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private void b() {
        a(this.d);
        Iterator<b> it = this.k.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            if (next.f == null) {
                for (int i = 0; i < this.h; i++) {
                    this.i += next.f3364b[i];
                }
            } else {
                next.f = null;
                for (int i2 = 0; i2 < this.h; i2++) {
                    a(next.c[i2]);
                    a(next.d[i2]);
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        synchronized (this) {
            if (this.j != null) {
                this.j.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.d), com.bumptech.glide.a.c.f3370a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.h));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (b bVar : this.k.values()) {
                if (bVar.f != null) {
                    bufferedWriter.write("DIRTY " + bVar.f3363a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + bVar.f3363a + bVar.a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.c.exists()) {
                a(this.c, this.e, true);
            }
            a(this.d, this.c, false);
            this.e.delete();
            this.j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), com.bumptech.glide.a.c.f3370a));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        return this.l >= 2000 && this.l >= this.k.size();
    }

    private void e() {
        if (this.j == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        while (this.i > this.g) {
            c(this.k.entrySet().iterator().next().getKey());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0054, code lost:
        r10.l++;
        r10.j.append((java.lang.CharSequence) "READ");
        r10.j.append(' ');
        r10.j.append((java.lang.CharSequence) r11);
        r10.j.append('\n');
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008a, code lost:
        if (d() == false) goto L_0x0099;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008d, code lost:
        r10.f3358a.submit(r10.n);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x009c, code lost:
        r15 = new com.bumptech.glide.a.a.c(r10, r11, r0.g, r0.c, r0.f3364b, (byte) 0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.bumptech.glide.a.a.c a(java.lang.String r11) {
        /*
            r10 = this;
            r0 = 0
            r12 = r0
            r0 = 0
            r13 = r0
            r0 = r10
            monitor-enter(r0)
            r0 = r10
            r0.e()     // Catch: all -> 0x00b7
            r0 = r10
            java.util.LinkedHashMap<java.lang.String, com.bumptech.glide.a.a$b> r0 = r0.k     // Catch: all -> 0x00b7
            r1 = r11
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x00b7
            com.bumptech.glide.a.a$b r0 = (com.bumptech.glide.a.a.b) r0     // Catch: all -> 0x00b7
            r14 = r0
            r0 = r14
            if (r0 != 0) goto L_0x0024
            r0 = r13
            r15 = r0
        L_0x001f:
            r0 = r10
            monitor-exit(r0)
            r0 = r15
            return r0
        L_0x0024:
            r0 = r13
            r15 = r0
            r0 = r14
            boolean r0 = r0.e     // Catch: all -> 0x00b7
            if (r0 == 0) goto L_0x001f
            r0 = r14
            java.io.File[] r0 = r0.c     // Catch: all -> 0x00b7
            r16 = r0
            r0 = r16
            int r0 = r0.length     // Catch: all -> 0x00b7
            r17 = r0
        L_0x003b:
            r0 = r12
            r1 = r17
            if (r0 >= r1) goto L_0x0054
            r0 = r13
            r15 = r0
            r0 = r16
            r1 = r12
            r0 = r0[r1]     // Catch: all -> 0x00b7
            boolean r0 = r0.exists()     // Catch: all -> 0x00b7
            if (r0 == 0) goto L_0x001f
            int r12 = r12 + 1
            goto L_0x003b
        L_0x0054:
            r0 = r10
            r1 = r10
            int r1 = r1.l     // Catch: all -> 0x00b7
            r2 = 1
            int r1 = r1 + r2
            r0.l = r1     // Catch: all -> 0x00b7
            r0 = r10
            java.io.Writer r0 = r0.j     // Catch: all -> 0x00b7
            java.lang.String r1 = "READ"
            java.io.Writer r0 = r0.append(r1)     // Catch: all -> 0x00b7
            r0 = r10
            java.io.Writer r0 = r0.j     // Catch: all -> 0x00b7
            r1 = 32
            java.io.Writer r0 = r0.append(r1)     // Catch: all -> 0x00b7
            r0 = r10
            java.io.Writer r0 = r0.j     // Catch: all -> 0x00b7
            r1 = r11
            java.io.Writer r0 = r0.append(r1)     // Catch: all -> 0x00b7
            r0 = r10
            java.io.Writer r0 = r0.j     // Catch: all -> 0x00b7
            r1 = 10
            java.io.Writer r0 = r0.append(r1)     // Catch: all -> 0x00b7
            r0 = r10
            boolean r0 = r0.d()     // Catch: all -> 0x00b7
            if (r0 == 0) goto L_0x0099
            r0 = r10
            java.util.concurrent.ThreadPoolExecutor r0 = r0.f3358a     // Catch: all -> 0x00b7
            r1 = r10
            java.util.concurrent.Callable<java.lang.Void> r1 = r1.n     // Catch: all -> 0x00b7
            java.util.concurrent.Future r0 = r0.submit(r1)     // Catch: all -> 0x00b7
        L_0x0099:
            com.bumptech.glide.a.a$c r0 = new com.bumptech.glide.a.a$c     // Catch: all -> 0x00b7, all -> 0x00b7
            r1 = r0
            r2 = r10
            r3 = r11
            r4 = r14
            long r4 = r4.g     // Catch: all -> 0x00b7
            r5 = r14
            java.io.File[] r5 = r5.c     // Catch: all -> 0x00b7
            r6 = r14
            long[] r6 = r6.f3364b     // Catch: all -> 0x00b7
            r7 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7)     // Catch: all -> 0x00b7
            r15 = r0
            goto L_0x001f
        L_0x00b7:
            r11 = move-exception
            r0 = r10
            monitor-exit(r0)
            r0 = r11
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.a.a.a(java.lang.String):com.bumptech.glide.a.a$c");
    }

    public final C0090a b(String str) {
        C0090a aVar;
        synchronized (this) {
            e();
            b bVar = this.k.get(str);
            if (-1 == -1 || (bVar != null && bVar.g == -1)) {
                if (bVar == null) {
                    bVar = new b(this, str, (byte) 0);
                    this.k.put(str, bVar);
                } else if (bVar.f != null) {
                    aVar = null;
                }
                C0090a aVar2 = new C0090a(this, bVar, (byte) 0);
                bVar.f = aVar2;
                this.j.append((CharSequence) "DIRTY");
                this.j.append(' ');
                this.j.append((CharSequence) str);
                this.j.append('\n');
                this.j.flush();
                aVar = aVar2;
            } else {
                aVar = null;
            }
        }
        return aVar;
    }

    public final boolean c(String str) {
        boolean z;
        synchronized (this) {
            e();
            b bVar = this.k.get(str);
            if (bVar == null || bVar.f != null) {
                z = false;
            } else {
                for (int i = 0; i < this.h; i++) {
                    File file = bVar.c[i];
                    if (!file.exists() || file.delete()) {
                        this.i -= bVar.f3364b[i];
                        bVar.f3364b[i] = 0;
                    } else {
                        throw new IOException("failed to delete " + file);
                    }
                }
                this.l++;
                this.j.append((CharSequence) "REMOVE");
                this.j.append(' ');
                this.j.append((CharSequence) str);
                this.j.append('\n');
                this.k.remove(str);
                if (d()) {
                    this.f3358a.submit(this.n);
                }
                z = true;
            }
        }
        return z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            if (this.j != null) {
                Iterator it = new ArrayList(this.k.values()).iterator();
                while (it.hasNext()) {
                    b bVar = (b) it.next();
                    if (bVar.f != null) {
                        bVar.f.b();
                    }
                }
                f();
                this.j.close();
                this.j = null;
            }
        }
    }
}
