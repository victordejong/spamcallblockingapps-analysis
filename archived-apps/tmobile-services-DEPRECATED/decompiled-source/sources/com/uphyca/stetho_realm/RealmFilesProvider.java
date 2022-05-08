package com.uphyca.stetho_realm;

import com.facebook.stetho.inspector.database.DatabaseFilesProvider;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/uphyca/stetho_realm/RealmFilesProvider.class */
public class RealmFilesProvider implements DatabaseFilesProvider {
    private final Pattern databaseNamePattern;
    private final File folder;

    public RealmFilesProvider(File file, Pattern pattern) {
        this.folder = file;
        this.databaseNamePattern = pattern;
    }

    @Override // com.facebook.stetho.inspector.database.DatabaseFilesProvider
    public List<File> getDatabaseFiles() {
        File file = this.folder;
        String[] list = file.list(new FilenameFilter() { // from class: com.uphyca.stetho_realm.RealmFilesProvider.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file2, String str) {
                return RealmFilesProvider.this.databaseNamePattern.matcher(str).matches();
            }
        });
        ArrayList arrayList = new ArrayList();
        if (list == null) {
            return arrayList;
        }
        for (String str : list) {
            File file2 = new File(file, str);
            if (file2.isFile() && file2.canRead()) {
                arrayList.add(file2);
            }
        }
        return arrayList;
    }
}
