package org.simpleframework.xml.core;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/Expression.class */
interface Expression extends Iterable<String> {
    String getAttribute(String str);

    String getElement(String str);

    String getFirst();

    int getIndex();

    String getLast();

    String getPath();

    Expression getPath(int i);

    Expression getPath(int i, int i2);

    String getPrefix();

    boolean isAttribute();

    boolean isEmpty();

    boolean isPath();

    String toString();
}
