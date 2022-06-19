package com.appsflyer;

import android.content.Context;
import com.appsflyer.oaid.OaidClient;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/appsflyer/OaidClient.class */
class OaidClient {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/appsflyer/OaidClient$Info.class */
    static class Info {

        /* renamed from: id */
        private final String f2941id;
        private final Boolean lat;

        @Deprecated
        public Info(String str, Boolean bool) {
            this.f2941id = str;
            this.lat = bool;
        }

        @Deprecated
        public String getId() {
            return this.f2941id;
        }

        @Deprecated
        public Boolean isLat() {
            return this.lat;
        }
    }

    OaidClient() {
    }

    @Deprecated
    public static Info fetch(Context context) {
        OaidClient.Info fetch = new com.appsflyer.oaid.OaidClient(context).fetch();
        if (fetch != null) {
            return new Info(fetch.getId(), fetch.getLat());
        }
        return null;
    }
}
