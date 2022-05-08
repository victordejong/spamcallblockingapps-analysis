package com.aotter.net.gson.internal.bind;

import com.aotter.net.gson.Gson;
import com.aotter.net.gson.JsonElement;
import com.aotter.net.gson.JsonPrimitive;
import com.aotter.net.gson.JsonSyntaxException;
import com.aotter.net.gson.TypeAdapter;
import com.aotter.net.gson.TypeAdapterFactory;
import com.aotter.net.gson.internal.C$Gson$Types;
import com.aotter.net.gson.internal.ConstructorConstructor;
import com.aotter.net.gson.internal.JsonReaderInternalAccess;
import com.aotter.net.gson.internal.ObjectConstructor;
import com.aotter.net.gson.internal.Streams;
import com.aotter.net.gson.reflect.TypeToken;
import com.aotter.net.gson.stream.JsonReader;
import com.aotter.net.gson.stream.JsonToken;
import com.aotter.net.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;
import p459j.p460a.p582w0.p590x4.C14247d;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/MapTypeAdapterFactory.class */
public final class MapTypeAdapterFactory implements TypeAdapterFactory {
    public final boolean complexMapKeySerialization;
    public final ConstructorConstructor constructorConstructor;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/MapTypeAdapterFactory$Adapter.class */
    public final class Adapter<K, V> extends TypeAdapter<Map<K, V>> {
        public final ObjectConstructor<? extends Map<K, V>> constructor;
        public final TypeAdapter<K> keyTypeAdapter;
        public final TypeAdapter<V> valueTypeAdapter;

        public Adapter(Gson gson, Type type, TypeAdapter<K> typeAdapter, Type type2, TypeAdapter<V> typeAdapter2, ObjectConstructor<? extends Map<K, V>> objectConstructor) {
            this.keyTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.valueTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter2, type2);
            this.constructor = objectConstructor;
        }

        private String keyToString(JsonElement jsonElement) {
            if (jsonElement.isJsonPrimitive()) {
                JsonPrimitive asJsonPrimitive = jsonElement.getAsJsonPrimitive();
                if (asJsonPrimitive.isNumber()) {
                    return String.valueOf(asJsonPrimitive.getAsNumber());
                }
                if (asJsonPrimitive.isBoolean()) {
                    return Boolean.toString(asJsonPrimitive.getAsBoolean());
                }
                if (asJsonPrimitive.isString()) {
                    return asJsonPrimitive.getAsString();
                }
                throw new AssertionError();
            } else if (jsonElement.isJsonNull()) {
                return C14247d.f31851f;
            } else {
                throw new AssertionError();
            }
        }

        @Override // com.aotter.net.gson.TypeAdapter
        public Map<K, V> read(JsonReader jsonReader) {
            JsonToken peek = jsonReader.peek();
            if (peek == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Map<K, V> map = (Map) this.constructor.construct();
            if (peek == JsonToken.BEGIN_ARRAY) {
                jsonReader.beginArray();
                while (jsonReader.hasNext()) {
                    jsonReader.beginArray();
                    K read = this.keyTypeAdapter.read(jsonReader);
                    if (map.put(read, this.valueTypeAdapter.read(jsonReader)) == null) {
                        jsonReader.endArray();
                    } else {
                        throw new JsonSyntaxException("duplicate key: " + read);
                    }
                }
                jsonReader.endArray();
            } else {
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    JsonReaderInternalAccess.INSTANCE.promoteNameToValue(jsonReader);
                    K read2 = this.keyTypeAdapter.read(jsonReader);
                    if (map.put(read2, this.valueTypeAdapter.read(jsonReader)) != null) {
                        throw new JsonSyntaxException("duplicate key: " + read2);
                    }
                }
                jsonReader.endObject();
            }
            return map;
        }

        @Override // com.aotter.net.gson.TypeAdapter
        public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) {
            write(jsonWriter, (Map) ((Map) obj));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void write(JsonWriter jsonWriter, Map<K, V> map) {
            if (map == null) {
                jsonWriter.nullValue();
            } else if (!MapTypeAdapterFactory.this.complexMapKeySerialization) {
                jsonWriter.beginObject();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    jsonWriter.name(String.valueOf(entry.getKey()));
                    this.valueTypeAdapter.write(jsonWriter, entry.getValue());
                }
                jsonWriter.endObject();
            } else {
                ArrayList arrayList = new ArrayList(map.size());
                ArrayList arrayList2 = new ArrayList(map.size());
                boolean z = false;
                for (Map.Entry<K, V> entry2 : map.entrySet()) {
                    JsonElement jsonTree = this.keyTypeAdapter.toJsonTree(entry2.getKey());
                    arrayList.add(jsonTree);
                    arrayList2.add(entry2.getValue());
                    z |= jsonTree.isJsonArray() || jsonTree.isJsonObject();
                }
                if (z) {
                    jsonWriter.beginArray();
                    for (int i = 0; i < arrayList.size(); i++) {
                        jsonWriter.beginArray();
                        Streams.write((JsonElement) arrayList.get(i), jsonWriter);
                        this.valueTypeAdapter.write(jsonWriter, arrayList2.get(i));
                        jsonWriter.endArray();
                    }
                    jsonWriter.endArray();
                    return;
                }
                jsonWriter.beginObject();
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    jsonWriter.name(keyToString((JsonElement) arrayList.get(i2)));
                    this.valueTypeAdapter.write(jsonWriter, arrayList2.get(i2));
                }
                jsonWriter.endObject();
            }
        }
    }

    public MapTypeAdapterFactory(ConstructorConstructor constructorConstructor, boolean z) {
        this.constructorConstructor = constructorConstructor;
        this.complexMapKeySerialization = z;
    }

    private TypeAdapter<?> getKeyAdapter(Gson gson, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? TypeAdapters.BOOLEAN_AS_STRING : gson.getAdapter(TypeToken.get(type));
    }

    @Override // com.aotter.net.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        if (!Map.class.isAssignableFrom(typeToken.getRawType())) {
            return null;
        }
        Type[] mapKeyAndValueTypes = C$Gson$Types.getMapKeyAndValueTypes(type, C$Gson$Types.getRawType(type));
        return new Adapter(gson, mapKeyAndValueTypes[0], getKeyAdapter(gson, mapKeyAndValueTypes[0]), mapKeyAndValueTypes[1], gson.getAdapter(TypeToken.get(mapKeyAndValueTypes[1])), this.constructorConstructor.get(typeToken));
    }
}
