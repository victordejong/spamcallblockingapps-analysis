package com.vladlee.easyblacklist;

import android.content.Context;
import android.os.Build;
import androidx.appcompat.app.DialogInterfaceC0308m;
import androidx.fragment.app.FragmentActivity;
import androidx.preference.Preference;
/* renamed from: com.vladlee.easyblacklist.fi */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fi.class */
final class C3424fi implements Preference.AbstractC0991b {

    /* renamed from: a */
    final /* synthetic */ C3413ey f19595a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3424fi(C3413ey eyVar) {
        this.f19595a = eyVar;
    }

    @Override // androidx.preference.Preference.AbstractC0991b
    /* renamed from: a */
    public final boolean mo53a(Object obj) {
        FragmentActivity activity = this.f19595a.getActivity();
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (booleanValue) {
            C3413ey eyVar = this.f19595a;
            boolean z = !C3369do.m127a((Context) eyVar.getActivity());
            if (Build.VERSION.SDK_INT >= 19 && z) {
                FragmentActivity activity2 = eyVar.getActivity();
                DialogInterfaceC0308m.C0309a aVar = new DialogInterfaceC0308m.C0309a(activity2);
                aVar.m9804a(2131624099);
                aVar.m9791b(2131624098);
                aVar.m9796a(activity2.getResources().getString(2131624101), new DialogInterface$OnClickListenerC3370dp(eyVar));
                aVar.m9787b(activity2.getResources().getString(2131624009), new DialogInterface$OnClickListenerC3371dq(eyVar));
                aVar.m9792b().show();
            }
            if (z) {
                return false;
            }
        }
        if (!booleanValue || CheckPermissionsActivity.m346c(activity)) {
            if (!booleanValue) {
                C3392ee.m80a((Context) activity, "pref_block_sms_option", false);
            }
            C3392ee.m74b(activity, "pref_block_sms_option", booleanValue);
            return true;
        }
        CheckPermissionsActivity.m354a(activity, this.f19595a);
        return false;
    }
}
