package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.filefilter.TrueFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/TrueFileFilter.class */
public class TrueFileFilter implements IOFileFilter, Serializable {
    private static final long serialVersionUID = 8782512160909720199L;
    public static final IOFileFilter TRUE = new TrueFileFilter();
    public static final IOFileFilter INSTANCE = TRUE;

    protected TrueFileFilter() {
    }

    @Override // org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return true;
    }

    @Override // org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return true;
    }
}
