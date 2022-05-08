package org.simpleframework.xml.transform;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/AtomicIntegerTransform.class */
class AtomicIntegerTransform implements Transform<AtomicInteger> {
    @Override // org.simpleframework.xml.transform.Transform
    public AtomicInteger read(String str) {
        return new AtomicInteger(Integer.valueOf(str).intValue());
    }

    public String write(AtomicInteger atomicInteger) {
        return atomicInteger.toString();
    }
}
