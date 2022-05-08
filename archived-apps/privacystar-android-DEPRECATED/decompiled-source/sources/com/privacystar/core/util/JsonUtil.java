package com.privacystar.core.util;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/JsonUtil.class */
public class JsonUtil {
    public static String escape(String str) {
        if (Text.isBlank(str)) {
            return "\"\"";
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length + 4);
        stringBuffer.append('\"');
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                stringBuffer.append("\\\\\"");
            } else if (charAt == '\'') {
                stringBuffer.append("\\'");
            } else if (charAt == '/') {
                stringBuffer.append("\\/");
            } else if (charAt == '\\') {
                stringBuffer.append("\\\\\\\\");
            } else if (charAt == '{') {
                stringBuffer.append("\\{");
            } else if (charAt != '}') {
                switch (charAt) {
                    case '\b':
                        stringBuffer.append("\\\\b");
                        continue;
                    case '\t':
                        stringBuffer.append("\\\\t");
                        continue;
                    case '\n':
                        stringBuffer.append("\\\\n");
                        continue;
                    default:
                        switch (charAt) {
                            case '\f':
                                stringBuffer.append("\\\\f");
                                continue;
                            case '\r':
                                stringBuffer.append("\\\\r");
                                continue;
                            default:
                                if (charAt >= ' ') {
                                    stringBuffer.append(charAt);
                                    break;
                                } else {
                                    String str2 = "000" + Integer.toHexString(charAt);
                                    stringBuffer.append("\\u" + str2.substring(str2.length() - 4));
                                    continue;
                                    continue;
                                }
                        }
                }
            } else {
                stringBuffer.append("\\}");
            }
        }
        stringBuffer.append('\"');
        return stringBuffer.toString();
    }

    public static String jsonObjectToString(JSONObject jSONObject) {
        String obj;
        if (jSONObject == null) {
            return "";
        }
        try {
            StringWriter stringWriter = new StringWriter();
            synchronized (stringWriter.getBuffer()) {
                obj = write(stringWriter, jSONObject).toString();
            }
            return obj;
        } catch (JSONException e) {
            Timber.m32e(e, "", new Object[0]);
            return null;
        }
    }

    public static String lightEscape(String str, boolean z) {
        if (Text.isBlank(str)) {
            return z ? "\"\"" : "";
        }
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length + 4);
        if (z) {
            stringBuffer.append('\"');
        }
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\"') {
                stringBuffer.append("\\\"");
            } else if (charAt == '\'') {
                stringBuffer.append("\\'");
            } else if (charAt == '/') {
                stringBuffer.append("\\/");
            } else if (charAt == '\\') {
                stringBuffer.append("\\\\");
            } else if (charAt == '{') {
                stringBuffer.append("\\{");
            } else if (charAt != '}') {
                switch (charAt) {
                    case '\b':
                        stringBuffer.append("\\b");
                        continue;
                    case '\t':
                        stringBuffer.append("\\t");
                        continue;
                    case '\n':
                        stringBuffer.append("\\n");
                        continue;
                    default:
                        switch (charAt) {
                            case '\f':
                                stringBuffer.append("\\f");
                                continue;
                            case '\r':
                                stringBuffer.append("\\r");
                                continue;
                            default:
                                if (charAt >= ' ') {
                                    stringBuffer.append(charAt);
                                    break;
                                } else {
                                    String str2 = "000" + Integer.toHexString(charAt);
                                    stringBuffer.append("\\u" + str2.substring(str2.length() - 4));
                                    continue;
                                    continue;
                                }
                        }
                }
            } else {
                stringBuffer.append("\\}");
            }
        }
        if (z) {
            stringBuffer.append('\"');
        }
        return stringBuffer.toString();
    }

    private static Writer write(Writer writer, JSONObject jSONObject) throws JSONException {
        int length;
        boolean z = false;
        if (jSONObject != null) {
            try {
                length = jSONObject.length();
            } catch (IOException e) {
                throw new JSONException(e.getMessage());
            }
        } else {
            length = 0;
        }
        Iterator<String> keys = jSONObject != null ? jSONObject.keys() : null;
        writer.write(123);
        if (length == 1) {
            String next = keys.next();
            writer.write(escape(next));
            writer.write(58);
            writeValue(writer, jSONObject.get(next));
        } else if (length != 0) {
            while (keys.hasNext()) {
                String next2 = keys.next();
                if (z) {
                    writer.write(44);
                }
                writer.write(escape(next2));
                writer.write(58);
                writeValue(writer, jSONObject.get(next2));
                z = true;
            }
        }
        writer.write(125);
        return writer;
    }

    public static String writeJSONArray(JSONArray jSONArray, Writer writer) throws IOException {
        writer.append('[');
        int length = jSONArray != null ? jSONArray.length() : 0;
        int i = 0;
        boolean z = false;
        while (i < length) {
            if (z) {
                writer.append(',');
            }
            try {
                writeValue(writer, jSONArray.get(i));
            } catch (JSONException e) {
                Timber.m32e(e, "", new Object[0]);
            }
            i++;
            z = true;
        }
        writer.append(']');
        return null;
    }

    private static Writer writeValue(Writer writer, Object obj) throws JSONException, IOException {
        if (obj == null) {
            writer.write("null");
        } else if (obj instanceof JSONObject) {
            write(writer, (JSONObject) obj);
        } else if (obj instanceof JSONArray) {
            writeJSONArray((JSONArray) obj, writer);
        } else if (obj instanceof Map) {
            write(writer, new JSONObject((Map) obj));
        } else if (obj instanceof Collection) {
            writeJSONArray(new JSONArray((Collection) obj), writer);
        } else if (obj.getClass().isArray()) {
            writeJSONArray(new JSONArray((Collection) Arrays.asList((Object[]) obj)), writer);
        } else if (obj instanceof Number) {
            writer.write(JSONObject.numberToString((Number) obj));
        } else if (obj instanceof Boolean) {
            writer.write(obj.toString());
        } else {
            writer.write(escape(obj.toString()));
        }
        return writer;
    }
}
