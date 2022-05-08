package org.msgpack.jackson.dataformat;
/* loaded from: classes3-dex2jar.jar:org/msgpack/jackson/dataformat/Tuple.class */
public class Tuple<F, S> {
    public final F first;
    public final S second;

    public Tuple(F f, S s) {
        this.first = f;
        this.second = s;
    }

    public F first() {
        return this.first;
    }

    public S second() {
        return this.second;
    }
}
