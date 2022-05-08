package org.apache.commons.p018io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
/* renamed from: org.apache.commons.io.comparator.DefaultFileComparator */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/comparator/DefaultFileComparator.class */
public class DefaultFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> DEFAULT_COMPARATOR = new DefaultFileComparator();
    public static final Comparator<File> DEFAULT_REVERSE = new ReverseComparator(DEFAULT_COMPARATOR);
    private static final long serialVersionUID = 3260141861365313518L;

    public int compare(File file, File file2) {
        return file.compareTo(file2);
    }

    @Override // org.apache.commons.p018io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ List sort(List list) {
        return super.sort(list);
    }

    @Override // org.apache.commons.p018io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ File[] sort(File[] fileArr) {
        return super.sort(fileArr);
    }

    @Override // org.apache.commons.p018io.comparator.AbstractFileComparator
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
