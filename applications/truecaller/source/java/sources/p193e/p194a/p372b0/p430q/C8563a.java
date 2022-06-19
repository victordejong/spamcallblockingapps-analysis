package p193e.p194a.p372b0.p430q;

import android.content.Context;
import android.content.res.AssetManager;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;
import java.util.ServiceConfigurationError;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.b0.q.a */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/a.class */
public class C8563a<S> implements Iterable<S> {

    /* renamed from: a */
    public final Class<S> f26372a;

    /* renamed from: b */
    public final ClassLoader f26373b;

    /* renamed from: c */
    public final Set<String> f26374c = new HashSet();

    /* renamed from: e.a.b0.q.a$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/a$b.class */
    public class C8565b implements Iterator<S> {

        /* renamed from: a */
        public final Queue<String> f26375a;

        public C8565b(C8564a c8564a) {
            C8563a.this = r6;
            this.f26375a = new LinkedList(r6.f26374c);
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return !this.f26375a.isEmpty();
        }

        @Override // java.util.Iterator
        public S next() {
            String remove = this.f26375a.remove();
            try {
                C8563a c8563a = C8563a.this;
                return c8563a.f26372a.cast(c8563a.f26373b.loadClass(remove).newInstance());
            } catch (Exception e) {
                throw new ServiceConfigurationError(C22128a.m8543z2("Couldn't instantiate class ", remove), e);
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C8563a(Context context, Class<S> cls, ClassLoader classLoader) {
        InputStream inputStream;
        this.f26372a = cls;
        this.f26373b = classLoader;
        InputStream inputStream2 = null;
        InputStream inputStream3 = null;
        try {
            try {
                AssetManager assets = context.getAssets();
                StringBuilder sb = new StringBuilder();
                sb.append("services/");
                sb.append(cls.getName());
                inputStream = assets.open(sb.toString(), 2);
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                while (true) {
                    inputStream2 = inputStream;
                    inputStream3 = inputStream;
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    } else if (!TextUtils.isEmpty(readLine)) {
                        this.f26374c.add(readLine);
                    }
                }
                if (inputStream == null) {
                    return;
                }
            } catch (IOException e) {
                inputStream2 = inputStream3;
                this.f26372a.getName();
                if (inputStream3 == null) {
                    return;
                }
                inputStream = inputStream3;
            }
            try {
                inputStream.close();
            } catch (IOException e2) {
            }
        } catch (Throwable th) {
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException e3) {
                }
            }
            throw th;
        }
    }

    @Override // java.lang.Iterable
    public Iterator<S> iterator() {
        return new C8565b(null);
    }
}
