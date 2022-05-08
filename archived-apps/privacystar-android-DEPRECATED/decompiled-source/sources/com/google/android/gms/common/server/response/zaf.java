package com.google.android.gms.common.server.response;

import com.google.android.gms.common.server.response.FastParser;
import java.io.BufferedReader;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/zaf.class */
final class zaf implements FastParser.zaa<String> {
    @Override // com.google.android.gms.common.server.response.FastParser.zaa
    public final /* synthetic */ String zah(FastParser fastParser, BufferedReader bufferedReader) throws FastParser.ParseException, IOException {
        String zac;
        zac = fastParser.zac(bufferedReader);
        return zac;
    }
}
