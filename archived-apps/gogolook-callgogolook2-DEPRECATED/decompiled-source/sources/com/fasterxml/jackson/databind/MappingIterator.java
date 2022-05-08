package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.JsonToken;
import java.io.Closeable;
import java.io.IOException;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/MappingIterator.class */
public class MappingIterator<T> implements Iterator<T>, Closeable {
    public final boolean _closeParser;
    public final DeserializationContext _context;
    public final JsonDeserializer<T> _deserializer;
    public final JsonParser _parser;
    public final JsonStreamContext _seqContext;
    public int _state;
    public final T _updatedValue;

    static {
        new MappingIterator(null, null, null, null, false, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x006a, code lost:
        if (r0 == com.fasterxml.jackson.core.JsonToken.START_ARRAY) goto L_0x006d;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MappingIterator(com.fasterxml.jackson.databind.JavaType r4, com.fasterxml.jackson.core.JsonParser r5, com.fasterxml.jackson.databind.DeserializationContext r6, com.fasterxml.jackson.databind.JsonDeserializer<?> r7, boolean r8, java.lang.Object r9) {
        /*
            r3 = this;
            r0 = r3
            r0.<init>()
            r0 = r3
            r1 = r5
            r0._parser = r1
            r0 = r3
            r1 = r6
            r0._context = r1
            r0 = r3
            r1 = r7
            r0._deserializer = r1
            r0 = r3
            r1 = r8
            r0._closeParser = r1
            r0 = r9
            if (r0 != 0) goto L_0x0027
            r0 = r3
            r1 = 0
            r0._updatedValue = r1
            goto L_0x002d
        L_0x0027:
            r0 = r3
            r1 = r9
            r0._updatedValue = r1
        L_0x002d:
            r0 = r5
            if (r0 != 0) goto L_0x003e
            r0 = r3
            r1 = 0
            r0._seqContext = r1
            r0 = r3
            r1 = 0
            r0._state = r1
            goto L_0x007c
        L_0x003e:
            r0 = r5
            com.fasterxml.jackson.core.JsonStreamContext r0 = r0.getParsingContext()
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0058
            r0 = r5
            boolean r0 = r0.isExpectedStartArrayToken()
            if (r0 == 0) goto L_0x0058
            r0 = r5
            r0.clearCurrentToken()
            r0 = r6
            r4 = r0
            goto L_0x0072
        L_0x0058:
            r0 = r5
            com.fasterxml.jackson.core.JsonToken r0 = r0.getCurrentToken()
            r5 = r0
            r0 = r5
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_OBJECT
            if (r0 == r1) goto L_0x006d
            r0 = r6
            r4 = r0
            r0 = r5
            com.fasterxml.jackson.core.JsonToken r1 = com.fasterxml.jackson.core.JsonToken.START_ARRAY
            if (r0 != r1) goto L_0x0072
        L_0x006d:
            r0 = r6
            com.fasterxml.jackson.core.JsonStreamContext r0 = r0.getParent()
            r4 = r0
        L_0x0072:
            r0 = r3
            r1 = r4
            r0._seqContext = r1
            r0 = r3
            r1 = 2
            r0._state = r1
        L_0x007c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.MappingIterator.<init>(com.fasterxml.jackson.databind.JavaType, com.fasterxml.jackson.core.JsonParser, com.fasterxml.jackson.databind.DeserializationContext, com.fasterxml.jackson.databind.JsonDeserializer, boolean, java.lang.Object):void");
    }

    public <R> R _handleIOException(IOException iOException) {
        throw new RuntimeException(iOException.getMessage(), iOException);
    }

    public <R> R _handleMappingException(JsonMappingException jsonMappingException) {
        throw new RuntimeJsonMappingException(jsonMappingException.getMessage(), jsonMappingException);
    }

    public void _resync() throws IOException {
        JsonParser jsonParser = this._parser;
        if (jsonParser.getParsingContext() != this._seqContext) {
            while (true) {
                JsonToken nextToken = jsonParser.nextToken();
                if (nextToken == JsonToken.END_ARRAY || nextToken == JsonToken.END_OBJECT) {
                    if (jsonParser.getParsingContext() == this._seqContext) {
                        jsonParser.clearCurrentToken();
                        return;
                    }
                } else if (nextToken == JsonToken.START_ARRAY || nextToken == JsonToken.START_OBJECT) {
                    jsonParser.skipChildren();
                } else if (nextToken == null) {
                    return;
                }
            }
        }
    }

    public <R> R _throwNoSuchElement() {
        throw new NoSuchElementException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this._state != 0) {
            this._state = 0;
            JsonParser jsonParser = this._parser;
            if (jsonParser != null) {
                jsonParser.close();
            }
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        try {
            return hasNextValue();
        } catch (JsonMappingException e) {
            _handleMappingException(e);
            throw null;
        } catch (IOException e2) {
            _handleIOException(e2);
            throw null;
        }
    }

    public boolean hasNextValue() throws IOException {
        JsonToken nextToken;
        JsonParser jsonParser;
        int i = this._state;
        if (i == 0) {
            return false;
        }
        if (i == 1) {
            _resync();
        } else if (i != 2) {
            return true;
        }
        if (this._parser.getCurrentToken() == null && ((nextToken = this._parser.nextToken()) == null || nextToken == JsonToken.END_ARRAY)) {
            this._state = 0;
            if (!this._closeParser || (jsonParser = this._parser) == null) {
                return false;
            }
            jsonParser.close();
            return false;
        }
        this._state = 3;
        return true;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            return nextValue();
        } catch (JsonMappingException e) {
            throw new RuntimeJsonMappingException(e.getMessage(), e);
        } catch (IOException e2) {
            throw new RuntimeException(e2.getMessage(), e2);
        }
    }

    public T nextValue() throws IOException {
        T t;
        int i = this._state;
        if (i == 0) {
            _throwNoSuchElement();
            throw null;
        } else if ((i == 1 || i == 2) && !hasNextValue()) {
            _throwNoSuchElement();
            throw null;
        } else {
            try {
                if (this._updatedValue == null) {
                    t = this._deserializer.deserialize(this._parser, this._context);
                } else {
                    this._deserializer.deserialize(this._parser, this._context, this._updatedValue);
                    t = this._updatedValue;
                }
                this._state = 2;
                this._parser.clearCurrentToken();
                return t;
            } catch (Throwable th) {
                this._state = 1;
                this._parser.clearCurrentToken();
                throw th;
            }
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
