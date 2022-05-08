package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
import retrofit2.Response;
/* renamed from: com.tmobile.services.nameid.api.r0 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/r0.class */
public final /* synthetic */ class C1768r0 implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1768r0 f13415f = new C1768r0();

    private /* synthetic */ C1768r0() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        Response response = (Response) obj;
        LogUtil.m5643d("ApiWrapper#", "Updated caller setting");
    }
}
