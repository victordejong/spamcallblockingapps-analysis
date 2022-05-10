package com.library.p518ad.strategy.request.admob;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.library.p518ad.core.AdInfo;
import p131c.p396i.p397a.p398e.AbstractC6515g;
import p131c.p396i.p397a.p406i.p408e.p409a.C6576a;
/* renamed from: com.library.ad.strategy.request.admob.AdmobEventReceiver */
/* loaded from: classes2-dex2jar.jar:com/library/ad/strategy/request/admob/AdmobEventReceiver.class */
public class AdmobEventReceiver extends BroadcastReceiver {

    /* renamed from: a */
    public final String f33170a;

    /* renamed from: b */
    public AbstractC6515g f33171b;

    public AdmobEventReceiver(String str, AbstractC6515g gVar) {
        this.f33170a = str;
        this.f33171b = gVar;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof AdmobEventReceiver) && toString().equals(obj.toString());
    }

    public int hashCode() {
        return toString().hashCode();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        AdInfo adInfo = (AdInfo) intent.getSerializableExtra("content");
        if (adInfo != null && this.f33170a.equals(adInfo.getPlaceId())) {
            String str = "Admob行为:" + action;
            String str2 = "adInfo:" + adInfo;
            if ("action_click".equals(action)) {
                AbstractC6515g gVar = this.f33171b;
                if (gVar != null) {
                    gVar.mo3232a(adInfo, 0);
                }
            } else if ("action_show".equals(action)) {
                AbstractC6515g gVar2 = this.f33171b;
                if (gVar2 != null) {
                    gVar2.mo3230d(adInfo, 0);
                }
            } else if ("action_close".equals(action)) {
                C6576a.m20460a(this);
                AbstractC6515g gVar3 = this.f33171b;
                if (gVar3 != null) {
                    gVar3.mo3231b(adInfo, 0);
                }
            }
        }
    }

    public String toString() {
        return "AdmobEventReceiver" + this.f33170a;
    }
}
