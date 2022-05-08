package com.privacystar.core.util;

import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.service.PreferenceUtil;
import java.util.Date;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/SubscriptionUtil.class */
public class SubscriptionUtil {
    public static Date getMrcDate(Subscription subscription) {
        Date date = new Date(0L);
        if (subscription != null) {
            Timber.m28v("Determining MRC date: Subscription not null", new Object[0]);
            Date expiration = subscription.getExpiration();
            date = expiration;
            if (expiration.getTime() > 0) {
                Timber.m28v("Determining MRC date: subscription expiration exists.", new Object[0]);
                return expiration;
            }
        }
        long mRCDate = PreferenceUtil.getMRCDate();
        if (mRCDate > 0) {
            Timber.m28v("Determining MRC date: cached MRC exists.", new Object[0]);
            date = new Date(mRCDate);
        }
        Timber.m28v("Determining MRC date: could not determine, returning default.", new Object[0]);
        return date;
    }
}
