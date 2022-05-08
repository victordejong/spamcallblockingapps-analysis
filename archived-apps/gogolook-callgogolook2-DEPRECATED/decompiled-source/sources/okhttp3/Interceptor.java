package okhttp3;

import java.io.IOException;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:okhttp3/Interceptor.class */
public interface Interceptor {

    /* loaded from: classes3-dex2jar.jar:okhttp3/Interceptor$Chain.class */
    public interface Chain {
        int connectTimeoutMillis();

        @Nullable
        Connection connection();

        Response proceed(Request request) throws IOException;

        int readTimeoutMillis();

        Request request();

        int writeTimeoutMillis();
    }

    Response intercept(Chain chain) throws IOException;
}
