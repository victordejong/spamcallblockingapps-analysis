package com.bumptech.glide.load.resource.b;

import com.asus.updatesdk.BuildConfig;
import com.bumptech.glide.load.b.k;
import com.bumptech.glide.load.e;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/c.class */
public final class c<T> implements e<File, T> {

    /* renamed from: a  reason: collision with root package name */
    private static final a f3590a = new a();

    /* renamed from: b  reason: collision with root package name */
    private e<InputStream, T> f3591b;
    private final a c;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b/c$a.class */
    static final class a {
        a() {
        }
    }

    public c(e<InputStream, T> eVar) {
        this(eVar, f3590a);
    }

    private c(e<InputStream, T> eVar, a aVar) {
        this.f3591b = eVar;
        this.c = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public k<T> a(File file, int i, int i2) {
        FileInputStream fileInputStream;
        Throwable th;
        try {
            fileInputStream = new FileInputStream(file);
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            k<T> a2 = this.f3591b.a(fileInputStream, i, i2);
            try {
                fileInputStream.close();
            } catch (IOException e) {
            }
            return a2;
        } catch (Throwable th3) {
            th = th3;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e2) {
                }
            }
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.e
    public final String a() {
        return BuildConfig.FLAVOR;
    }
}
