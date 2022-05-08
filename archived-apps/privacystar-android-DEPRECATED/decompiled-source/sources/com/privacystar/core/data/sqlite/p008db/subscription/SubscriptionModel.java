package com.privacystar.core.data.sqlite.p008db.subscription;

import android.support.annotation.NonNull;
import android.text.format.DateFormat;
import com.privacystar.core.PSApplication;
import java.util.Date;
/* renamed from: com.privacystar.core.data.sqlite.db.subscription.SubscriptionModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/subscription/SubscriptionModel.class */
public class SubscriptionModel {

    /* renamed from: com.privacystar.core.data.sqlite.db.subscription.SubscriptionModel$Subscription */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/subscription/SubscriptionModel$Subscription.class */
    public static class Subscription {
        public long expireDate;
        public boolean trial;

        public Subscription() {
        }

        public Subscription(boolean z, long j) {
            this.trial = z;
            this.expireDate = j;
        }

        public boolean isActive() {
            return this.expireDate > System.currentTimeMillis();
        }

        @NonNull
        public String toString() {
            return "Subscription: [trial:" + this.trial + "], [expireDate:" + this.expireDate + "], [readable:" + DateFormat.getDateFormat(PSApplication.context()).format(new Date(this.expireDate / 1000)) + "]";
        }
    }
}
