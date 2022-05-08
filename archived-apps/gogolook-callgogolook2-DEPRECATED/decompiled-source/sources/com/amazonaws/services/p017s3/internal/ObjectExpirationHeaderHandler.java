package com.amazonaws.services.p017s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p017s3.internal.ObjectExpirationResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.services.s3.internal.ObjectExpirationHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler.class */
public class ObjectExpirationHeaderHandler<T extends ObjectExpirationResult> implements HeaderHandler<T> {
    public static final Pattern datePattern = Pattern.compile("expiry-date=\"(.*?)\"");
    public static final Pattern rulePattern = Pattern.compile("rule-id=\"(.*?)\"");
    public static final Log log = LogFactory.getLog(ObjectExpirationHeaderHandler.class);

    public void handle(T t, HttpResponse httpResponse) {
        String str = httpResponse.getHeaders().get("x-amz-expiration");
        if (str != null) {
            t.setExpirationTime(parseDate(str));
            t.setExpirationTimeRuleId(parseRuleId(str));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.p017s3.internal.HeaderHandler
    public /* bridge */ /* synthetic */ void handle(Object obj, HttpResponse httpResponse) {
        handle((ObjectExpirationHeaderHandler<T>) ((ObjectExpirationResult) obj), httpResponse);
    }

    public final Date parseDate(String str) {
        Matcher matcher = datePattern.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        try {
            return ServiceUtils.parseRfc822Date(matcher.group(1));
        } catch (Exception e) {
            log.warn("Error parsing expiry-date from x-amz-expiration header.", e);
            return null;
        }
    }

    public final String parseRuleId(String str) {
        Matcher matcher = rulePattern.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }
}
