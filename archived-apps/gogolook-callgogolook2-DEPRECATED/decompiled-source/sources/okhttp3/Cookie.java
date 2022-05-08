package okhttp3;

import androidx.media2.session.MediaSessionImplBase;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpDate;
/* loaded from: classes3-dex2jar.jar:okhttp3/Cookie.class */
public final class Cookie {
    public final String domain;
    public final long expiresAt;
    public final boolean hostOnly;
    public final boolean httpOnly;
    public final String name;
    public final String path;
    public final boolean persistent;
    public final boolean secure;
    public final String value;
    public static final Pattern YEAR_PATTERN = Pattern.compile("(\\d{2,4})[^\\d]*");
    public static final Pattern MONTH_PATTERN = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");
    public static final Pattern DAY_OF_MONTH_PATTERN = Pattern.compile("(\\d{1,2})[^\\d]*");
    public static final Pattern TIME_PATTERN = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    public Cookie(String str, String str2, long j, String str3, String str4, boolean z, boolean z2, boolean z3, boolean z4) {
        this.name = str;
        this.value = str2;
        this.expiresAt = j;
        this.domain = str3;
        this.path = str4;
        this.secure = z;
        this.httpOnly = z2;
        this.hostOnly = z3;
        this.persistent = z4;
    }

    public static int dateCharacterOffset(String str, int i, int i2, boolean z) {
        while (i < i2) {
            char charAt = str.charAt(i);
            if (((charAt < ' ' && charAt != '\t') || charAt >= 127 || (charAt >= '0' && charAt <= '9') || ((charAt >= 'a' && charAt <= 'z') || ((charAt >= 'A' && charAt <= 'Z') || charAt == ':'))) == (!z)) {
                return i;
            }
            i++;
        }
        return i2;
    }

    public static boolean domainMatch(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !Util.verifyAsIpAddress(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x023f, code lost:
        if (r0 > 253402300799999L) goto L_0x0242;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v65, types: [long] */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r24v0 */
    /* JADX WARN: Type inference failed for: r24v1, types: [long] */
    /* JADX WARN: Type inference failed for: r24v2 */
    /* JADX WARN: Type inference failed for: r24v5 */
    /* JADX WARN: Type inference failed for: r24v6 */
    /* JADX WARN: Type inference failed for: r24v7 */
    /* JADX WARN: Type inference failed for: r26v0 */
    /* JADX WARN: Type inference failed for: r26v1 */
    /* JADX WARN: Type inference failed for: r26v10 */
    /* JADX WARN: Type inference failed for: r26v7 */
    /* JADX WARN: Type inference failed for: r26v8 */
    /* JADX WARN: Type inference failed for: r26v9 */
    /* JADX WARN: Type inference failed for: r35v1 */
    /* JADX WARN: Type inference failed for: r35v4 */
    /* JADX WARN: Type inference failed for: r35v5 */
    /* JADX WARN: Type inference failed for: r35v6 */
    /* JADX WARN: Type inference failed for: r35v7 */
    /* JADX WARN: Type inference failed for: r35v8 */
    /* JADX WARN: Type inference failed for: r35v9 */
    /* JADX WARN: Type inference failed for: r41v0 */
    /* JADX WARN: Type inference failed for: r41v2 */
    /* JADX WARN: Type inference failed for: r41v3 */
    /* JADX WARN: Type inference failed for: r41v4 */
    /* JADX WARN: Type inference failed for: r41v5 */
    /* JADX WARN: Type inference failed for: r41v6 */
    /* JADX WARN: Type inference failed for: r41v7 */
    /* JADX WARN: Unknown variable types count: 6 */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static okhttp3.Cookie parse(long r13, okhttp3.HttpUrl r15, java.lang.String r16) {
        /*
            Method dump skipped, instructions count: 763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.parse(long, okhttp3.HttpUrl, java.lang.String):okhttp3.Cookie");
    }

    @Nullable
    public static Cookie parse(HttpUrl httpUrl, String str) {
        return parse(System.currentTimeMillis(), httpUrl, str);
    }

    public static List<Cookie> parseAll(HttpUrl httpUrl, Headers headers) {
        List<String> values = headers.values("Set-Cookie");
        int size = values.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            Cookie parse = parse(httpUrl, values.get(i));
            if (parse == null) {
                arrayList = arrayList;
            } else {
                arrayList = arrayList;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(parse);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    public static String parseDomain(String str) {
        if (!str.endsWith(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM)) {
            String str2 = str;
            if (str.startsWith(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM)) {
                str2 = str.substring(1);
            }
            String canonicalizeHost = Util.canonicalizeHost(str2);
            if (canonicalizeHost != null) {
                return canonicalizeHost;
            }
            throw new IllegalArgumentException();
        }
        throw new IllegalArgumentException();
    }

    public static long parseExpires(String str, int i, int i2) {
        int dateCharacterOffset = dateCharacterOffset(str, i, i2, false);
        Matcher matcher = TIME_PATTERN.matcher(str);
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        int i7 = -1;
        int i8 = -1;
        while (dateCharacterOffset < i2) {
            int dateCharacterOffset2 = dateCharacterOffset(str, dateCharacterOffset + 1, i2, true);
            matcher.region(dateCharacterOffset, dateCharacterOffset2);
            if (i4 == -1 && matcher.usePattern(TIME_PATTERN).matches()) {
                i4 = Integer.parseInt(matcher.group(1));
                i7 = Integer.parseInt(matcher.group(2));
                i8 = Integer.parseInt(matcher.group(3));
                i3 = i3;
                i5 = i5;
                i6 = i6;
            } else if (i5 == -1 && matcher.usePattern(DAY_OF_MONTH_PATTERN).matches()) {
                i5 = Integer.parseInt(matcher.group(1));
                i3 = i3;
                i4 = i4;
                i6 = i6;
                i7 = i7;
                i8 = i8;
            } else if (i6 != -1 || !matcher.usePattern(MONTH_PATTERN).matches()) {
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i6 = i6;
                i7 = i7;
                i8 = i8;
                if (i3 == -1) {
                    i3 = i3;
                    i4 = i4;
                    i5 = i5;
                    i6 = i6;
                    i7 = i7;
                    i8 = i8;
                    if (matcher.usePattern(YEAR_PATTERN).matches()) {
                        i3 = Integer.parseInt(matcher.group(1));
                        i8 = i8;
                        i7 = i7;
                        i6 = i6;
                        i5 = i5;
                        i4 = i4;
                    }
                }
            } else {
                i6 = MONTH_PATTERN.pattern().indexOf(matcher.group(1).toLowerCase(Locale.US)) / 4;
                i3 = i3;
                i4 = i4;
                i5 = i5;
                i7 = i7;
                i8 = i8;
            }
            dateCharacterOffset = dateCharacterOffset(str, dateCharacterOffset2 + 1, i2, false);
        }
        int i9 = i3;
        if (i3 >= 70) {
            i9 = i3;
            if (i3 <= 99) {
                i9 = i3 + 1900;
            }
        }
        int i10 = i9;
        if (i9 >= 0) {
            i10 = i9;
            if (i9 <= 69) {
                i10 = i9 + 2000;
            }
        }
        if (i10 < 1601) {
            throw new IllegalArgumentException();
        } else if (i6 == -1) {
            throw new IllegalArgumentException();
        } else if (i5 < 1 || i5 > 31) {
            throw new IllegalArgumentException();
        } else if (i4 < 0 || i4 > 23) {
            throw new IllegalArgumentException();
        } else if (i7 < 0 || i7 > 59) {
            throw new IllegalArgumentException();
        } else if (i8 < 0 || i8 > 59) {
            throw new IllegalArgumentException();
        } else {
            GregorianCalendar gregorianCalendar = new GregorianCalendar(Util.UTC);
            gregorianCalendar.setLenient(false);
            gregorianCalendar.set(1, i10);
            gregorianCalendar.set(2, i6 - 1);
            gregorianCalendar.set(5, i5);
            gregorianCalendar.set(11, i4);
            gregorianCalendar.set(12, i7);
            gregorianCalendar.set(13, i8);
            gregorianCalendar.set(14, 0);
            return gregorianCalendar.getTimeInMillis();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseMaxAge(java.lang.String r5) {
        /*
            r0 = -9223372036854775808
            r6 = r0
            r0 = r5
            long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0016
            r8 = r0
            r0 = r8
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L_0x0012
            goto L_0x0014
        L_0x0012:
            r0 = r8
            r6 = r0
        L_0x0014:
            r0 = r6
            return r0
        L_0x0016:
            r10 = move-exception
            r0 = r5
            java.lang.String r1 = "-?\\d+"
            boolean r0 = r0.matches(r1)
            if (r0 == 0) goto L_0x0035
            r0 = r5
            java.lang.String r1 = "-"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x002f
            goto L_0x0033
        L_0x002f:
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r6 = r0
        L_0x0033:
            r0 = r6
            return r0
        L_0x0035:
            r0 = r10
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Cookie.parseMaxAge(java.lang.String):long");
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        boolean z = false;
        if (cookie.name.equals(this.name)) {
            z = false;
            if (cookie.value.equals(this.value)) {
                z = false;
                if (cookie.domain.equals(this.domain)) {
                    z = false;
                    if (cookie.path.equals(this.path)) {
                        z = false;
                        if (cookie.expiresAt == this.expiresAt) {
                            z = false;
                            if (cookie.secure == this.secure) {
                                z = false;
                                if (cookie.httpOnly == this.httpOnly) {
                                    z = false;
                                    if (cookie.persistent == this.persistent) {
                                        z = false;
                                        if (cookie.hostOnly == this.hostOnly) {
                                            z = true;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.name.hashCode();
        int hashCode2 = this.value.hashCode();
        int hashCode3 = this.domain.hashCode();
        int hashCode4 = this.path.hashCode();
        long j = this.expiresAt;
        return ((((((((((((((((527 + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + (!this.secure ? 1 : 0)) * 31) + (!this.httpOnly ? 1 : 0)) * 31) + (!this.persistent ? 1 : 0)) * 31) + (!this.hostOnly ? 1 : 0);
    }

    public String name() {
        return this.name;
    }

    public String toString() {
        return toString(false);
    }

    public String toString(boolean z) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.name);
        sb.append('=');
        sb.append(this.value);
        if (this.persistent) {
            if (this.expiresAt == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(HttpDate.format(new Date(this.expiresAt)));
            }
        }
        if (!this.hostOnly) {
            sb.append("; domain=");
            if (z) {
                sb.append(MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
            }
            sb.append(this.domain);
        }
        sb.append("; path=");
        sb.append(this.path);
        if (this.secure) {
            sb.append("; secure");
        }
        if (this.httpOnly) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public String value() {
        return this.value;
    }
}
