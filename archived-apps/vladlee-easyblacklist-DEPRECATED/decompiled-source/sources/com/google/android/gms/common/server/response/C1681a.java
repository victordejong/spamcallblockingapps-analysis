package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
/* renamed from: com.google.android.gms.common.server.response.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/a.class */
final class C1681a implements FastParser.AbstractC1680a<Long> {
    @Override // com.google.android.gms.common.server.response.FastParser.AbstractC1680a
    /* renamed from: a */
    public final /* synthetic */ Long mo5575a(FastParser fastParser, BufferedReader bufferedReader) {
        long e;
        e = fastParser.m5608e(bufferedReader);
        return Long.valueOf(e);
    }
}
