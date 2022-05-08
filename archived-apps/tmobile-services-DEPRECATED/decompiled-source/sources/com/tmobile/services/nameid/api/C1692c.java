package com.tmobile.services.nameid.api;

import com.tmobile.services.nameid.utility.LogUtil;
import io.reactivex.functions.Consumer;
import java.util.List;
/* renamed from: com.tmobile.services.nameid.api.c */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/c.class */
public final /* synthetic */ class C1692c implements Consumer {

    /* renamed from: f */
    public static final /* synthetic */ C1692c f13274f = new C1692c();

    private /* synthetic */ C1692c() {
    }

    @Override // io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        List list = (List) obj;
        LogUtil.m5632o("ApiUtils#tryGetUserPreferences", "Got settings for caller");
    }
}
