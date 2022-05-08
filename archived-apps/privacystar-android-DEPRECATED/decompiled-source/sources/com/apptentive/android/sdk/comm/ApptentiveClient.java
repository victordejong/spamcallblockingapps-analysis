package com.apptentive.android.sdk.comm;

import com.apptentive.android.sdk.util.Constants;
import com.apptentive.android.sdk.util.Util;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.zip.GZIPInputStream;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/comm/ApptentiveClient.class */
public class ApptentiveClient {
    private static final String USER_AGENT_STRING = "Apptentive/%s (Android)";

    public static String getErrorResponse(HttpURLConnection httpURLConnection, boolean z) throws IOException {
        Throwable th;
        InputStream inputStream = null;
        if (httpURLConnection == null) {
            return null;
        }
        try {
            inputStream = httpURLConnection.getErrorStream();
            if (inputStream != null && z) {
                try {
                    inputStream = new GZIPInputStream(inputStream);
                } catch (Throwable th2) {
                    th = th2;
                    Util.ensureClosed(inputStream);
                    throw th;
                }
            }
            inputStream = inputStream;
            String readStringFromInputStream = Util.readStringFromInputStream(inputStream, "UTF-8");
            Util.ensureClosed(inputStream);
            return readStringFromInputStream;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static String getUserAgentString() {
        return String.format("Apptentive/%s (Android)", Constants.getApptentiveSdkVersion());
    }
}
