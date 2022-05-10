package p131c.p157c.p158a.p159a.p160a;

import android.app.Dialog;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import java.util.Arrays;
import p012b.p042i.p044i.C0871b;
import p012b.p063m.p064a.AbstractC1059g;
import p012b.p063m.p064a.AbstractC1079j;
import p131c.p431l.p432a.p463j.p464a.C6833a;
import p131c.p431l.p432a.p468n.C6845f;
import p573f.AbstractC9907c;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10035p;
import p573f.p590w.p592c.C10059q;
/* renamed from: c.c.a.a.a.a */
/* loaded from: classes-dex2jar.jar:c/c/a/a/a/a.class */
public final class C2454a {
    /* renamed from: a */
    public static final C6833a m29728a(FragmentActivity fragmentActivity) {
        AbstractC1059g g = fragmentActivity.m38334g();
        C10059q.m1642a((Object) g, "supportFragmentManager");
        Fragment a = g.mo34849a("tag.AssistFragment");
        Fragment fragment = a;
        if (!(a instanceof C6833a)) {
            fragment = null;
        }
        C6833a aVar = (C6833a) fragment;
        if (aVar == null) {
            aVar = new C6833a();
            AbstractC1079j a2 = g.mo34878a();
            a2.m34746a(aVar, "tag.AssistFragment");
            a2.mo34742c();
        }
        return aVar;
    }

    /* renamed from: a */
    public static final void m29727a(FragmentActivity fragmentActivity, String[] strArr, AbstractC10035p<? super Integer, ? super Boolean, C9946p> pVar) {
        C10059q.m1637b(fragmentActivity, "$this$withPermissions");
        C10059q.m1637b(strArr, "permissions");
        if (!m29723a((String[]) Arrays.copyOf(strArr, strArr.length))) {
            m29728a(fragmentActivity).m19629a((AbstractC9907c<? extends Dialog>) null, strArr, pVar);
        } else if (pVar != null) {
            pVar.invoke(0, false);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m29726a(FragmentActivity fragmentActivity, String[] strArr, AbstractC10035p pVar, int i, Object obj) {
        if ((i & 2) != 0) {
            pVar = null;
        }
        m29727a(fragmentActivity, strArr, pVar);
    }

    /* renamed from: a */
    public static final boolean m29729a(Fragment fragment, String... strArr) {
        C10059q.m1637b(fragment, "$this$shouldShowPermissionRationale");
        C10059q.m1637b(strArr, "permissions");
        int length = strArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            } else if (fragment.m38404b(strArr[i])) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static final boolean m29725a(String str) {
        C10059q.m1637b(str, "permission");
        return C0871b.m35681b(C6845f.m19588a(), str) == 0;
    }

    /* renamed from: a */
    public static final boolean m29724a(int... iArr) {
        C10059q.m1637b(iArr, "grantResults");
        int length = iArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= length) {
                z = true;
                break;
            }
            if (iArr[i] == 0) {
                z2 = false;
            }
            if (z2) {
                break;
            }
            i++;
        }
        return z;
    }

    /* renamed from: a */
    public static final boolean m29723a(String... strArr) {
        C10059q.m1637b(strArr, "permissions");
        int length = strArr.length;
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = true;
                break;
            } else if (true ^ m29725a(strArr[i])) {
                break;
            } else {
                i++;
            }
        }
        return z;
    }
}
