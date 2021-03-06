package zendesk.core;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:zendesk/core/BlipsFormatHelper.class */
public class BlipsFormatHelper {
    public static String nowAsString(Date date) {
        Date date2 = date == null ? new Date() : new Date(date.getTime());
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        return simpleDateFormat.format(date2);
    }
}
