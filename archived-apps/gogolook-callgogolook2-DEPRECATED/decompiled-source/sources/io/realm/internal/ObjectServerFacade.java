package io.realm.internal;

import android.content.Context;
import io.realm.Realm;
import io.realm.RealmConfiguration;
import io.realm.exceptions.RealmException;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes3-dex2jar.jar:io/realm/internal/ObjectServerFacade.class */
public class ObjectServerFacade {
    public static final ObjectServerFacade nonSyncFacade = new ObjectServerFacade();
    public static ObjectServerFacade syncFacade;

    static {
        syncFacade = null;
        try {
            syncFacade = (ObjectServerFacade) Class.forName("io.realm.internal.SyncObjectServerFacade").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
        } catch (IllegalAccessException e2) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e2);
        } catch (InstantiationException e3) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e3);
        } catch (NoSuchMethodException e4) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e4);
        } catch (InvocationTargetException e5) {
            throw new RealmException("Failed to init SyncObjectServerFacade", e5.getTargetException());
        }
    }

    public static ObjectServerFacade getFacade(boolean z) {
        return z ? syncFacade : nonSyncFacade;
    }

    public static ObjectServerFacade getSyncFacadeIfPossible() {
        ObjectServerFacade objectServerFacade = syncFacade;
        return objectServerFacade != null ? objectServerFacade : nonSyncFacade;
    }

    public void addSupportForObjectLevelPermissions(RealmConfiguration.Builder builder) {
    }

    public void downloadInitialRemoteChanges(RealmConfiguration realmConfiguration) {
    }

    public void downloadInitialSubscriptions(Realm realm) {
    }

    public Object[] getSyncConfigurationOptions(RealmConfiguration realmConfiguration) {
        return new Object[11];
    }

    public String getSyncServerCertificateAssetName(RealmConfiguration realmConfiguration) {
        return null;
    }

    public String getSyncServerCertificateFilePath(RealmConfiguration realmConfiguration) {
        return null;
    }

    public void initialize(Context context, String str) {
    }

    public boolean isPartialRealm(RealmConfiguration realmConfiguration) {
        return false;
    }

    public void realmClosed(RealmConfiguration realmConfiguration) {
    }

    public boolean wasDownloadInterrupted(Throwable th) {
        return false;
    }

    public void wrapObjectStoreSessionIfRequired(OsRealmConfig osRealmConfig) {
    }
}
