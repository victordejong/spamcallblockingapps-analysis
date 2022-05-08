package com.mixpanel.android.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/util/StringUtils.class */
public class StringUtils {
    public static String inputStreamToString(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine != null) {
                sb.append(readLine + IOUtils.LINE_SEPARATOR_UNIX);
            } else {
                bufferedReader.close();
                return sb.toString();
            }
        }
    }
}
