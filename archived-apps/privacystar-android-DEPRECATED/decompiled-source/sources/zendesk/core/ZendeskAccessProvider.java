package zendesk.core;

import android.support.annotation.NonNull;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
import java.io.IOException;
import retrofit2.Response;
/* loaded from: classes3-dex2jar.jar:zendesk/core/ZendeskAccessProvider.class */
class ZendeskAccessProvider implements AccessProvider {
    private static final String LOG_TAG = "ZendeskAccessProvider";
    private final AccessService accessService;
    private final IdentityManager identityManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZendeskAccessProvider(@NonNull IdentityManager identityManager, @NonNull AccessService accessService) {
        this.identityManager = identityManager;
        this.accessService = accessService;
    }

    private void storeAccessTokenAndUserId(@NonNull AccessToken accessToken) {
        this.identityManager.storeAccessToken(accessToken);
    }

    @Override // zendesk.core.AccessProvider
    public AccessToken getAndStoreAuthTokenViaAnonymous(@NonNull AnonymousIdentity anonymousIdentity) {
        Response<AuthenticationResponse> response;
        Logger.m298d(LOG_TAG, "Requesting an access token for anonymous identity.", new Object[0]);
        try {
            AuthenticationRequestWrapper authenticationRequestWrapper = new AuthenticationRequestWrapper();
            authenticationRequestWrapper.setUser(new ApiAnonymousIdentity(anonymousIdentity, this.identityManager.getSdkGuid()));
            response = this.accessService.getAuthTokenForAnonymous(authenticationRequestWrapper).execute();
        } catch (IOException e) {
            Logger.m296e(LOG_TAG, e.getMessage(), e, new Object[0]);
            response = null;
        }
        AccessToken accessToken = null;
        if (response != null) {
            accessToken = null;
            if (response.body() != null) {
                AccessToken authentication = response.body().getAuthentication();
                accessToken = authentication;
                if (authentication != null) {
                    storeAccessTokenAndUserId(authentication);
                    accessToken = authentication;
                }
            }
        }
        return accessToken;
    }

    @Override // zendesk.core.AccessProvider
    public AccessToken getAndStoreAuthTokenViaJwt(@NonNull JwtIdentity jwtIdentity) {
        Response<AuthenticationResponse> response;
        Logger.m298d(LOG_TAG, "Requesting an access token for jwt identity.", new Object[0]);
        if (StringUtils.isEmpty(jwtIdentity.getJwtUserIdentifier())) {
            Logger.m295e(LOG_TAG, AccessProvider.NO_JWT_ERROR_MESSAGE, new Object[0]);
            return null;
        }
        try {
            AuthenticationRequestWrapper authenticationRequestWrapper = new AuthenticationRequestWrapper();
            authenticationRequestWrapper.setUser(jwtIdentity);
            response = this.accessService.getAuthTokenForJwt(authenticationRequestWrapper).execute();
        } catch (IOException e) {
            Logger.m296e(LOG_TAG, e.getMessage(), e, new Object[0]);
            response = null;
        }
        AccessToken accessToken = null;
        if (response != null) {
            accessToken = null;
            if (response.body() != null) {
                AccessToken authentication = response.body().getAuthentication();
                accessToken = authentication;
                if (authentication != null) {
                    storeAccessTokenAndUserId(authentication);
                    accessToken = authentication;
                }
            }
        }
        return accessToken;
    }
}
