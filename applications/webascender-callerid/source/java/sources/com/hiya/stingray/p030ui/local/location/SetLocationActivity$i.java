package com.hiya.stingray.p030ui.local.location;

import android.view.View;
import com.hiya.stingray.p030ui.login.C1726o;
import com.hiya.stingray.util.AbstractC1837n;
/* renamed from: com.hiya.stingray.ui.local.location.SetLocationActivity$i */
/* loaded from: classes2-dex2jar.jar:com/hiya/stingray/ui/local/location/SetLocationActivity$i.class */
final class SetLocationActivity$i implements View.OnClickListener {

    /* renamed from: f */
    final /* synthetic */ SetLocationActivity f4738f;

    SetLocationActivity$i(SetLocationActivity setLocationActivity) {
        this.f4738f = setLocationActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f4738f.Y().m1330a();
        C1726o Z = this.f4738f.Z();
        SetLocationActivity setLocationActivity = this.f4738f;
        String[] strArr = AbstractC1837n.f5005e;
        if (!Z.m1219a(setLocationActivity, strArr)) {
            this.f4738f.Z().m1213g(this.f4738f, null, strArr, 6004);
        } else {
            this.f4738f.a0().t();
        }
    }
}
