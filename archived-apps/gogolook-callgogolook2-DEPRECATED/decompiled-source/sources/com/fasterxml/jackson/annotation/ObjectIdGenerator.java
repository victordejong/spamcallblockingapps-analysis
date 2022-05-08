package com.fasterxml.jackson.annotation;

import androidx.media2.exoplayer.external.source.hls.playlist.HlsPlaylistParser;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/ObjectIdGenerator.class */
public abstract class ObjectIdGenerator<T> implements Serializable {

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey.class */
    public static final class IdKey implements Serializable {
        public final int hashCode;
        public final Object key;
        public final Class<?> scope;
        public final Class<?> type;

        public IdKey(Class<?> cls, Class<?> cls2, Object obj) {
            if (obj != null) {
                this.type = cls;
                this.scope = cls2;
                this.key = obj;
                int hashCode = obj.hashCode() + cls.getName().hashCode();
                this.hashCode = cls2 != null ? hashCode ^ cls2.getName().hashCode() : hashCode;
                return;
            }
            throw new IllegalArgumentException("Can not construct IdKey for null key");
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (obj == this) {
                return true;
            }
            if (obj == null || obj.getClass() != IdKey.class) {
                return false;
            }
            IdKey idKey = (IdKey) obj;
            if (!(idKey.key.equals(this.key) && idKey.type == this.type && idKey.scope == this.scope)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return this.hashCode;
        }

        public String toString() {
            Object obj = this.key;
            Class<?> cls = this.type;
            String str = HlsPlaylistParser.METHOD_NONE;
            String name = cls == null ? HlsPlaylistParser.METHOD_NONE : cls.getName();
            Class<?> cls2 = this.scope;
            if (cls2 != null) {
                str = cls2.getName();
            }
            return String.format("[ObjectId: key=%s, type=%s, scope=%s]", obj, name, str);
        }
    }

    public abstract boolean canUseFor(ObjectIdGenerator<?> objectIdGenerator);

    public abstract ObjectIdGenerator<T> forScope(Class<?> cls);

    public abstract T generateId(Object obj);

    public abstract Class<?> getScope();

    public boolean isValidReferencePropertyName(String str, Object obj) {
        return false;
    }

    public abstract IdKey key(Object obj);

    public boolean maySerializeAsObject() {
        return false;
    }

    public abstract ObjectIdGenerator<T> newForSerialization(Object obj);
}
