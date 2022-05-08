package org.apache.commons.p018io.filefilter;

import java.io.File;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.filefilter.SizeFileFilter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/filefilter/SizeFileFilter.class */
public class SizeFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = 7388077430788600069L;
    private final boolean acceptLarger;
    private final long size;

    public SizeFileFilter(long j) {
        this(j, true);
    }

    public SizeFileFilter(long j, boolean z) {
        if (j < 0) {
            throw new IllegalArgumentException("The size must be non-negative");
        }
        this.size = j;
        this.acceptLarger = z;
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter, org.apache.commons.p018io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) {
        boolean z = file.length() < this.size;
        boolean z2 = z;
        if (this.acceptLarger) {
            z2 = !z;
        }
        return z2;
    }

    @Override // org.apache.commons.p018io.filefilter.AbstractFileFilter
    public String toString() {
        String str = this.acceptLarger ? ">=" : "<";
        return super.toString() + "(" + str + this.size + ")";
    }
}
