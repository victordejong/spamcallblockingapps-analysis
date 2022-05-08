package p081h.p203i.p325c.p337n.p338d.p346l;

import android.content.Context;
import java.io.File;
import p081h.p203i.p325c.p337n.p338d.C9513b;
/* renamed from: h.i.c.n.d.l.i */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/l/i.class */
public class C9777i implements AbstractC9776h {

    /* renamed from: a */
    public final Context f22193a;

    public C9777i(Context context) {
        this.f22193a = context;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p346l.AbstractC9776h
    /* renamed from: a */
    public File mo14293a() {
        return m14292a(new File(this.f22193a.getFilesDir(), ".com.google.firebase.crashlytics"));
    }

    /* renamed from: a */
    public File m14292a(File file) {
        if (file == null) {
            C9513b.m15015a().m15013a("Null File");
            return null;
        } else if (file.exists() || file.mkdirs()) {
            return file;
        } else {
            C9513b.m15015a().m15007d("Couldn't create file");
            return null;
        }
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p346l.AbstractC9776h
    /* renamed from: b */
    public String mo14291b() {
        return new File(this.f22193a.getFilesDir(), ".com.google.firebase.crashlytics").getPath();
    }
}
