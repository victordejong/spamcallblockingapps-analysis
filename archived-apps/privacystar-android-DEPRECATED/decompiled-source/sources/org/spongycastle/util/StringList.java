package org.spongycastle.util;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/StringList.class */
public interface StringList extends Iterable<String> {
    boolean add(String str);

    String get(int i);

    int size();

    String[] toStringArray();

    String[] toStringArray(int i, int i2);
}
