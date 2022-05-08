package org.apache.commons.p018io.monitor;

import java.io.File;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.monitor.FileEntry */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/monitor/FileEntry.class */
public class FileEntry implements Serializable {
    static final FileEntry[] EMPTY_ENTRIES = new FileEntry[0];
    private static final long serialVersionUID = -2505664948818681153L;
    private FileEntry[] children;
    private boolean directory;
    private boolean exists;
    private final File file;
    private long lastModified;
    private long length;
    private String name;
    private final FileEntry parent;

    public FileEntry(File file) {
        this(null, file);
    }

    public FileEntry(FileEntry fileEntry, File file) {
        if (file == null) {
            throw new IllegalArgumentException("File is missing");
        }
        this.file = file;
        this.parent = fileEntry;
        this.name = file.getName();
    }

    public FileEntry[] getChildren() {
        return this.children != null ? this.children : EMPTY_ENTRIES;
    }

    public File getFile() {
        return this.file;
    }

    public long getLastModified() {
        return this.lastModified;
    }

    public long getLength() {
        return this.length;
    }

    public int getLevel() {
        return this.parent == null ? 0 : this.parent.getLevel() + 1;
    }

    public String getName() {
        return this.name;
    }

    public FileEntry getParent() {
        return this.parent;
    }

    public boolean isDirectory() {
        return this.directory;
    }

    public boolean isExists() {
        return this.exists;
    }

    public FileEntry newChildInstance(File file) {
        return new FileEntry(this, file);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v7 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean refresh(java.io.File r6) {
        /*
            r5 = this;
            r0 = r5
            boolean r0 = r0.exists
            r7 = r0
            r0 = r5
            long r0 = r0.lastModified
            r8 = r0
            r0 = r5
            boolean r0 = r0.directory
            r10 = r0
            r0 = r5
            long r0 = r0.length
            r11 = r0
            r0 = r5
            r1 = r6
            java.lang.String r1 = r1.getName()
            r0.name = r1
            r0 = r5
            r1 = r6
            boolean r1 = r1.exists()
            r0.exists = r1
            r0 = r5
            boolean r0 = r0.exists
            r13 = r0
            r0 = 0
            r14 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0041
            r0 = r6
            boolean r0 = r0.isDirectory()
            if (r0 == 0) goto L_0x0041
            r0 = 1
            r13 = r0
            goto L_0x0044
        L_0x0041:
            r0 = 0
            r13 = r0
        L_0x0044:
            r0 = r5
            r1 = r13
            r0.directory = r1
            r0 = r5
            boolean r0 = r0.exists
            r13 = r0
            r0 = 0
            r15 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0061
            r0 = r6
            long r0 = r0.lastModified()
            r17 = r0
            goto L_0x0064
        L_0x0061:
            r0 = 0
            r17 = r0
        L_0x0064:
            r0 = r5
            r1 = r17
            r0.lastModified = r1
            r0 = r15
            r17 = r0
            r0 = r5
            boolean r0 = r0.exists
            if (r0 == 0) goto L_0x0086
            r0 = r15
            r17 = r0
            r0 = r5
            boolean r0 = r0.directory
            if (r0 != 0) goto L_0x0086
            r0 = r6
            long r0 = r0.length()
            r17 = r0
        L_0x0086:
            r0 = r5
            r1 = r17
            r0.length = r1
            r0 = r5
            boolean r0 = r0.exists
            r1 = r7
            if (r0 != r1) goto L_0x00b4
            r0 = r5
            long r0 = r0.lastModified
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x00b4
            r0 = r5
            boolean r0 = r0.directory
            r1 = r10
            if (r0 != r1) goto L_0x00b4
            r0 = r14
            r13 = r0
            r0 = r5
            long r0 = r0.length
            r1 = r11
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x00b7
        L_0x00b4:
            r0 = 1
            r13 = r0
        L_0x00b7:
            r0 = r13
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.monitor.FileEntry.refresh(java.io.File):boolean");
    }

    public void setChildren(FileEntry[] fileEntryArr) {
        this.children = fileEntryArr;
    }

    public void setDirectory(boolean z) {
        this.directory = z;
    }

    public void setExists(boolean z) {
        this.exists = z;
    }

    public void setLastModified(long j) {
        this.lastModified = j;
    }

    public void setLength(long j) {
        this.length = j;
    }

    public void setName(String str) {
        this.name = str;
    }
}
