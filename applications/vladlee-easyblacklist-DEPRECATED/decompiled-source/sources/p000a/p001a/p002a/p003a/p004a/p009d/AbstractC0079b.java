package p000a.p001a.p002a.p003a.p004a.p009d;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArrayList;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0032m;
import p000a.p001a.p002a.p003a.p004a.p006b.C0026j;
/* renamed from: a.a.a.a.a.d.b */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/d/b.class */
public abstract class AbstractC0079b<T> {
    public static final int MAX_BYTE_SIZE_PER_FILE = 8000;
    public static final int MAX_FILES_IN_BATCH = 1;
    public static final int MAX_FILES_TO_KEEP = 100;
    public static final String ROLL_OVER_FILE_NAME_SEPARATOR = "_";
    protected final Context context;
    protected final AbstractC0032m currentTimeProvider;
    private final int defaultMaxFilesToKeep;
    protected final AbstractC0082d eventStorage;
    protected volatile long lastRollOverTime;
    protected final List<AbstractC0083e> rollOverListeners = new CopyOnWriteArrayList();
    protected final AbstractC0078a<T> transform;

    /* renamed from: a.a.a.a.a.d.b$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/d/b$a.class */
    static final class C0080a {

        /* renamed from: a */
        final File f155a;

        /* renamed from: b */
        final long f156b;

        public C0080a(File file, long j) {
            this.f155a = file;
            this.f156b = j;
        }
    }

    public AbstractC0079b(Context context, AbstractC0078a<T> aVar, AbstractC0032m mVar, AbstractC0082d dVar, int i) {
        this.context = context.getApplicationContext();
        this.transform = aVar;
        this.eventStorage = dVar;
        this.currentTimeProvider = mVar;
        this.lastRollOverTime = this.currentTimeProvider.mo10310a();
        this.defaultMaxFilesToKeep = i;
    }

    private void rollFileOverIfNeeded(int i) {
        if (!this.eventStorage.mo10253a(i, getMaxByteSizePerFile())) {
            C0026j.m10329c(this.context, String.format(Locale.US, "session analytics events file is %d bytes, new event is %d bytes, this is over flush limit of %d, rolling it over", Integer.valueOf(this.eventStorage.mo10254a()), Integer.valueOf(i), Integer.valueOf(getMaxByteSizePerFile())));
            rollFileOver();
        }
    }

    private void triggerRollOverOnListeners(String str) {
        for (AbstractC0083e eVar : this.rollOverListeners) {
            try {
                eVar.onRollOver(str);
            } catch (Exception e) {
                C0026j.m10333b(this.context, "One of the roll over listeners threw an exception");
            }
        }
    }

    public void deleteAllEventsFiles() {
        AbstractC0082d dVar = this.eventStorage;
        dVar.mo10250a(dVar.mo10246d());
        this.eventStorage.mo10245e();
    }

    public void deleteOldestInRollOverIfOverMax() {
        List<File> d = this.eventStorage.mo10246d();
        int maxFilesToKeep = getMaxFilesToKeep();
        if (d.size() > maxFilesToKeep) {
            int size = d.size() - maxFilesToKeep;
            C0026j.m10354a(this.context, String.format(Locale.US, "Found %d files in  roll over directory, this is greater than %d, deleting %d oldest files", Integer.valueOf(d.size()), Integer.valueOf(maxFilesToKeep), Integer.valueOf(size)));
            TreeSet treeSet = new TreeSet(new C0081c(this));
            for (File file : d) {
                treeSet.add(new C0080a(file, parseCreationTimestampFromFileName(file.getName())));
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = treeSet.iterator();
            while (it.hasNext()) {
                arrayList.add(((C0080a) it.next()).f155a);
                if (arrayList.size() == size) {
                    break;
                }
            }
            this.eventStorage.mo10250a(arrayList);
        }
    }

    public void deleteSentFiles(List<File> list) {
        this.eventStorage.mo10250a(list);
    }

    protected abstract String generateUniqueRollOverFileName();

    public List<File> getBatchOfFilesToSend() {
        return this.eventStorage.mo10247c();
    }

    public long getLastRollOverTime() {
        return this.lastRollOverTime;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getMaxByteSizePerFile() {
        return MAX_BYTE_SIZE_PER_FILE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getMaxFilesToKeep() {
        return this.defaultMaxFilesToKeep;
    }

    public long parseCreationTimestampFromFileName(String str) {
        String[] split = str.split(ROLL_OVER_FILE_NAME_SEPARATOR);
        if (split.length != 3) {
            return 0L;
        }
        try {
            return Long.valueOf(split[2]).longValue();
        } catch (NumberFormatException e) {
            return 0L;
        }
    }

    public void registerRollOverListener(AbstractC0083e eVar) {
        if (eVar != null) {
            this.rollOverListeners.add(eVar);
        }
    }

    public boolean rollFileOver() {
        String str;
        boolean z = true;
        if (!this.eventStorage.mo10248b()) {
            str = generateUniqueRollOverFileName();
            this.eventStorage.mo10251a(str);
            C0026j.m10329c(this.context, String.format(Locale.US, "generated new file %s", str));
            this.lastRollOverTime = this.currentTimeProvider.mo10310a();
        } else {
            str = null;
            z = false;
        }
        triggerRollOverOnListeners(str);
        return z;
    }

    public void writeEvent(T t) {
        byte[] bytes = this.transform.toBytes(t);
        rollFileOverIfNeeded(bytes.length);
        this.eventStorage.mo10249a(bytes);
    }
}
