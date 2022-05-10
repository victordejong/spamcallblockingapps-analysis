package com.google.android.gms.common.server.response;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.server.response.FastJsonResponse;
import java.util.Stack;
import p131c.p161d.p170b.p224d.p238d.p245e.p246a.C3306a;
import p131c.p161d.p170b.p224d.p238d.p245e.p246a.C3307b;
import p131c.p161d.p170b.p224d.p238d.p245e.p246a.C3308c;
import p131c.p161d.p170b.p224d.p238d.p245e.p246a.C3309d;
import p131c.p161d.p170b.p224d.p238d.p245e.p246a.C3310e;
import p131c.p161d.p170b.p224d.p238d.p245e.p246a.C3311f;
import p131c.p161d.p170b.p224d.p238d.p245e.p246a.C3312g;
import p131c.p161d.p170b.p224d.p238d.p245e.p246a.C3313h;
@ShowFirstParty
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser.class */
public class FastParser<T extends FastJsonResponse> {

    @ShowFirstParty
    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/server/response/FastParser$ParseException.class */
    public static class ParseException extends Exception {
        public ParseException(String str) {
            super(str);
        }

        public ParseException(String str, Throwable th) {
            super(str, th);
        }

        public ParseException(Throwable th) {
            super(th);
        }
    }

    static {
        new C3306a();
        new C3308c();
        new C3307b();
        new C3310e();
        new C3309d();
        new C3312g();
        new C3311f();
        new C3313h();
    }

    public FastParser() {
        new Stack();
    }
}
