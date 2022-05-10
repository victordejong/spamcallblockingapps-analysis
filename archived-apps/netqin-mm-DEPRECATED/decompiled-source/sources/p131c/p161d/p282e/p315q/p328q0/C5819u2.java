package p131c.p161d.p282e.p315q.p328q0;

import android.app.Application;
import com.google.protobuf.InvalidProtocolBufferException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import p131c.p161d.p367h.AbstractC6275a;
import p131c.p161d.p367h.AbstractC6376v0;
import p530d.p541c.AbstractC9637a;
import p530d.p541c.AbstractC9833i;
/* renamed from: c.d.e.q.q0.u2 */
/* loaded from: classes2-dex2jar.jar:c/d/e/q/q0/u2.class */
public class C5819u2 {

    /* renamed from: a */
    public final Application f19084a;

    /* renamed from: b */
    public final String f19085b;

    public C5819u2(Application application, String str) {
        this.f19084a = application;
        this.f19085b = str;
    }

    /* renamed from: a */
    public static /* synthetic */ AbstractC6275a m22970a(C5819u2 u2Var, AbstractC6376v0 v0Var) throws Exception {
        synchronized (u2Var) {
            try {
                FileInputStream openFileInput = u2Var.f19084a.openFileInput(u2Var.f19085b);
                try {
                    AbstractC6275a aVar = (AbstractC6275a) v0Var.mo21028a(openFileInput);
                    if (openFileInput != null) {
                        openFileInput.close();
                    }
                    return aVar;
                } catch (Throwable th) {
                    if (openFileInput != null) {
                        try {
                            openFileInput.close();
                        } catch (Throwable th2) {
                        }
                    }
                    throw th;
                }
            } catch (InvalidProtocolBufferException | FileNotFoundException e) {
                C5694l2.m23214c("Recoverable exception while reading cache: " + e.getMessage());
                return null;
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22971a(C5819u2 u2Var, AbstractC6275a aVar) throws Exception {
        synchronized (u2Var) {
            FileOutputStream openFileOutput = u2Var.f19084a.openFileOutput(u2Var.f19085b, 0);
            openFileOutput.write(aVar.mo21180c());
            if (openFileOutput != null) {
                openFileOutput.close();
            }
        }
        return aVar;
    }

    /* renamed from: a */
    public AbstractC9637a m22969a(AbstractC6275a aVar) {
        return AbstractC9637a.m2111a(CallableC5739s2.m23106a(this, aVar));
    }

    /* renamed from: a */
    public <T extends AbstractC6275a> AbstractC9833i<T> m22968a(AbstractC6376v0<T> v0Var) {
        return AbstractC9833i.m1893a(CallableC5813t2.m22977a(this, v0Var));
    }
}
