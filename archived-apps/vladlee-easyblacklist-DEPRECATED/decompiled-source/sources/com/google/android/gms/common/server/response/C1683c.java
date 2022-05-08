package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
/* renamed from: com.google.android.gms.common.server.response.c */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/c.class */
final class C1683c implements FastParser.AbstractC1680a<Double> {
    @Override // com.google.android.gms.common.server.response.FastParser.AbstractC1680a
    /* renamed from: a */
    public final /* synthetic */ Double mo5575a(FastParser fastParser, BufferedReader bufferedReader) {
        double h;
        h = fastParser.m5602h(bufferedReader);
        return Double.valueOf(h);
    }
}
