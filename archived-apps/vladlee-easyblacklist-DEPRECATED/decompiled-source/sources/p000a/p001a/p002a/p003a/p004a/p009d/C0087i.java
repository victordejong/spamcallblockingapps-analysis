package p000a.p001a.p002a.p003a.p004a.p009d;

import android.content.Context;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p000a.p001a.p002a.p003a.p004a.p006b.C0008aa;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
/* renamed from: a.a.a.a.a.d.i */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/d/i.class */
public class C0087i implements AbstractC0082d {

    /* renamed from: a */
    private final Context f158a;

    /* renamed from: b */
    private final File f159b;

    /* renamed from: c */
    private final String f160c;

    /* renamed from: d */
    private final File f161d;

    /* renamed from: e */
    private C0008aa f162e;

    /* renamed from: f */
    private File f163f;

    public C0087i(Context context, File file, String str, String str2) {
        this.f158a = context;
        this.f159b = file;
        this.f160c = str2;
        this.f161d = new File(this.f159b, str);
        this.f162e = new C0008aa(this.f161d);
        this.f163f = new File(this.f159b, this.f160c);
        if (!this.f163f.exists()) {
            this.f163f.mkdirs();
        }
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d
    /* renamed from: a */
    public final int mo10254a() {
        return this.f162e.m10403a();
    }

    /* renamed from: a */
    public OutputStream mo10252a(File file) {
        return new FileOutputStream(file);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d
    /* renamed from: a */
    public final void mo10251a(String str) {
        FileInputStream fileInputStream;
        Throwable th;
        this.f162e.close();
        File file = this.f161d;
        File file2 = new File(this.f163f, str);
        OutputStream outputStream = null;
        outputStream = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                OutputStream a = mo10252a(file2);
                outputStream = a;
                C0026j.m10345a(fileInputStream, a, new byte[1024]);
                C0026j.m10349a((Closeable) fileInputStream, "Failed to close file input stream");
                C0026j.m10349a((Closeable) a, "Failed to close output stream");
                file.delete();
                this.f162e = new C0008aa(this.f161d);
            } catch (Throwable th2) {
                th = th2;
                C0026j.m10349a((Closeable) fileInputStream, "Failed to close file input stream");
                C0026j.m10349a((Closeable) outputStream, "Failed to close output stream");
                file.delete();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d
    /* renamed from: a */
    public final void mo10250a(List<File> list) {
        for (File file : list) {
            C0026j.m10354a(this.f158a, String.format("deleting sent analytics file %s", file.getName()));
            file.delete();
        }
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d
    /* renamed from: a */
    public final void mo10249a(byte[] bArr) {
        this.f162e.m10391a(bArr);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d
    /* renamed from: a */
    public final boolean mo10253a(int i, int i2) {
        return this.f162e.m10401a(i, i2);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d
    /* renamed from: b */
    public final boolean mo10248b() {
        return this.f162e.m10387b();
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d
    /* renamed from: c */
    public final List<File> mo10247c() {
        ArrayList arrayList = new ArrayList();
        for (File file : this.f163f.listFiles()) {
            arrayList.add(file);
            if (arrayList.size() > 0) {
                break;
            }
        }
        return arrayList;
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d
    /* renamed from: d */
    public final List<File> mo10246d() {
        return Arrays.asList(this.f163f.listFiles());
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0082d
    /* renamed from: e */
    public final void mo10245e() {
        try {
            this.f162e.close();
        } catch (IOException e) {
        }
        this.f161d.delete();
    }
}
