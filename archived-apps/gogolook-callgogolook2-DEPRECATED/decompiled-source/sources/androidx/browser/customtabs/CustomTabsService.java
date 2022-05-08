package androidx.browser.customtabs;

import android.app.Service;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import androidx.collection.ArrayMap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import p065f.p066a.p067a.AbstractC4232a;
import p065f.p066a.p067a.AbstractC4235b;
/* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService.class */
public abstract class CustomTabsService extends Service {
    public static final String ACTION_CUSTOM_TABS_CONNECTION = "android.support.customtabs.action.CustomTabsService";
    public static final String KEY_URL = "android.support.customtabs.otherurls.URL";
    public static final int RELATION_HANDLE_ALL_URLS = 2;
    public static final int RELATION_USE_AS_ORIGIN = 1;
    public static final int RESULT_FAILURE_DISALLOWED = -1;
    public static final int RESULT_FAILURE_MESSAGING_ERROR = -3;
    public static final int RESULT_FAILURE_REMOTE_ERROR = -2;
    public static final int RESULT_SUCCESS = 0;
    public final Map<IBinder, IBinder.DeathRecipient> mDeathRecipientMap = new ArrayMap();
    public AbstractC4235b.AbstractBinderC4236a mBinder = new AbstractC4235b.AbstractBinderC4236a() { // from class: androidx.browser.customtabs.CustomTabsService.1
        @Override // p065f.p066a.p067a.AbstractC4235b
        public Bundle extraCommand(String str, Bundle bundle) {
            return CustomTabsService.this.extraCommand(str, bundle);
        }

        @Override // p065f.p066a.p067a.AbstractC4235b
        public boolean mayLaunchUrl(AbstractC4232a aVar, Uri uri, Bundle bundle, List<Bundle> list) {
            return CustomTabsService.this.mayLaunchUrl(new CustomTabsSessionToken(aVar), uri, bundle, list);
        }

        @Override // p065f.p066a.p067a.AbstractC4235b
        public boolean newSession(AbstractC4232a aVar) {
            final CustomTabsSessionToken customTabsSessionToken = new CustomTabsSessionToken(aVar);
            try {
                IBinder.DeathRecipient deathRecipient = new IBinder.DeathRecipient() { // from class: androidx.browser.customtabs.CustomTabsService.1.1
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        CustomTabsService.this.cleanUpSession(customTabsSessionToken);
                    }
                };
                synchronized (CustomTabsService.this.mDeathRecipientMap) {
                    aVar.asBinder().linkToDeath(deathRecipient, 0);
                    CustomTabsService.this.mDeathRecipientMap.put(aVar.asBinder(), deathRecipient);
                }
                return CustomTabsService.this.newSession(customTabsSessionToken);
            } catch (RemoteException e) {
                return false;
            }
        }

        @Override // p065f.p066a.p067a.AbstractC4235b
        public int postMessage(AbstractC4232a aVar, String str, Bundle bundle) {
            return CustomTabsService.this.postMessage(new CustomTabsSessionToken(aVar), str, bundle);
        }

        @Override // p065f.p066a.p067a.AbstractC4235b
        public boolean requestPostMessageChannel(AbstractC4232a aVar, Uri uri) {
            return CustomTabsService.this.requestPostMessageChannel(new CustomTabsSessionToken(aVar), uri);
        }

        @Override // p065f.p066a.p067a.AbstractC4235b
        public boolean updateVisuals(AbstractC4232a aVar, Bundle bundle) {
            return CustomTabsService.this.updateVisuals(new CustomTabsSessionToken(aVar), bundle);
        }

        @Override // p065f.p066a.p067a.AbstractC4235b
        public boolean validateRelationship(AbstractC4232a aVar, int i, Uri uri, Bundle bundle) {
            return CustomTabsService.this.validateRelationship(new CustomTabsSessionToken(aVar), i, uri, bundle);
        }

        @Override // p065f.p066a.p067a.AbstractC4235b
        public boolean warmup(long j) {
            return CustomTabsService.this.warmup(j);
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService$Relation.class */
    public @interface Relation {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:androidx/browser/customtabs/CustomTabsService$Result.class */
    public @interface Result {
    }

    public boolean cleanUpSession(CustomTabsSessionToken customTabsSessionToken) {
        try {
            synchronized (this.mDeathRecipientMap) {
                IBinder callbackBinder = customTabsSessionToken.getCallbackBinder();
                callbackBinder.unlinkToDeath(this.mDeathRecipientMap.get(callbackBinder), 0);
                this.mDeathRecipientMap.remove(callbackBinder);
            }
            return true;
        } catch (NoSuchElementException e) {
            return false;
        }
    }

    public abstract Bundle extraCommand(String str, Bundle bundle);

    public abstract boolean mayLaunchUrl(CustomTabsSessionToken customTabsSessionToken, Uri uri, Bundle bundle, List<Bundle> list);

    public abstract boolean newSession(CustomTabsSessionToken customTabsSessionToken);

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    public abstract int postMessage(CustomTabsSessionToken customTabsSessionToken, String str, Bundle bundle);

    public abstract boolean requestPostMessageChannel(CustomTabsSessionToken customTabsSessionToken, Uri uri);

    public abstract boolean updateVisuals(CustomTabsSessionToken customTabsSessionToken, Bundle bundle);

    public abstract boolean validateRelationship(CustomTabsSessionToken customTabsSessionToken, int i, Uri uri, Bundle bundle);

    public abstract boolean warmup(long j);
}
