package com.hiya.stingray.p000ui.local.location;

import android.view.View;
import com.hiya.stingray.p000ui.login.C0064o;
import com.hiya.stingray.util.AbstractC0175n;
/* renamed from: com.hiya.stingray.ui.local.location.SetLocationActivity$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/SetLocationActivity$i.class */
final class SetLocationActivity$i implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SetLocationActivity f59f;

    SetLocationActivity$i(SetLocationActivity setLocationActivity) {
        this.f59f = setLocationActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f59f.Y().m1330a();
        C0064o Z = this.f59f.Z();
        SetLocationActivity setLocationActivity = this.f59f;
        String[] strArr = AbstractC0175n.f326e;
        if (!Z.m1219a(setLocationActivity, strArr)) {
            this.f59f.Z().m1213g(this.f59f, null, strArr, 6004);
        } else {
            this.f59f.a0().t();
        }
    }
}
