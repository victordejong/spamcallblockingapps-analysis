package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.math.BigDecimal;
/* renamed from: com.google.android.gms.common.server.response.g */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/g.class */
final class C1687g implements FastParser.AbstractC1680a<BigDecimal> {
    @Override // com.google.android.gms.common.server.response.FastParser.AbstractC1680a
    /* renamed from: a */
    public final /* synthetic */ BigDecimal mo5575a(FastParser fastParser, BufferedReader bufferedReader) {
        BigDecimal i;
        i = fastParser.m5601i(bufferedReader);
        return i;
    }
}
