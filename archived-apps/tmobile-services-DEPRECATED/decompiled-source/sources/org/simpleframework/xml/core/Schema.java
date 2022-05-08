package org.simpleframework.xml.core;

import org.simpleframework.xml.Version;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Schema.class */
public interface Schema {
    Caller getCaller();

    Decorator getDecorator();

    Instantiator getInstantiator();

    Version getRevision();

    Section getSection();

    Label getText();

    Label getVersion();

    boolean isPrimitive();
}
