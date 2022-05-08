package org.simpleframework.xml.stream;

import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/stream/NamespaceMap.class */
public interface NamespaceMap extends Iterable<String> {
    String getPrefix();

    String getPrefix(String str);

    String getReference(String str);

    @Override // java.lang.Iterable
    Iterator<String> iterator();

    String setReference(String str);

    String setReference(String str, String str2);
}
