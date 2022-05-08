package com.asus.toolpanel;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import com.android.contacts.simcardmanage.b;
import com.android.contacts.util.CompatUtils;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.TelecomUtil;
import com.asus.blocklist.a;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/asus/toolpanel/c.class */
public final class c extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    b f3116a;

    /* renamed from: b  reason: collision with root package name */
    AutoFitHeightGridView f3117b;

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2131427674, viewGroup, false);
        this.f3117b = (AutoFitHeightGridView) inflate.findViewById(2131296882);
        this.f3116a = new b(getActivity(), getResources());
        return inflate;
    }

    @Override // android.app.Fragment
    public final void onStart() {
        super.onStart();
        b bVar = this.f3116a;
        if (bVar.d == null) {
            bVar.d = new ArrayList<>();
        } else {
            bVar.d.clear();
        }
        bVar.d.add(0);
        if (PhoneCapabilityTester.isPhone(bVar.f3110a)) {
            bVar.d.add(1);
            if (b.a(bVar.f3110a)) {
                if (PhoneCapabilityTester.supportMultiSIMSettints(bVar.f3110a) && PhoneCapabilityTester.isInOwnerMode(bVar.f3110a) && bVar.f3110a.getPackageManager().queryIntentActivities(new Intent("com.android.phone.action.AsusDualTabRingtoneActivity"), 65536).size() > 0) {
                    bVar.d.add(2);
                    bVar.f = bVar.h;
                }
            } else if (bVar.f3110a.getPackageManager().queryIntentActivities(new Intent("android.intent.action.RINGTONE_PICKER"), 65536).size() > 0) {
                bVar.d.add(2);
                bVar.f = bVar.g;
            }
        }
        if (PhoneCapabilityTester.isPhone(bVar.f3110a) && PhoneCapabilityTester.IsAsusDevice() && com.asus.privatecontacts.b.b.c(bVar.f3110a)) {
            bVar.d.add(3);
        }
        if (a.a(bVar.f3110a)) {
            bVar.d.add(4);
        }
        if (!CompatUtils.isNCompatible()) {
            bVar.d.add(5);
        } else if (com.asus.a.a.c(bVar.f3110a) || TelecomUtil.isDefaultDialer(bVar.f3110a)) {
            bVar.d.add(5);
        }
        if (PhoneCapabilityTester.isPhone(bVar.f3110a)) {
            bVar.d.add(6);
        }
        if (PhoneCapabilityTester.supportAsusRecording(bVar.f3110a) && PhoneCapabilityTester.isPhone(bVar.f3110a)) {
            bVar.d.add(7);
        }
        if (PhoneCapabilityTester.supportMultiSIMSettints(bVar.f3110a) && b.a(bVar.f3110a) && PhoneCapabilityTester.isInOwnerMode(bVar.f3110a)) {
            bVar.d.add(8);
        }
        if (!PhoneCapabilityTester.isVerizon()) {
            bVar.d.add(9);
        }
        if (!PhoneCapabilityTester.isVerizon()) {
            bVar.d.add(10);
        }
        if (!PhoneCapabilityTester.isVerizon()) {
            bVar.d.add(11);
        }
        if (!PhoneCapabilityTester.isVerizon()) {
            bVar.d.add(12);
        }
        if (this.f3117b != null) {
            this.f3117b.setAdapter((ListAdapter) this.f3116a);
        }
        if (CompatUtils.isNCompatible()) {
            this.f3117b.setColumnWidth((Math.round(getResources().getDisplayMetrics().widthPixels) - (((int) getResources().getDimension(2131100327)) * 4)) / getResources().getInteger(2131361828));
        }
    }
}
