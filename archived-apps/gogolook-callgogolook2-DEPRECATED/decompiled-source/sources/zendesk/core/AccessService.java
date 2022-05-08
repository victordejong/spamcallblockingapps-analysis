package zendesk.core;

import p655o.AbstractC15235b;
import p655o.p658y.AbstractC15313a;
import p655o.p658y.AbstractC15325m;
/* loaded from: classes3-dex2jar.jar:zendesk/core/AccessService.class */
public interface AccessService {
    @AbstractC15325m("/access/sdk/anonymous")
    AbstractC15235b<AuthenticationResponse> getAuthTokenForAnonymous(@AbstractC15313a AuthenticationRequestWrapper authenticationRequestWrapper);

    @AbstractC15325m("/access/sdk/jwt")
    AbstractC15235b<AuthenticationResponse> getAuthTokenForJwt(@AbstractC15313a AuthenticationRequestWrapper authenticationRequestWrapper);
}
