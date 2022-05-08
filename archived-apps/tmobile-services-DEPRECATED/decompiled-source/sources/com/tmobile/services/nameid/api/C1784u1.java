package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
/* renamed from: com.tmobile.services.nameid.api.u1 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/u1.class */
public final /* synthetic */ class C1784u1 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1784u1 f13434f = new C1784u1();

    private /* synthetic */ C1784u1() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        LicenseResponseItem licenseResponseItem = (LicenseResponseItem) obj;
        LogUtil.m5632o("MetroApiWrapper#", "Got updated user");
    }
}
