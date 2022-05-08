package io.realm.sync;
/* loaded from: classes3-dex2jar.jar:io/realm/sync/Subscription$State.class */
public enum Subscription$State {
    ERROR((byte) -1),
    PENDING((byte) 0),
    ACTIVE((byte) 1),
    INVALIDATED(null);
    
    public final Byte nativeValue;

    Subscription$State(Byte b) {
        this.nativeValue = b;
    }

    public Byte getValue() {
        return this.nativeValue;
    }
}
