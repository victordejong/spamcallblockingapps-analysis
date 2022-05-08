package zendesk.core;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskIdentityStorage.class */
class ZendeskIdentityStorage implements IdentityStorage {
    static final String BLIPS_UUID_KEY = "blips_buid";
    static final String IDENTITY_KEY = "zendesk-identity";
    static final String IDENTITY_TYPE_KEY = "zendesk-identity-type";
    static final String LOG_TAG = "ZendeskIdentityStorage";
    static final String TOKEN_KEY = "stored_token";
    static final String USER_ID_KEY = "user_id";
    static final String UUID_KEY = "uuid";
    private final BaseStorage identityStorage;

    /* renamed from: zendesk.core.ZendeskIdentityStorage$1 */
    /* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskIdentityStorage$1.class */
    static /* synthetic */ class C26651 {
        static final /* synthetic */ int[] $SwitchMap$zendesk$core$AuthenticationType = new int[AuthenticationType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            try {
                $SwitchMap$zendesk$core$AuthenticationType[AuthenticationType.JWT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$zendesk$core$AuthenticationType[AuthenticationType.ANONYMOUS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskIdentityStorage(BaseStorage baseStorage) {
        this.identityStorage = baseStorage;
    }

    @Override // zendesk.core.IdentityStorage
    public void clear() {
        this.identityStorage.clear();
    }

    @Override // zendesk.core.IdentityStorage
    public String getBlipsUuid() {
        return this.identityStorage.get(BLIPS_UUID_KEY);
    }

    @Override // zendesk.core.IdentityStorage
    @Nullable
    public Identity getIdentity() {
        Identity identity;
        AuthenticationType authType;
        String str = this.identityStorage.get(IDENTITY_TYPE_KEY);
        if (StringUtils.hasLength(str) && (authType = AuthenticationType.getAuthType(str)) != null) {
            switch (C26651.$SwitchMap$zendesk$core$AuthenticationType[authType.ordinal()]) {
                case 1:
                    Logger.m298d(LOG_TAG, "Loading Jwt identity", new Object[0]);
                    identity = (Identity) this.identityStorage.get(IDENTITY_KEY, JwtIdentity.class);
                    break;
                case 2:
                    Logger.m298d(LOG_TAG, "Loading Anonymous identity", new Object[0]);
                    identity = (Identity) this.identityStorage.get(IDENTITY_KEY, AnonymousIdentity.class);
                    break;
            }
            return identity;
        }
        identity = null;
        return identity;
    }

    @Override // zendesk.core.IdentityStorage
    public AccessToken getStoredAccessToken() {
        return (AccessToken) this.identityStorage.get(TOKEN_KEY, AccessToken.class);
    }

    @Override // zendesk.core.IdentityStorage
    public Long getUserId() {
        return (Long) this.identityStorage.get(USER_ID_KEY, Long.class);
    }

    @Override // zendesk.core.IdentityStorage
    @NonNull
    public String getUuid() {
        Logger.m298d(LOG_TAG, "Fetching UUID from preferences store", new Object[0]);
        String str = this.identityStorage.get(UUID_KEY);
        String str2 = str;
        if (StringUtils.isEmpty(str)) {
            str2 = "";
        }
        return str2;
    }

    @Override // zendesk.core.IdentityStorage
    public void storeAccessToken(AccessToken accessToken) {
        if (accessToken != null) {
            this.identityStorage.put(TOKEN_KEY, accessToken);
        }
    }

    @Override // zendesk.core.IdentityStorage
    public void storeIdentity(Identity identity) {
        if (identity == null) {
            Logger.m295e(LOG_TAG, "identity is null, will not store the identity", new Object[0]);
            return;
        }
        String str = null;
        if (identity instanceof AnonymousIdentity) {
            Logger.m298d(LOG_TAG, "Storing anonymous identity", new Object[0]);
            str = AuthenticationType.ANONYMOUS.getAuthenticationType();
        } else if (identity instanceof JwtIdentity) {
            Logger.m298d(LOG_TAG, "Storing jwt identity", new Object[0]);
            str = AuthenticationType.JWT.getAuthenticationType();
        } else {
            Logger.m295e(LOG_TAG, "Unknown authentication type, identity will not be stored", new Object[0]);
        }
        if (identity != null && str != null) {
            this.identityStorage.put(IDENTITY_KEY, identity);
            this.identityStorage.put(IDENTITY_TYPE_KEY, str);
        }
    }

    @Override // zendesk.core.IdentityStorage
    public void storeSdkGuid(String str) {
        Logger.m298d(LOG_TAG, "Storing new UUID in preference store", new Object[0]);
        this.identityStorage.put(UUID_KEY, str);
    }

    @Override // zendesk.core.IdentityStorage
    public void storeUserId(Long l) {
        if (l != null) {
            this.identityStorage.put(USER_ID_KEY, l);
        }
    }

    @Override // zendesk.core.IdentityStorage
    public String updateBlipsUuid() {
        String uuid = UUID.randomUUID().toString();
        Logger.m298d(LOG_TAG, "Generate new Blips BUID", new Object[0]);
        this.identityStorage.put(BLIPS_UUID_KEY, uuid);
        return uuid;
    }

    @Override // zendesk.core.IdentityStorage
    @NonNull
    public String updateSdkGuid() {
        String uuid = UUID.randomUUID().toString();
        storeSdkGuid(uuid);
        return uuid;
    }
}
