package p081h.p203i.p325c.p373y.p374a.p375b.p376a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p240n.C6999k;
import p081h.p203i.p204a.p224e.p259j.p271l.C8269o1;
import p081h.p203i.p204a.p224e.p259j.p271l.C8386u6;
import p081h.p203i.p325c.p373y.p374a.C10009a;
/* renamed from: h.i.c.y.a.b.a.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/y/a/b/a/b.class */
public final class C10012b implements AbstractC10039v {

    /* renamed from: d */
    public static final C6999k f22644d = new C6999k("AutoMLModelFileManager", "");

    /* renamed from: a */
    public final C8386u6 f22645a;

    /* renamed from: b */
    public final String f22646b;

    /* renamed from: c */
    public final C10038u f22647c;

    public C10012b(@NonNull C8386u6 u6Var, @NonNull String str) {
        this.f22645a = u6Var;
        this.f22646b = str;
        this.f22647c = new C10038u(u6Var);
    }

    /* renamed from: a */
    public static File m13629a(@NonNull C8386u6 u6Var, @NonNull String str) throws C10009a {
        File d = new C10038u(u6Var).m13548d(str, EnumC10040w.AUTOML);
        if (!d.exists() || !d.isFile() || d.delete()) {
            if (!d.exists()) {
                C6999k kVar = f22644d;
                String valueOf = String.valueOf(d.getAbsolutePath());
                kVar.m21339a("AutoMLModelFileManager", valueOf.length() != 0 ? "Temp labels folder does not exist, creating one: ".concat(valueOf) : new String("Temp labels folder does not exist, creating one: "));
                if (!d.mkdirs()) {
                    throw new C10009a("Failed to create a directory to hold the AutoML model's labels file.", 13);
                }
            }
            return new File(d, "labels.txt");
        }
        String valueOf2 = String.valueOf(d.getAbsolutePath());
        throw new C10009a(valueOf2.length() != 0 ? "Failed to delete the temp labels file: ".concat(valueOf2) : new String("Failed to delete the temp labels file: "), 13);
    }

    /* renamed from: a */
    public static void m13628a(@NonNull C8386u6 u6Var, @NonNull String str, @NonNull final List<String> list) throws C10009a {
        try {
            m13627a(m13629a(u6Var, str), new AbstractC10034q(list) { // from class: h.i.c.y.a.b.a.n

                /* renamed from: a */
                public final List f22701a;

                {
                    this.f22701a = list;
                }

                @Override // p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10034q
                /* renamed from: a */
                public final void mo13560a(BufferedWriter bufferedWriter) {
                    C10012b.m13625a(this.f22701a, bufferedWriter);
                }
            });
        } catch (IOException e) {
            String valueOf = String.valueOf(str);
            throw new C10009a(valueOf.length() != 0 ? "Failed to write labels file for the AutoML model: ".concat(valueOf) : new String("Failed to write labels file for the AutoML model: "), 13, e);
        }
    }

    /* renamed from: a */
    public static void m13627a(File file, AbstractC10034q qVar) throws IOException {
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(file), Charset.forName("UTF-8")));
        try {
            qVar.mo13560a(bufferedWriter);
            bufferedWriter.close();
        } catch (Throwable th) {
            try {
                bufferedWriter.close();
            } catch (Throwable th2) {
                C8269o1.m18249a(th, th2);
            }
            throw th;
        }
    }

    /* renamed from: a */
    public static final /* synthetic */ void m13625a(List list, BufferedWriter bufferedWriter) throws IOException {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            bufferedWriter.write((String) it.next());
            bufferedWriter.newLine();
        }
    }

    @Override // p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10039v
    @Nullable
    /* renamed from: a */
    public final File mo13547a(File file) throws C10009a {
        File c = this.f22647c.m13549c(this.f22646b, EnumC10040w.AUTOML);
        File file2 = new File(new File(c, String.valueOf(C10038u.m13552b(c) + 1)), "model.tflite");
        File parentFile = file2.getParentFile();
        if (!parentFile.exists()) {
            parentFile.mkdirs();
        }
        File a = m13629a(this.f22645a, this.f22646b);
        File file3 = new File(parentFile, "labels.txt");
        if (!file.renameTo(file2) || !a.renameTo(file3)) {
            f22644d.m21339a("AutoMLModelFileManager", "Rename to serving model failed, remove the temp file.");
            if (!file.delete()) {
                C6999k kVar = f22644d;
                String valueOf = String.valueOf(file.getAbsolutePath());
                kVar.m21339a("AutoMLModelFileManager", valueOf.length() != 0 ? "Failed to delete the temp model file: ".concat(valueOf) : new String("Failed to delete the temp model file: "));
            }
            if (a.delete()) {
                return null;
            }
            C6999k kVar2 = f22644d;
            String valueOf2 = String.valueOf(a.getAbsolutePath());
            kVar2.m21339a("AutoMLModelFileManager", valueOf2.length() != 0 ? "Failed to delete the temp labels file: ".concat(valueOf2) : new String("Failed to delete the temp labels file: "));
            return null;
        }
        f22644d.m21339a("AutoMLModelFileManager", "Rename to serving model successfully");
        file2.setExecutable(false);
        file2.setWritable(false);
        file3.setExecutable(false);
        file3.setWritable(false);
        File file4 = new File(parentFile, "manifest.json");
        final String format = String.format("{\n\t\"modelType\": \"%s\",\n\t\"modelFile\": \"%s\",\n\t\"labelsFile\": \"%s\"\n}", "IMAGE_LABELING", "model.tflite", "labels.txt");
        try {
            m13627a(file4, new AbstractC10034q(format) { // from class: h.i.c.y.a.b.a.o

                /* renamed from: a */
                public final String f22702a;

                {
                    this.f22702a = format;
                }

                @Override // p081h.p203i.p325c.p373y.p374a.p375b.p376a.AbstractC10034q
                /* renamed from: a */
                public final void mo13560a(BufferedWriter bufferedWriter) {
                    bufferedWriter.write(this.f22702a);
                }
            });
            return file2.getParentFile();
        } catch (IOException e) {
            String valueOf3 = String.valueOf(this.f22646b);
            throw new C10009a(valueOf3.length() != 0 ? "Failed to write manifest json for the AutoML model: ".concat(valueOf3) : new String("Failed to write manifest json for the AutoML model: "), 13, e);
        }
    }
}
