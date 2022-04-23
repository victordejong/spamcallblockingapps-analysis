package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
/* renamed from: com.google.android.gms.common.server.response.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/f.class */
final class C1686f implements FastParser.AbstractC1680a<Boolean> {
    @Override // com.google.android.gms.common.server.response.FastParser.AbstractC1680a
    /* renamed from: a */
    public final /* synthetic */ Boolean mo5575a(FastParser fastParser, BufferedReader bufferedReader) {
        boolean a;
        a = fastParser.m5620a(bufferedReader, false);
        return Boolean.valueOf(a);
    }
}
