package com.appsflyer;

import android.os.Bundle;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFFacebookDeferredDeeplink.class */
final class AFFacebookDeferredDeeplink {

    /* renamed from: com.appsflyer.AFFacebookDeferredDeeplink$5 */
    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFFacebookDeferredDeeplink$5.class */
    static final class C06345 implements InvocationHandler {

        /* renamed from: ǃ */
        private /* synthetic */ Class f2857;

        /* renamed from: ι */
        private /* synthetic */ AppLinkFetchEvents f2858;

        C06345(Class cls, AppLinkFetchEvents appLinkFetchEvents) {
            this.f2857 = cls;
            this.f2858 = appLinkFetchEvents;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String str;
            String str2;
            String str3;
            Bundle bundle;
            if (!method.getName().equals("onDeferredAppLinkDataFetched")) {
                AppLinkFetchEvents appLinkFetchEvents = this.f2858;
                if (appLinkFetchEvents == null) {
                    return null;
                }
                appLinkFetchEvents.onAppLinkFetchFailed("onDeferredAppLinkDataFetched invocation failed");
                return null;
            } else if (objArr[0] == null) {
                AppLinkFetchEvents appLinkFetchEvents2 = this.f2858;
                if (appLinkFetchEvents2 == null) {
                    return null;
                }
                appLinkFetchEvents2.onAppLinkFetchFinished(null, null, null);
                return null;
            } else {
                Bundle bundle2 = (Bundle) Bundle.class.cast(this.f2857.getMethod("getArgumentBundle", new Class[0]).invoke(this.f2857.cast(objArr[0]), new Object[0]));
                if (bundle2 != null) {
                    str = bundle2.getString("com.facebook.platform.APPLINK_NATIVE_URL");
                    str2 = bundle2.getString("target_url");
                    Bundle bundle3 = bundle2.getBundle("extras");
                    str3 = (bundle3 == null || (bundle = bundle3.getBundle("deeplink_context")) == null) ? null : bundle.getString("promo_code");
                } else {
                    str2 = null;
                    str = null;
                    str3 = null;
                }
                AppLinkFetchEvents appLinkFetchEvents3 = this.f2858;
                if (appLinkFetchEvents3 == null) {
                    return null;
                }
                appLinkFetchEvents3.onAppLinkFetchFinished(str, str2, str3);
                return null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents.class */
    public interface AppLinkFetchEvents {
        void onAppLinkFetchFailed(String str);

        void onAppLinkFetchFinished(String str, String str2, String str3);
    }

    AFFacebookDeferredDeeplink() {
    }
}
