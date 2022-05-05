package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
/* renamed from: com.google.android.gms.common.server.response.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/b.class */
final class C1682b implements FastParser.AbstractC1680a<Integer> {
    @Override // com.google.android.gms.common.server.response.FastParser.AbstractC1680a
    /* renamed from: a */
    public final /* synthetic */ Integer mo5575a(FastParser fastParser, BufferedReader bufferedReader) {
        int d;
        d = fastParser.m5610d(bufferedReader);
        return Integer.valueOf(d);
    }
}
