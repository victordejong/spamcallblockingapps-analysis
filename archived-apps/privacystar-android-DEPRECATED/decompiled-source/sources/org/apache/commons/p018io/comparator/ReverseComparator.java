package org.apache.commons.p018io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
/* renamed from: org.apache.commons.io.comparator.ReverseComparator */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/comparator/ReverseComparator.class */
class ReverseComparator extends AbstractFileComparator implements Serializable {
    private static final long serialVersionUID = -4808255005272229056L;
    private final Comparator<File> delegate;

    public ReverseComparator(Comparator<File> comparator) {
        if (comparator == null) {
            throw new IllegalArgumentException("Delegate comparator is missing");
        }
        this.delegate = comparator;
    }

    public int compare(File file, File file2) {
        return this.delegate.compare(file2, file);
    }

    @Override // org.apache.commons.p018io.comparator.AbstractFileComparator
    public String toString() {
        return super.toString() + "[" + this.delegate.toString() + "]";
    }
}
