package p131c.p431l.p432a.p461i.p462e;

import android.os.Handler;
import com.netqin.p525cm.main.p529ui.NqApplication;
import java.util.Vector;
/* renamed from: c.l.a.i.e.d */
/* loaded from: classes2-dex2jar.jar:c/l/a/i/e/d.class */
public class C6830d {

    /* renamed from: a */
    public Vector<Handler> f21023a = new Vector<>();

    /* renamed from: a */
    public static boolean m19633a(String str) {
        return NqApplication.m3303b().getDatabasePath(str).exists();
    }

    /* renamed from: a */
    public void m19635a() {
        for (int i = 0; i < this.f21023a.size(); i++) {
            Handler elementAt = this.f21023a.elementAt(i);
            elementAt.sendMessage(elementAt.obtainMessage(100));
        }
    }

    /* renamed from: a */
    public void m19634a(int i) {
        for (int i2 = 0; i2 < this.f21023a.size(); i2++) {
            Handler elementAt = this.f21023a.elementAt(i2);
            elementAt.sendMessage(elementAt.obtainMessage(100, Integer.valueOf(i)));
        }
    }
}
