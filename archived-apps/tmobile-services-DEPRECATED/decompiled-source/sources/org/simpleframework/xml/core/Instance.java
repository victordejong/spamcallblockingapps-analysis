package org.simpleframework.xml.core;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Instance.class */
interface Instance {
    Object getInstance() throws Exception;

    Class getType();

    boolean isReference();

    Object setInstance(Object obj) throws Exception;
}
