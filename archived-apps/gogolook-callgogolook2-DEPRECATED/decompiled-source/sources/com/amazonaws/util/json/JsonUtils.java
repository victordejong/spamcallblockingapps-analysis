package com.amazonaws.util.json;

import com.amazonaws.AmazonClientException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/util/json/JsonUtils.class */
public class JsonUtils {
    public static volatile AwsJsonFactory factory = new GsonFactory();

    public static AwsJsonReader getJsonReader(Reader reader) {
        if (factory != null) {
            return factory.getJsonReader(reader);
        }
        throw new IllegalStateException("Json engine is unavailable.");
    }

    public static Map<String, String> jsonToMap(Reader reader) {
        AwsJsonReader jsonReader = getJsonReader(reader);
        try {
            if (jsonReader.peek() == null) {
                return Collections.EMPTY_MAP;
            }
            HashMap hashMap = new HashMap();
            jsonReader.beginObject();
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.isContainer()) {
                    jsonReader.skipValue();
                } else {
                    hashMap.put(nextName, jsonReader.nextString());
                }
            }
            jsonReader.endObject();
            jsonReader.close();
            return Collections.unmodifiableMap(hashMap);
        } catch (IOException e) {
            throw new AmazonClientException("Unable to parse JSON String.", e);
        }
    }

    public static Map<String, String> jsonToMap(String str) {
        return (str == null || str.isEmpty()) ? Collections.EMPTY_MAP : jsonToMap(new StringReader(str));
    }
}
