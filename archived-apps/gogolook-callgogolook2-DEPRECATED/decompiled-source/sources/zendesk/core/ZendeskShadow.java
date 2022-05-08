package zendesk.core;

import p081h.p451q.p453b.C10845a;
import p081h.p451q.p455d.C10862d;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskShadow.class */
public final class ZendeskShadow {
    public final BlipsCoreProvider blipsCoreProvider;
    public final CoreModule coreModule;
    public final IdentityManager identityManager;
    public final LegacyIdentityMigrator legacyIdentityMigrator;
    public final PushRegistrationProvider pushRegistrationProvider;
    public final Storage storage;

    public ZendeskShadow(Storage storage, LegacyIdentityMigrator legacyIdentityMigrator, IdentityManager identityManager, BlipsCoreProvider blipsCoreProvider, PushRegistrationProvider pushRegistrationProvider, CoreModule coreModule, ProviderStore providerStore) {
        this.storage = storage;
        this.legacyIdentityMigrator = legacyIdentityMigrator;
        this.identityManager = identityManager;
        this.blipsCoreProvider = blipsCoreProvider;
        this.pushRegistrationProvider = pushRegistrationProvider;
        this.coreModule = coreModule;
    }

    public static boolean checkIdentityValid(Identity identity) {
        if (identity == null) {
            C10845a.m10417d("ZendeskShadow", "setIdentity(): The provided Identity object must be an Anonymous Identity or a JwtIdentity with a non-empty JWT identifier. Returning.", new Object[0]);
            return false;
        } else if (!(identity instanceof AnonymousIdentity) && !(identity instanceof JwtIdentity)) {
            C10845a.m10417d("ZendeskShadow", "setIdentity(): The provided Identity object must be an Anonymous Identity or a JwtIdentity with a non-empty JWT identifier. Returning.", new Object[0]);
            return false;
        } else if (!(identity instanceof JwtIdentity) || !C10862d.m10389c(((JwtIdentity) identity).getJwtUserIdentifier())) {
            return true;
        } else {
            C10845a.m10417d("ZendeskShadow", "setIdentity(): The provided Identity object must be an Anonymous Identity or a JwtIdentity with a non-empty JWT identifier. Returning.", new Object[0]);
            return false;
        }
    }

    public void cleanupIfNewConfig(ApplicationConfiguration applicationConfiguration) {
        if (this.storage.hasSdkConfigChanged(applicationConfiguration)) {
            this.pushRegistrationProvider.unregisterDevice(null);
        }
    }

    public CoreModule coreModule() {
        return this.coreModule;
    }

    public void init(ApplicationConfiguration applicationConfiguration, boolean z) {
        if (this.storage.hasSdkConfigChanged(applicationConfiguration)) {
            C10845a.m10422a("ZendeskShadow", "SDK app config details have changed, cleaning up old config storage.", new Object[0]);
            this.storage.clear();
            this.storage.storeSdkHash(applicationConfiguration);
        } else if (z) {
            C10845a.m10418c("ZendeskShadow", "Zendesk is already initialized with these details, skipping.", new Object[0]);
            return;
        }
        this.blipsCoreProvider.coreInitialized();
    }

    public void setIdentity(Identity identity) {
        if (checkIdentityValid(identity)) {
            this.legacyIdentityMigrator.checkAndMigrateIdentity();
            if (this.identityManager.identityIsDifferent(identity)) {
                this.pushRegistrationProvider.unregisterDevice(null);
                this.storage.getSessionStorage().clear();
                this.identityManager.updateAndPersistIdentity(identity);
                return;
            }
            C10845a.m10418c("ZendeskShadow", "Zendesk is already initialized with this identity, skipping.", new Object[0]);
        }
    }
}
