package com.tmobile.tmoid.helperlib.impl;

import java.util.Vector;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/impl/FixedStringList.class */
public class FixedStringList extends Vector<String> {
    @Override // java.util.Vector, java.util.AbstractCollection
    public String toString() {
        synchronized (this) {
            String str = "";
            synchronized (this) {
                for (int i = 0; i < size(); i++) {
                    str = str + elementAt(i) + "\n";
                }
            }
            return str;
        }
        return str;
    }
}
