package zendesk.core;

import android.support.annotation.Nullable;
import com.zendesk.logger.Logger;
import com.zendesk.util.StringUtils;
/* loaded from: classes3-dex2jar.jar:zendesk/core/JwtIdentity.class */
public final class JwtIdentity implements Identity {
    private static final String LOG_TAG = "JwtIdentity";
    private final String token;

    public JwtIdentity(String str) {
        if (StringUtils.isEmpty(str)) {
            Logger.m295e(LOG_TAG, "A null or empty JWT was specified. This will not work. Please check your initialisation of JwtIdentity!", new Object[0]);
        }
        this.token = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        JwtIdentity jwtIdentity = (JwtIdentity) obj;
        return this.token != null ? this.token.equals(jwtIdentity.token) : jwtIdentity.token == null;
    }

    @Nullable
    public String getJwtUserIdentifier() {
        return this.token;
    }

    public int hashCode() {
        return this.token != null ? this.token.hashCode() : 0;
    }
}
