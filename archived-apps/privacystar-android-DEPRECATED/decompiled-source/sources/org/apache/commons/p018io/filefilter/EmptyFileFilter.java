package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.filefilter.EmptyFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/EmptyFileFilter.class */
public class EmptyFileFilter extends AbstractFileFilter implements Serializable {
    public static final IOFileFilter EMPTY = new EmptyFileFilter();
    public static final IOFileFilter NOT_EMPTY = new NotFileFilter(EMPTY);
    private static final long serialVersionUID = 3631422087512832211L;

    protected EmptyFileFilter() {
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        boolean z = true;
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            boolean z2 = true;
            if (listFiles != null) {
                z2 = listFiles.length == 0;
            }
            return z2;
        }
        if (file.length() != 0) {
            z = false;
        }
        return z;
    }
}
