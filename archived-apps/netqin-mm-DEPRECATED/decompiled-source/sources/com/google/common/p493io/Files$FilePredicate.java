package com.google.common.p493io;

import java.io.File;
import p131c.p161d.p266c.p267a.AbstractC4934o;
import p131c.p161d.p266c.p271e.C5054b;
/* renamed from: com.google.common.io.Files$FilePredicate */
/* loaded from: classes2-dex2jar.jar:com/google/common/io/Files$FilePredicate.class */
public enum Files$FilePredicate implements AbstractC4934o<File> {
    IS_DIRECTORY { // from class: com.google.common.io.Files$FilePredicate.1
        public boolean apply(File file) {
            return file.isDirectory();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Files.isDirectory()";
        }
    },
    IS_FILE { // from class: com.google.common.io.Files$FilePredicate.2
        public boolean apply(File file) {
            return file.isFile();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Files.isFile()";
        }
    };

    /* synthetic */ Files$FilePredicate(C5054b bVar) {
        this();
    }
}
