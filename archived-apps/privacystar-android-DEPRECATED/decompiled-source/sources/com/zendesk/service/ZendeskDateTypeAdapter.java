package com.zendesk.service;

import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import com.zendesk.logger.Logger;
import java.io.IOException;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes2-dex2jar.jar:com/zendesk/service/ZendeskDateTypeAdapter.class */
public class ZendeskDateTypeAdapter extends TypeAdapter<Date> {
    private static final String LOG_TAG = "ZendeskDateTypeAdapter";
    private static final String PARSING_ERROR_FORMAT = "Failed to parse Date from: %s";
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    private boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    private String format(Date date) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TIMEZONE_UTC, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder("yyyy-MM-ddThh:mm:ssZ".length() + "Z".length());
        padInt(sb, gregorianCalendar.get(1), "yyyy".length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, "MM".length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), "dd".length());
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), "hh".length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), "mm".length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), "ss".length());
        sb.append('Z');
        return sb.toString();
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }

    private void padInt(StringBuilder sb, int i, int i2) {
        String num = Integer.toString(i);
        for (int length = i2 - num.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(num);
    }

    /* JADX WARN: Code restructure failed: missing block: B:92:0x02fb, code lost:
        if (r0.isEmpty() != false) goto L_0x02fe;
     */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0201 A[Catch: IndexOutOfBoundsException -> 0x02b5, TryCatch #0 {IndexOutOfBoundsException -> 0x02b5, blocks: (B:2:0x0000, B:4:0x000a, B:6:0x0017, B:11:0x002d, B:13:0x003a, B:18:0x0050, B:20:0x006a, B:22:0x0073, B:27:0x00a0, B:29:0x00ad, B:34:0x00c3, B:36:0x00d1, B:41:0x00ee, B:43:0x00f7, B:51:0x013b, B:57:0x015d, B:61:0x016f, B:71:0x01f8, B:73:0x0201, B:74:0x020f, B:76:0x0211, B:79:0x021f, B:81:0x0281, B:81:0x0281, B:82:0x0284, B:83:0x02b4), top: B:96:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0210  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Date parse(java.lang.String r6, java.text.ParsePosition r7) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 878
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.zendesk.service.ZendeskDateTypeAdapter.parse(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i4 = i + 1;
            int digit = Character.digit(str.charAt(i), 10);
            if (digit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = -digit;
        } else {
            i4 = i;
            i3 = 0;
        }
        while (i4 < i2) {
            int digit2 = Character.digit(str.charAt(i4), 10);
            if (digit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i3 = (i3 * 10) - digit2;
            i4++;
        }
        return -i3;
    }

    @Override // com.google.gson.TypeAdapter
    public Date read(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String nextString = jsonReader.nextString();
        try {
            return parse(nextString, new ParsePosition(0));
        } catch (ParseException e) {
            Logger.m296e(LOG_TAG, String.format(Locale.US, PARSING_ERROR_FORMAT, nextString), e, new Object[0]);
            return null;
        }
    }

    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.nullValue();
        } else {
            jsonWriter.value(format(date));
        }
    }
}
