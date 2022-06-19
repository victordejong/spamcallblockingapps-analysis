package com.hiya.stingray.p030ui.local.settings;

import android.view.View;
import android.widget.TextView;
import com.hiya.stingray.o;
import java.util.ArrayList;
import java.util.Objects;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.local.settings.CallSettingsFragment$k */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/settings/CallSettingsFragment$k.class */
final class CallSettingsFragment$k implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ CallSettingsFragment f4770f;

    CallSettingsFragment$k(CallSettingsFragment callSettingsFragment) {
        this.f4770f = callSettingsFragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        CallSettingsFragment callSettingsFragment = this.f4770f;
        TextView textView = (TextView) callSettingsFragment.f1(o.S);
        k.c(textView, "callerIdStyleDesc");
        boolean a = this.f4770f.p1().a();
        ArrayList arrayList = new ArrayList(2);
        for (int i = 0; i < 2; i++) {
            arrayList.add(this.f4770f.getString(new Integer[]{2131820665, 2131820666}[i].intValue()));
        }
        Object[] array = arrayList.toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        CallSettingsFragment.k1(callSettingsFragment, 2131820664, textView, a, (String[]) array, false, (String) null, new a(this));
    }
}
