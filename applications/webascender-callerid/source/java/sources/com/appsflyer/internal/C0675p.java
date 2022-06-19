package com.appsflyer.internal;

import com.appsflyer.AFLogger;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* renamed from: com.appsflyer.internal.p */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/p.class */
public final class C0675p {

    /* renamed from: com.appsflyer.internal.p$2 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/p$2.class */
    public static final class C06762 implements InvocationHandler {

        /* renamed from: ɩ */
        private /* synthetic */ AbstractC0677d f3064;

        public C06762(AbstractC0677d abstractC0677d) {
            this.f3064 = abstractC0677d;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getName().equals("onLvlResult")) {
                String str = objArr[0] != null ? (String) objArr[0] : null;
                String str2 = objArr[1] != null ? (String) objArr[1] : null;
                AbstractC0677d abstractC0677d = this.f3064;
                if (abstractC0677d == null) {
                    AFLogger.afDebugLog("onLvlResult invocation succeeded, but listener is null");
                    return null;
                } else if (str != null && str2 != null) {
                    abstractC0677d.m4035(str, str2);
                    return null;
                } else if (str2 == null) {
                    abstractC0677d.m4034("onLvlResult with error", new Exception("AFLVL Invalid signature"));
                    return null;
                } else {
                    abstractC0677d.m4034("onLvlResult with error", new Exception("AFLVL Invalid signedData"));
                    return null;
                }
            } else if (!method.getName().equals("onLvlFailure")) {
                AbstractC0677d abstractC0677d2 = this.f3064;
                if (abstractC0677d2 == null) {
                    return null;
                }
                abstractC0677d2.m4034("lvlInvocation failed", new Exception("com.appsflyer.lvl.AppsFlyerLVL$resultListener invocation failed"));
                return null;
            } else {
                AbstractC0677d abstractC0677d3 = this.f3064;
                if (abstractC0677d3 == null) {
                    AFLogger.afDebugLog("onLvlFailure: listener is null");
                    return null;
                } else if (objArr[0] != null) {
                    abstractC0677d3.m4034("onLvlFailure with exception", (Exception) objArr[0]);
                    return null;
                } else {
                    abstractC0677d3.m4034("onLvlFailure", new Exception("unknown"));
                    return null;
                }
            }
        }
    }

    /* renamed from: com.appsflyer.internal.p$d */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/internal/p$d.class */
    public interface AbstractC0677d {
        /* renamed from: ǃ */
        void m4035(String str, String str2);

        /* renamed from: Ι */
        void m4034(String str, Exception exc);
    }

    C0675p() {
    }
}
