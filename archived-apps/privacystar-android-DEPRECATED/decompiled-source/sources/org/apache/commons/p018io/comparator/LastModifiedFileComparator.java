package org.apache.commons.p018io.comparator;

import java.io.File;
import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
/* renamed from: org.apache.commons.io.comparator.LastModifiedFileComparator */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/comparator/LastModifiedFileComparator.class */
public class LastModifiedFileComparator extends AbstractFileComparator implements Serializable {
    public static final Comparator<File> LASTMODIFIED_COMPARATOR = new LastModifiedFileComparator();
    public static final Comparator<File> LASTMODIFIED_REVERSE = new ReverseComparator(LASTMODIFIED_COMPARATOR);
    private static final long serialVersionUID = 7372168004395734046L;

    public int compare(File file, File file2) {
        int i = ((file.lastModified() - file2.lastModified()) > 0L ? 1 : ((file.lastModified() - file2.lastModified()) == 0L ? 0 : -1));
        if (i < 0) {
            return -1;
        }
        return i > 0 ? 1 : 0;
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
