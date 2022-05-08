package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.filefilter.FalseFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/FalseFileFilter.class */
public class FalseFileFilter implements IOFileFilter, Serializable {
    public static final IOFileFilter FALSE = new FalseFileFilter();
    public static final IOFileFilter INSTANCE = FALSE;
    private static final long serialVersionUID = 6210271677940926200L;

    protected FalseFileFilter() {
    }

    @Override // org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        return false;
    }

    @Override // org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FilenameFilter
    public boolean accept(File file, String str) {
        return false;
    }
}
