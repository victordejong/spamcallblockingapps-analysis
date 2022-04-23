package com.hiya.stingray.p000ui.login;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import androidx.fragment.app.Fragment;
import com.google.common.base.m;
import com.google.common.collect.Lists;
import com.hiya.stingray.manager.e1;
import com.hiya.stingray.util.AbstractC0175n;
import java.util.ArrayList;
import r.a.a;
/* renamed from: com.hiya.stingray.ui.login.o */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/o.class */
public class C0064o {

    /* renamed from: com.hiya.stingray.ui.login.o$a */
    /* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/o$a.class */
    public interface AbstractC0065a {
        /* renamed from: a */
        void m1212a(boolean z);

        void onSuccess();
    }

    public C0064o(e1 e1Var) {
    }

    /* renamed from: f */
    private void m1214f(Fragment fragment, Activity activity, int i, String[] strArr, int[] iArr, AbstractC0065a aVar) {
        boolean z = false;
        m.d((fragment == null && activity == null) ? false : true);
        if (strArr.length < 1) {
            a.f(new IllegalStateException(), "No permissions have been requested", new Object[0]);
            return;
        }
        z = true;
        boolean z2 = false;
        for (int i2 = 0; i2 < strArr.length; i2++) {
            String str = strArr[i2];
            if (iArr[i2] == -1) {
                z2 = !(fragment != null ? fragment.shouldShowRequestPermissionRationale(str) : androidx.core.app.a.q(activity, str));
                if (z2) {
                    break;
                }
                z = false;
            }
        }
        if (z) {
            aVar.onSuccess();
        } else {
            aVar.m1212a(z2);
        }
    }

    /* renamed from: a */
    public boolean m1219a(Context context, String[] strArr) {
        for (String str : strArr) {
            if (androidx.core.content.a.a(context, str) != 0) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    public boolean m1218b(Context context) {
        return m1219a(context, m1217c());
    }

    /* renamed from: c */
    public String[] m1217c() {
        return Build.VERSION.SDK_INT >= 28 ? AbstractC0175n.f323b : AbstractC0175n.f322a;
    }

    /* renamed from: d */
    public void m1216d(Activity activity, int i, String[] strArr, int[] iArr, AbstractC0065a aVar) {
        m1214f(null, activity, i, strArr, iArr, aVar);
    }

    /* renamed from: e */
    public void m1215e(Fragment fragment, int i, String[] strArr, int[] iArr, AbstractC0065a aVar) {
        m1214f(fragment, null, i, strArr, iArr, aVar);
    }

    /* renamed from: g */
    public boolean m1213g(Activity activity, Fragment fragment, String[] strArr, int i) {
        ArrayList g = Lists.g();
        for (String str : strArr) {
            if (androidx.core.content.a.a(activity, str) != 0) {
                g.add(str);
            }
        }
        if (g.size() <= 0) {
            return false;
        }
        if (fragment != null) {
            fragment.requestPermissions(strArr, i);
            return true;
        }
        androidx.core.app.a.p(activity, strArr, i);
        return true;
    }
}
