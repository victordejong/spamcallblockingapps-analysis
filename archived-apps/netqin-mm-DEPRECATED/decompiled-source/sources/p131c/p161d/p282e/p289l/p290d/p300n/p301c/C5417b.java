package p131c.p161d.p282e.p289l.p290d.p300n.p301c;

import com.google.firebase.crashlytics.internal.report.model.Report;
import java.io.File;
import java.util.Map;
import p131c.p161d.p282e.p289l.p290d.C5192b;
/* renamed from: c.d.e.l.d.n.c.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/n/c/b.class */
public class C5417b implements Report {

    /* renamed from: a */
    public final File f18358a;

    public C5417b(File file) {
        this.f18358a = file;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: a */
    public Map<String, String> mo7365a() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: b */
    public String mo7364b() {
        return this.f18358a.getName();
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: c */
    public File mo7363c() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: d */
    public File[] mo7362d() {
        return this.f18358a.listFiles();
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    /* renamed from: e */
    public String mo7361e() {
        return null;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public Report.Type getType() {
        return Report.Type.NATIVE;
    }

    @Override // com.google.firebase.crashlytics.internal.report.model.Report
    public void remove() {
        File[] d;
        for (File file : mo7362d()) {
            C5192b.m24319a().m24317a("Removing native report file at " + file.getPath());
            file.delete();
        }
        C5192b.m24319a().m24317a("Removing native report directory at " + this.f18358a);
        this.f18358a.delete();
    }
}
