package com.facebook.internal;

import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import com.facebook.FacebookContentProvider;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.UUID;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
/* renamed from: com.facebook.internal.z */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/z.class */
public final class C2504z {

    /* renamed from: a */
    public static final String f3227a = "com.facebook.internal.z";

    /* renamed from: b */
    public static File f3228b;

    /* renamed from: com.facebook.internal.z$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/internal/z$b.class */
    public static final class C2506b {

        /* renamed from: a */
        public final UUID f3229a;

        /* renamed from: b */
        public final String f3230b;

        /* renamed from: c */
        public final String f3231c;

        /* renamed from: d */
        public Bitmap f3232d;

        /* renamed from: e */
        public Uri f3233e;

        /* renamed from: f */
        public boolean f3234f;

        /* renamed from: g */
        public boolean f3235g;

        public C2506b(UUID uuid, Bitmap bitmap, Uri uri) {
            this.f3229a = uuid;
            this.f3232d = bitmap;
            this.f3233e = uri;
            boolean z = true;
            if (uri != null) {
                String scheme = uri.getScheme();
                if ("content".equalsIgnoreCase(scheme)) {
                    this.f3234f = true;
                    this.f3235g = (uri.getAuthority() == null || uri.getAuthority().startsWith("media")) ? false : z;
                } else if ("file".equalsIgnoreCase(uri.getScheme())) {
                    this.f3235g = true;
                } else if (!C2408g0.m34813e(uri)) {
                    throw new C6131k("Unsupported scheme for media Uri : " + scheme);
                }
            } else if (bitmap != null) {
                this.f3235g = true;
            } else {
                throw new C6131k("Cannot share media without a bitmap or Uri set");
            }
            this.f3231c = !this.f3235g ? null : UUID.randomUUID().toString();
            this.f3230b = !this.f3235g ? this.f3233e.toString() : FacebookContentProvider.m35476a(C6135n.m23745f(), uuid, this.f3231c);
        }

        /* renamed from: a */
        public String m34535a() {
            return this.f3230b;
        }

        /* renamed from: b */
        public Uri m34533b() {
            return this.f3233e;
        }
    }

    /* renamed from: a */
    public static C2506b m34542a(UUID uuid, Bitmap bitmap) {
        C2416h0.m34791a(uuid, "callId");
        C2416h0.m34791a(bitmap, "attachmentBitmap");
        return new C2506b(uuid, bitmap, null);
    }

    /* renamed from: a */
    public static C2506b m34541a(UUID uuid, Uri uri) {
        C2416h0.m34791a(uuid, "callId");
        C2416h0.m34791a(uri, "attachmentUri");
        return new C2506b(uuid, null, uri);
    }

    /* renamed from: a */
    public static File m34540a(UUID uuid, String str) throws FileNotFoundException {
        if (C2408g0.m34816d(str) || uuid == null) {
            throw new FileNotFoundException();
        }
        try {
            return m34539a(uuid, str, false);
        } catch (IOException e) {
            throw new FileNotFoundException();
        }
    }

    /* renamed from: a */
    public static File m34539a(UUID uuid, String str, boolean z) throws IOException {
        File a = m34538a(uuid, z);
        if (a == null) {
            return null;
        }
        try {
            return new File(a, URLEncoder.encode(str, "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static File m34538a(UUID uuid, boolean z) {
        File file = f3228b;
        if (file == null) {
            return null;
        }
        File file2 = new File(file, uuid.toString());
        if (z && !file2.exists()) {
            file2.mkdirs();
        }
        return file2;
    }

    /* renamed from: a */
    public static void m34547a() {
        C2408g0.m34862a(m34536c());
    }

    /* renamed from: a */
    public static void m34546a(Bitmap bitmap, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            bitmap.compress(Bitmap.CompressFormat.JPEG, 100, fileOutputStream);
        } finally {
            C2408g0.m34863a(fileOutputStream);
        }
    }

    /* renamed from: a */
    public static void m34545a(Uri uri, boolean z, File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            C2408g0.m34860a(!z ? new FileInputStream(uri.getPath()) : C6135n.m23746e().getContentResolver().openInputStream(uri), (OutputStream) fileOutputStream);
        } finally {
            C2408g0.m34863a(fileOutputStream);
        }
    }

    /* renamed from: a */
    public static void m34544a(Collection<C2506b> collection) {
        if (collection != null && collection.size() != 0) {
            if (f3228b == null) {
                m34547a();
            }
            m34537b();
            ArrayList<File> arrayList = new ArrayList();
            try {
                for (C2506b bVar : collection) {
                    if (bVar.f3235g) {
                        File a = m34539a(bVar.f3229a, bVar.f3231c, true);
                        arrayList.add(a);
                        if (bVar.f3232d != null) {
                            m34546a(bVar.f3232d, a);
                        } else if (bVar.f3233e != null) {
                            m34545a(bVar.f3233e, bVar.f3234f, a);
                        }
                    }
                }
            } catch (IOException e) {
                String str = f3227a;
                Log.e(str, "Got unexpected exception:" + e);
                for (File file : arrayList) {
                    try {
                        file.delete();
                    } catch (Exception e2) {
                    }
                }
                throw new C6131k(e);
            }
        }
    }

    /* renamed from: a */
    public static void m34543a(UUID uuid) {
        File a = m34538a(uuid, false);
        if (a != null) {
            C2408g0.m34862a(a);
        }
    }

    /* renamed from: b */
    public static File m34537b() {
        File c = m34536c();
        c.mkdirs();
        return c;
    }

    /* renamed from: c */
    public static File m34536c() {
        File file;
        synchronized (C2504z.class) {
            try {
                if (f3228b == null) {
                    f3228b = new File(C6135n.m23746e().getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
                }
                file = f3228b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }
}
