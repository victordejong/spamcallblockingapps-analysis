package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.mopub.common.AdType;
import java.io.File;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p325c.p373y.p374a.C10009a;
/* renamed from: h.i.c.y.a.b.a.u */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/u.class */
public final class C10038u {

    /* renamed from: b */
    public static final C6999k f22709b = new C6999k("ModelFileHelper", "");
    @VisibleForTesting

    /* renamed from: c */
    public static final String f22710c = String.format("com.google.firebase.ml.%s.models", AdType.CUSTOM);
    @VisibleForTesting

    /* renamed from: d */
    public static final String f22711d = String.format("com.google.firebase.ml.%s.models", "automl");
    @VisibleForTesting

    /* renamed from: e */
    public static final String f22712e = String.format("com.google.firebase.ml.%s.models", "base");
    @VisibleForTesting

    /* renamed from: f */
    public static final String f22713f = String.format("com.google.firebase.ml.%s.models", "translate");

    /* renamed from: a */
    public final C8386u6 f22714a;

    public C10038u(C8386u6 u6Var) {
        this.f22714a = u6Var;
    }

    @WorkerThread
    /* renamed from: b */
    public static int m13552b(@NonNull File file) {
        File[] listFiles = file.listFiles();
        int i = -1;
        int i2 = -1;
        if (listFiles != null) {
            if (listFiles.length != 0) {
                int length = listFiles.length;
                int i3 = 0;
                while (true) {
                    i2 = i;
                    if (i3 >= length) {
                        break;
                    }
                    File file2 = listFiles[i3];
                    try {
                        i = Math.max(i, Integer.parseInt(file2.getName()));
                    } catch (NumberFormatException e) {
                        C6999k kVar = f22709b;
                        String valueOf = String.valueOf(file2.getName());
                        kVar.m21339a("ModelFileHelper", valueOf.length() != 0 ? "Contains non-integer file name ".concat(valueOf) : new String("Contains non-integer file name "));
                    }
                    i3++;
                }
            } else {
                i2 = -1;
            }
        }
        return i2;
    }

    @WorkerThread
    /* renamed from: a */
    public final File m13553a(@NonNull String str, @NonNull EnumC10040w wVar, boolean z) throws C10009a {
        File b = m13550b(str, wVar, z);
        if (!b.exists()) {
            C6999k kVar = f22709b;
            String valueOf = String.valueOf(b.getAbsolutePath());
            kVar.m21339a("ModelFileHelper", valueOf.length() != 0 ? "model folder does not exist, creating one: ".concat(valueOf) : new String("model folder does not exist, creating one: "));
            if (!b.mkdirs()) {
                String valueOf2 = String.valueOf(b);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf2).length() + 31);
                sb.append("Failed to create model folder: ");
                sb.append(valueOf2);
                throw new C10009a(sb.toString(), 13);
            }
        } else if (!b.isDirectory()) {
            String valueOf3 = String.valueOf(b);
            StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf3).length() + 71);
            sb2.append("Can not create model folder, since an existing file has the same name: ");
            sb2.append(valueOf3);
            throw new C10009a(sb2.toString(), 6);
        }
        return b;
    }

    /* renamed from: a */
    public final void m13554a(String str, EnumC10040w wVar) throws C10009a {
        if (wVar == EnumC10040w.AUTOML) {
            File parentFile = C10012b.m13629a(this.f22714a, str).getParentFile();
            if (!m13555a(parentFile)) {
                C6999k kVar = f22709b;
                String valueOf = String.valueOf(parentFile != null ? parentFile.getAbsolutePath() : null);
                kVar.m21337b("ModelFileHelper", valueOf.length() != 0 ? "Failed to delete the temp labels file directory: ".concat(valueOf) : new String("Failed to delete the temp labels file directory: "));
            }
        }
    }

    /* renamed from: a */
    public final boolean m13555a(@Nullable File file) {
        boolean z;
        if (file == null) {
            return false;
        }
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            C7021t.m21290a(listFiles);
            File[] fileArr = listFiles;
            int length = fileArr.length;
            int i = 0;
            boolean z2 = true;
            while (true) {
                z = z2;
                if (i >= length) {
                    break;
                }
                z2 = z2 && m13555a(fileArr[i]);
                i++;
            }
        } else {
            z = true;
        }
        return z && file.delete();
    }

    /* renamed from: b */
    public final File m13550b(@NonNull String str, @NonNull EnumC10040w wVar, boolean z) {
        String str2;
        int i = C10037t.f22708a[wVar.ordinal()];
        if (i == 1) {
            str2 = f22710c;
        } else if (i == 2) {
            str2 = f22712e;
        } else if (i == 3) {
            str2 = f22711d;
        } else if (i == 4) {
            str2 = f22713f;
        } else {
            String name = wVar.name();
            StringBuilder sb = new StringBuilder(String.valueOf(name).length() + 69);
            sb.append("Unknown model type ");
            sb.append(name);
            sb.append(". Cannot find a dir to store the downloaded model.");
            throw new IllegalArgumentException(sb.toString());
        }
        File file = Build.VERSION.SDK_INT >= 21 ? new File(this.f22714a.m18152a().getNoBackupFilesDir(), str2) : this.f22714a.m18152a().getDir(str2, 0);
        if (z) {
            file = new File(file, "temp");
        }
        return new File(new File(file, this.f22714a.m18149b()), str);
    }

    /* renamed from: b */
    public final boolean m13551b(String str, EnumC10040w wVar) throws C10009a {
        String str2;
        if (wVar == EnumC10040w.UNKNOWN) {
            return false;
        }
        File a = m13553a(str, wVar, false);
        int b = m13552b(a);
        if (b == -1) {
            str2 = null;
        } else {
            String absolutePath = a.getAbsolutePath();
            StringBuilder sb = new StringBuilder(String.valueOf(absolutePath).length() + 12);
            sb.append(absolutePath);
            sb.append("/");
            sb.append(b);
            str2 = sb.toString();
        }
        return str2 != null;
    }

    @WorkerThread
    /* renamed from: c */
    public final File m13549c(@NonNull String str, EnumC10040w wVar) throws C10009a {
        return m13553a(str, wVar, false);
    }

    @WorkerThread
    /* renamed from: d */
    public final File m13548d(@NonNull String str, @NonNull EnumC10040w wVar) throws C10009a {
        return m13553a(str, wVar, true);
    }
}
