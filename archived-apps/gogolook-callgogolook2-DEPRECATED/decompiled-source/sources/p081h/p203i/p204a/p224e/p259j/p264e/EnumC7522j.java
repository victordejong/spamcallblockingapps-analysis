package p081h.p203i.p204a.p224e.p259j.p264e;
/* renamed from: h.i.a.e.j.e.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/e/j.class */
public enum EnumC7522j {
    CLIENT_LOGIN_DISABLED("ClientLoginDisabled"),
    DEVICE_MANAGEMENT_REQUIRED("DeviceManagementRequiredOrSyncDisabled"),
    SOCKET_TIMEOUT("SocketTimeout"),
    SUCCESS("Ok"),
    UNKNOWN_ERROR("UNKNOWN_ERR"),
    NETWORK_ERROR("NetworkError"),
    SERVICE_UNAVAILABLE("ServiceUnavailable"),
    INTNERNAL_ERROR("InternalError"),
    BAD_AUTHENTICATION("BadAuthentication"),
    EMPTY_CONSUMER_PKG_OR_SIG("EmptyConsumerPackageOrSig"),
    NEEDS_2F("InvalidSecondFactor"),
    NEEDS_POST_SIGN_IN_FLOW("PostSignInFlowRequired"),
    NEEDS_BROWSER("NeedsBrowser"),
    UNKNOWN("Unknown"),
    NOT_VERIFIED("NotVerified"),
    TERMS_NOT_AGREED("TermsNotAgreed"),
    ACCOUNT_DISABLED("AccountDisabled"),
    CAPTCHA("CaptchaRequired"),
    ACCOUNT_DELETED("AccountDeleted"),
    SERVICE_DISABLED("ServiceDisabled"),
    NEED_PERMISSION("NeedPermission"),
    NEED_REMOTE_CONSENT("NeedRemoteConsent"),
    INVALID_SCOPE("INVALID_SCOPE"),
    USER_CANCEL("UserCancel"),
    PERMISSION_DENIED("PermissionDenied"),
    INVALID_AUDIENCE("INVALID_AUDIENCE"),
    UNREGISTERED_ON_API_CONSOLE("UNREGISTERED_ON_API_CONSOLE"),
    THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED("ThirdPartyDeviceManagementRequired"),
    DM_INTERNAL_ERROR("DeviceManagementInternalError"),
    DM_SYNC_DISABLED("DeviceManagementSyncDisabled"),
    DM_ADMIN_BLOCKED("DeviceManagementAdminBlocked"),
    DM_ADMIN_PENDING_APPROVAL("DeviceManagementAdminPendingApproval"),
    DM_STALE_SYNC_REQUIRED("DeviceManagementStaleSyncRequired"),
    DM_DEACTIVATED("DeviceManagementDeactivated"),
    DM_SCREENLOCK_REQUIRED("DeviceManagementScreenlockRequired"),
    DM_REQUIRED("DeviceManagementRequired"),
    ALREADY_HAS_GMAIL("ALREADY_HAS_GMAIL"),
    BAD_PASSWORD("WeakPassword"),
    BAD_REQUEST("BadRequest"),
    BAD_USERNAME("BadUsername"),
    DELETED_GMAIL("DeletedGmail"),
    EXISTING_USERNAME("ExistingUsername"),
    LOGIN_FAIL("LoginFail"),
    NOT_LOGGED_IN("NotLoggedIn"),
    NO_GMAIL("NoGmail"),
    REQUEST_DENIED("RequestDenied"),
    SERVER_ERROR("ServerError"),
    USERNAME_UNAVAILABLE("UsernameUnavailable"),
    GPLUS_OTHER("GPlusOther"),
    GPLUS_NICKNAME("GPlusNickname"),
    GPLUS_INVALID_CHAR("GPlusInvalidChar"),
    GPLUS_INTERSTITIAL("GPlusInterstitial"),
    GPLUS_PROFILE_ERROR("ProfileUpgradeError");
    

    /* renamed from: a */
    public final String f17649a;

    EnumC7522j(String str) {
        this.f17649a = str;
    }

    /* renamed from: a */
    public static final EnumC7522j m20400a(String str) {
        EnumC7522j[] values;
        EnumC7522j jVar = null;
        for (EnumC7522j jVar2 : values()) {
            if (jVar2.f17649a.equals(str)) {
                jVar = jVar2;
            }
        }
        return jVar;
    }

    /* renamed from: a */
    public static boolean m20401a(EnumC7522j jVar) {
        return BAD_AUTHENTICATION.equals(jVar) || CAPTCHA.equals(jVar) || NEED_PERMISSION.equals(jVar) || NEED_REMOTE_CONSENT.equals(jVar) || NEEDS_BROWSER.equals(jVar) || USER_CANCEL.equals(jVar) || DEVICE_MANAGEMENT_REQUIRED.equals(jVar) || DM_INTERNAL_ERROR.equals(jVar) || DM_SYNC_DISABLED.equals(jVar) || DM_ADMIN_BLOCKED.equals(jVar) || DM_ADMIN_PENDING_APPROVAL.equals(jVar) || DM_STALE_SYNC_REQUIRED.equals(jVar) || DM_DEACTIVATED.equals(jVar) || DM_REQUIRED.equals(jVar) || THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(jVar) || DM_SCREENLOCK_REQUIRED.equals(jVar);
    }
}
