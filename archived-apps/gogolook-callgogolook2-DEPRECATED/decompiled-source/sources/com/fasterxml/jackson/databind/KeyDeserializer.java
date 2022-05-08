package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonProcessingException;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/KeyDeserializer.class */
public abstract class KeyDeserializer {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/KeyDeserializer$None.class */
    public static abstract class None extends KeyDeserializer {
    }

    public abstract Object deserializeKey(String str, DeserializationContext deserializationContext) throws IOException, JsonProcessingException;
}
