package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.type.TypeReference;
import java.io.IOException;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/ObjectCodec.class */
public abstract class ObjectCodec extends TreeCodec implements Versioned {
    public abstract <T extends TreeNode> T readTree(JsonParser jsonParser) throws IOException, JsonProcessingException;

    public abstract <T> T readValue(JsonParser jsonParser, TypeReference<?> typeReference) throws IOException, JsonProcessingException;

    public abstract <T> T readValue(JsonParser jsonParser, Class<T> cls) throws IOException, JsonProcessingException;

    public abstract <T> Iterator<T> readValues(JsonParser jsonParser, TypeReference<?> typeReference) throws IOException, JsonProcessingException;

    public abstract <T> Iterator<T> readValues(JsonParser jsonParser, Class<T> cls) throws IOException, JsonProcessingException;

    public abstract void writeTree(JsonGenerator jsonGenerator, TreeNode treeNode) throws IOException, JsonProcessingException;

    public abstract void writeValue(JsonGenerator jsonGenerator, Object obj) throws IOException, JsonProcessingException;
}
