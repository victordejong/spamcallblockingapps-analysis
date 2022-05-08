package com.fasterxml.jackson.core;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/JsonStreamContext.class */
public abstract class JsonStreamContext {
    public int _index;
    public int _type;

    public final int getCurrentIndex() {
        int i = this._index;
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        return i2;
    }

    public abstract Object getCurrentValue();

    public final int getEntryCount() {
        return this._index + 1;
    }

    public abstract JsonStreamContext getParent();

    public final String getTypeDesc() {
        int i = this._type;
        return i != 0 ? i != 1 ? i != 2 ? "?" : "OBJECT" : "ARRAY" : "ROOT";
    }

    public final boolean inArray() {
        boolean z = true;
        if (this._type != 1) {
            z = false;
        }
        return z;
    }

    public final boolean inObject() {
        return this._type == 2;
    }

    public final boolean inRoot() {
        return this._type == 0;
    }

    public abstract void setCurrentValue(Object obj);
}
