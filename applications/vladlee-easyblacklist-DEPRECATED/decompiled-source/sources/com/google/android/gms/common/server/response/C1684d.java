package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
/* renamed from: com.google.android.gms.common.server.response.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/d.class */
final class C1684d implements FastParser.AbstractC1680a<Float> {
    @Override // com.google.android.gms.common.server.response.FastParser.AbstractC1680a
    /* renamed from: a */
    public final /* synthetic */ Float mo5575a(FastParser fastParser, BufferedReader bufferedReader) {
        float g;
        g = fastParser.m5604g(bufferedReader);
        return Float.valueOf(g);
    }
}
