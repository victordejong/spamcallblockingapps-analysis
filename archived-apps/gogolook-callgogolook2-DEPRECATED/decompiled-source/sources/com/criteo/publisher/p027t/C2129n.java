package com.criteo.publisher.p027t;

import android.content.Context;
import android.util.AtomicFile;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.p020a0.C1917h;
import java.io.File;
import java.io.FilenameFilter;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
/* renamed from: com.criteo.publisher.t.n */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/n.class */
public class C2129n {
    @NonNull

    /* renamed from: a */
    public final Context f2422a;
    @NonNull

    /* renamed from: b */
    public final C1917h f2423b;
    @NonNull

    /* renamed from: c */
    public final C2134q f2424c;

    /* renamed from: com.criteo.publisher.t.n$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/t/n$a.class */
    public class C2130a implements FilenameFilter {
        public C2130a(C2129n nVar) {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".csm");
        }
    }

    public C2129n(@NonNull Context context, @NonNull C1917h hVar, @NonNull C2134q qVar) {
        this.f2422a = context;
        this.f2423b = hVar;
        this.f2424c = qVar;
    }

    @NonNull
    /* renamed from: b */
    private String m35652b(@NonNull File file) {
        String name = file.getName();
        return name.substring(0, name.length() - 4);
    }

    @NonNull
    /* renamed from: b */
    private String m35651b(@NonNull String str) {
        return str + ".csm";
    }

    @NonNull
    @RequiresApi(api = 17)
    /* renamed from: a */
    public C2148y m35655a(@NonNull File file) {
        return new C2148y(m35652b(file), new AtomicFile(file), this.f2424c);
    }

    @NonNull
    @VisibleForTesting
    /* renamed from: a */
    public File m35656a() {
        return this.f2422a.getDir(this.f2423b.m36032e(), 0);
    }

    @NonNull
    /* renamed from: a */
    public File m35654a(@NonNull String str) {
        return new File(m35656a(), m35651b(str));
    }

    /* renamed from: b */
    public Collection<File> m35653b() {
        File[] listFiles = m35656a().listFiles(new C2130a(this));
        return listFiles == null ? Collections.emptyList() : Arrays.asList(listFiles);
    }
}
