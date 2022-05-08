package okhttp3;

import io.fabric.sdk.android.services.network.HttpRequest;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:okhttp3/MediaType.class */
public final class MediaType {
    private static final String QUOTED = "\"([^\"]*)\"";
    private static final String TOKEN = "([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)";
    @Nullable
    private final String charset;
    private final String mediaType;
    private final String subtype;
    private final String type;
    private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    private MediaType(String str, String str2, String str3, @Nullable String str4) {
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.charset = str4;
    }

    @Nullable
    public static MediaType parse(String str) {
        Matcher matcher = TYPE_SUBTYPE.matcher(str);
        if (!matcher.lookingAt()) {
            return null;
        }
        String lowerCase = matcher.group(1).toLowerCase(Locale.US);
        String lowerCase2 = matcher.group(2).toLowerCase(Locale.US);
        Matcher matcher2 = PARAMETER.matcher(str);
        String str2 = null;
        for (int end = matcher.end(); end < str.length(); end = matcher2.end()) {
            matcher2.region(end, str.length());
            if (!matcher2.lookingAt()) {
                return null;
            }
            String group = matcher2.group(1);
            str2 = str2;
            if (group != null) {
                if (!group.equalsIgnoreCase(HttpRequest.PARAM_CHARSET)) {
                    str2 = str2;
                } else {
                    String group2 = matcher2.group(2);
                    if (group2 != null) {
                        str2 = group2;
                        if (group2.startsWith("'")) {
                            str2 = group2;
                            if (group2.endsWith("'")) {
                                str2 = group2;
                                if (group2.length() > 2) {
                                    str2 = group2.substring(1, group2.length() - 1);
                                }
                            }
                        }
                    } else {
                        str2 = matcher2.group(3);
                    }
                    if (str2 != null && !str2.equalsIgnoreCase(str2)) {
                        return null;
                    }
                }
            }
        }
        return new MediaType(str, lowerCase, lowerCase2, str2);
    }

    @Nullable
    public Charset charset() {
        return charset(null);
    }

    @Nullable
    public Charset charset(@Nullable Charset charset) {
        Charset charset2 = charset;
        try {
            if (this.charset != null) {
                charset2 = Charset.forName(this.charset);
            }
            return charset2;
        } catch (IllegalArgumentException e) {
            return charset;
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof MediaType) && ((MediaType) obj).mediaType.equals(this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    public String subtype() {
        return this.subtype;
    }

    public String toString() {
        return this.mediaType;
    }

    public String type() {
        return this.type;
    }
}
