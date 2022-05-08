package p000a.p001a.p002a.p003a.p004a.p009d;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.util.zip.GZIPOutputStream;
/* renamed from: a.a.a.a.a.d.h */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/d/h.class */
public final class C0086h extends C0087i {
    public C0086h(Context context, File file, String str, String str2) {
        super(context, file, str, str2);
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p009d.C0087i
    /* renamed from: a */
    public final OutputStream mo10252a(File file) {
        return new GZIPOutputStream(new FileOutputStream(file));
    }
}
