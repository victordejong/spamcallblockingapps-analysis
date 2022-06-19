package p193e.p194a.p679d5;

import android.os.Bundle;
import com.truecaller.startup_dialogs.StartupDialogType;
import n3.r.a.k;
import s1.z.c.l;
/* renamed from: e.a.d5.f */
/* loaded from: classes12-dex2jar.jar:e/a/d5/f.class */
public final class C12616f {
    /* renamed from: a */
    public static final StartupDialogType m22817a(k kVar) {
        StartupDialogType startupDialogType;
        StartupDialogType[] values = StartupDialogType.values();
        int i = 0;
        while (true) {
            startupDialogType = null;
            if (i >= 24) {
                break;
            }
            StartupDialogType startupDialogType2 = values[i];
            String name = startupDialogType2.name();
            Bundle arguments = kVar.getArguments();
            String str = null;
            if (arguments != null) {
                str = arguments.getString("StartupDialogType");
            }
            if (l.a(name, str)) {
                startupDialogType = startupDialogType2;
                break;
            }
            i++;
        }
        return startupDialogType;
    }
}
