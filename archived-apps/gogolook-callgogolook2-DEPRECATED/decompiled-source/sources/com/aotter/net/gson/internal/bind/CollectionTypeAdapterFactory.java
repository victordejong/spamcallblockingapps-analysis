package com.aotter.net.gson.internal.bind;

import com.aotter.net.gson.Gson;
import com.aotter.net.gson.TypeAdapter;
import com.aotter.net.gson.TypeAdapterFactory;
import com.aotter.net.gson.internal.C$Gson$Types;
import com.aotter.net.gson.internal.ConstructorConstructor;
import com.aotter.net.gson.internal.ObjectConstructor;
import com.aotter.net.gson.reflect.TypeToken;
import com.aotter.net.gson.stream.JsonReader;
import com.aotter.net.gson.stream.JsonToken;
import com.aotter.net.gson.stream.JsonWriter;
import java.lang.reflect.Type;
import java.util.Collection;
/* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/CollectionTypeAdapterFactory.class */
public final class CollectionTypeAdapterFactory implements TypeAdapterFactory {
    public final ConstructorConstructor constructorConstructor;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/gson/internal/bind/CollectionTypeAdapterFactory$Adapter.class */
    public final class Adapter<E> extends TypeAdapter<Collection<E>> {
        public final ObjectConstructor<? extends Collection<E>> constructor;
        public final TypeAdapter<E> elementTypeAdapter;

        public Adapter(Gson gson, Type type, TypeAdapter<E> typeAdapter, ObjectConstructor<? extends Collection<E>> objectConstructor) {
            this.elementTypeAdapter = new TypeAdapterRuntimeTypeWrapper(gson, typeAdapter, type);
            this.constructor = objectConstructor;
        }

        @Override // com.aotter.net.gson.TypeAdapter
        public Collection<E> read(JsonReader jsonReader) {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            Collection<E> collection = (Collection) this.constructor.construct();
            jsonReader.beginArray();
            while (jsonReader.hasNext()) {
                collection.add(this.elementTypeAdapter.read(jsonReader));
            }
            jsonReader.endArray();
            return collection;
        }

        @Override // com.aotter.net.gson.TypeAdapter
        public /* bridge */ /* synthetic */ void write(JsonWriter jsonWriter, Object obj) {
            write(jsonWriter, (Collection) ((Collection) obj));
        }

        public void write(JsonWriter jsonWriter, Collection<E> collection) {
            if (collection == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginArray();
            for (E e : collection) {
                this.elementTypeAdapter.write(jsonWriter, e);
            }
            jsonWriter.endArray();
        }
    }

    public CollectionTypeAdapterFactory(ConstructorConstructor constructorConstructor) {
        this.constructorConstructor = constructorConstructor;
    }

    @Override // com.aotter.net.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
        Type type = typeToken.getType();
        Class<? super T> rawType = typeToken.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type collectionElementType = C$Gson$Types.getCollectionElementType(type, rawType);
        return new Adapter(gson, collectionElementType, gson.getAdapter(TypeToken.get(collectionElementType)), this.constructorConstructor.get(typeToken));
    }
}
