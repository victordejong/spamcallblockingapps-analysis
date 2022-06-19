package androidx.room.p009s;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: androidx.room.s.a */
/* loaded from: classes-dex2jar.jar:androidx/room/s/a.class */
public class C0429a {

    /* renamed from: e */
    private static final Map<String, Lock> f2253e = new HashMap();

    /* renamed from: a */
    private final File f2254a;

    /* renamed from: b */
    private final Lock f2255b;

    /* renamed from: c */
    private final boolean f2256c;

    /* renamed from: d */
    private FileChannel f2257d;

    public C0429a(String str, File file, boolean z) {
        File file2 = new File(file, str + ".lck");
        this.f2254a = file2;
        this.f2255b = m4765a(file2.getAbsolutePath());
        this.f2256c = z;
    }

    /* renamed from: a */
    private static Lock m4765a(String str) {
        Lock lock;
        Map<String, Lock> map = f2253e;
        synchronized (map) {
            Lock lock2 = map.get(str);
            lock = lock2;
            if (lock2 == null) {
                lock = new ReentrantLock();
                map.put(str, lock);
            }
        }
        return lock;
    }

    /* renamed from: b */
    public void m4764b() {
        this.f2255b.lock();
        if (this.f2256c) {
            try {
                FileChannel channel = new FileOutputStream(this.f2254a).getChannel();
                this.f2257d = channel;
                channel.lock();
            } catch (IOException e) {
                throw new IllegalStateException("Unable to grab copy lock.", e);
            }
        }
    }

    /* renamed from: c */
    public void m4763c() {
        FileChannel fileChannel = this.f2257d;
        if (fileChannel != null) {
            try {
                fileChannel.close();
            } catch (IOException e) {
            }
        }
        this.f2255b.unlock();
    }
}
