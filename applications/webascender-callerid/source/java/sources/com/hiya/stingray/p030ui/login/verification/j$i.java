package com.hiya.stingray.p030ui.login.verification;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.hiya.stingray.ui.common.SinglePanelFragmentActivity;
import com.hiya.stingray.ui.customblock.countrylist.CountryListFragment;
import kotlin.w.c.k;
/* renamed from: com.hiya.stingray.ui.login.verification.j$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/login/verification/j$i.class */
final class j$i implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ j f4809f;

    j$i(j jVar) {
        this.f4809f = jVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Context context = this.f4809f.getContext();
        if (context == null) {
            k.o();
            throw null;
        }
        this.f4809f.startActivityForResult(SinglePanelFragmentActivity.O(context, (Bundle) null, CountryListFragment.class), 8004);
    }
}
