package com.privacystar.core.service.jobs;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.Params;
import com.birbit.android.jobqueue.RetryConstraint;
import com.privacystar.core.data.model.PlayStorePurchase;
import com.privacystar.core.data.model.helper.PlayStorePurchaseRealm;
import com.privacystar.core.data.model.helper.PlayStoreReceiptRealm;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.network.handler.CheckCacheHandler;
import com.privacystar.core.service.network.handler.GPSSubscriptionCancelHandler;
import com.privacystar.core.util.Text;
import hugo.weaving.DebugLog;
import io.realm.Realm;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/GooglePlayCancelJob.class */
public class GooglePlayCancelJob extends Job {
    public GooglePlayCancelJob() {
        super(new Params(500).requireNetwork().singleInstanceBy(JobConstants.GROUP_GOOGLE_PLAY_CANCEL));
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onAdded() {
        Timber.m37d("Processed an instance of: GPS Cancel Subscription, added to queue.", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.birbit.android.jobqueue.Job
    public void onCancel(int i, @Nullable Throwable th) {
        String str;
        Timber.m37d("Job instance was cancelled of type: GPS Cancel Subscription", new Object[0]);
        switch (i) {
            case 1:
                str = "job queued while another instance of same type was queued and set as unique";
                break;
            case 2:
                str = "retry limit reached";
                break;
            case 3:
                if (th == null) {
                    str = "job manually cancelled";
                    break;
                } else {
                    str = "job cancelled while running due to an exception";
                    break;
                }
            case 4:
            default:
                str = "job was canceled for an unknown reason";
                break;
            case 5:
                str = "job was canceled due to an exception when starting to run";
                break;
            case 6:
                str = "job queued while another instance of same type was running and set as unique";
                break;
            case 7:
                str = "deadline to run reached";
                break;
        }
        Timber.m37d("Cancel Reason: %s.", str);
    }

    @Override // com.birbit.android.jobqueue.Job
    @DebugLog
    public void onRun() throws Throwable {
        if (!PreferenceUtil.getEulaAccepted()) {
            Timber.m37d("Network job tried to run before EULA was accepted.", new Object[0]);
            return;
        }
        if (PreferenceUtil.getGoogleApiAccessTokenExpiration() < System.currentTimeMillis()) {
            CheckCacheHandler.getInstance().generateAndSendRequest();
        }
        String googleApiAccessToken = PreferenceUtil.getGoogleApiAccessToken();
        if (Text.isBlank(googleApiAccessToken)) {
            Timber.m25w("Failed to retrieve access token.", new Object[0]);
            return;
        }
        Realm defaultInstance = Realm.getDefaultInstance();
        try {
            for (PlayStorePurchase playStorePurchase : PlayStorePurchaseRealm.getSortedPurchases(defaultInstance)) {
                GPSSubscriptionCancelHandler.getInstance().generateAndSendRequest(playStorePurchase.getProductId(), playStorePurchase.getPurchaseToken(), googleApiAccessToken);
            }
            PlayStoreReceiptRealm.clearPurchaseHistory(defaultInstance);
            if (defaultInstance != null) {
                defaultInstance.close();
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (defaultInstance != null) {
                    if (th != null) {
                        try {
                            defaultInstance.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    } else {
                        defaultInstance.close();
                    }
                }
                throw th2;
            }
        }
    }

    @Override // com.birbit.android.jobqueue.Job
    protected RetryConstraint shouldReRunOnThrowable(@NonNull Throwable th, int i, int i2) {
        Timber.m23w(th, "Job failed during network operations, cancelling.", new Object[0]);
        return RetryConstraint.CANCEL;
    }
}
