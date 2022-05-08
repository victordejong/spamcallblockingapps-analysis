package p459j.p460a.p474c0.p480d.p482e;

import android.content.ContentUris;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.Telephony;
import android.util.SparseArray;
import androidx.collection.SimpleArrayMap;
import java.util.HashSet;
import java.util.Iterator;
/* renamed from: j.a.c0.d.e.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/e/d.class */
public final class C11721d extends AbstractC11716a<Uri, C11722e> {

    /* renamed from: e */
    public static final UriMatcher f26289e = new UriMatcher(-1);

    /* renamed from: f */
    public static final SparseArray<Integer> f26290f = new SparseArray<>();

    /* renamed from: g */
    public static C11721d f26291g;

    /* renamed from: b */
    public final SparseArray<HashSet<Uri>> f26292b = new SparseArray<>();

    /* renamed from: c */
    public final SimpleArrayMap<Long, HashSet<Uri>> f26293c = new SimpleArrayMap<>();

    /* renamed from: d */
    public final HashSet<Uri> f26294d = new HashSet<>();

    static {
        f26289e.addURI("mms", null, 0);
        f26289e.addURI("mms", "#", 1);
        f26289e.addURI("mms", "inbox", 2);
        f26289e.addURI("mms", "inbox/#", 3);
        f26289e.addURI("mms", "sent", 4);
        f26289e.addURI("mms", "sent/#", 5);
        f26289e.addURI("mms", "drafts", 6);
        f26289e.addURI("mms", "drafts/#", 7);
        f26289e.addURI("mms", "outbox", 8);
        f26289e.addURI("mms", "outbox/#", 9);
        f26289e.addURI("mms-sms", "conversations", 10);
        f26289e.addURI("mms-sms", "conversations/#", 11);
        f26290f.put(2, 1);
        f26290f.put(4, 2);
        f26290f.put(6, 3);
        f26290f.put(8, 4);
    }

    /* renamed from: b */
    public static final C11721d m8426b() {
        C11721d dVar;
        synchronized (C11721d.class) {
            try {
                if (f26291g == null) {
                    f26291g = new C11721d();
                }
                dVar = f26291g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return dVar;
    }

    @Override // p459j.p460a.p474c0.p480d.p482e.AbstractC11716a
    /* renamed from: a */
    public void mo8432a() {
        synchronized (this) {
            super.mo8432a();
            this.f26292b.clear();
            this.f26293c.clear();
            this.f26294d.clear();
        }
    }

    /* renamed from: a */
    public final void m8431a(long j) {
        HashSet<Uri> remove = this.f26293c.remove(Long.valueOf(j));
        if (remove != null) {
            Iterator<Uri> it = remove.iterator();
            while (it.hasNext()) {
                Uri next = it.next();
                this.f26294d.remove(next);
                C11722e eVar = (C11722e) super.m8437b((C11721d) next);
                if (eVar != null) {
                    m8424b(next, eVar);
                }
            }
        }
    }

    /* renamed from: a */
    public void m8428a(Uri uri, boolean z) {
        synchronized (this) {
            if (z) {
                this.f26294d.add(uri);
            } else {
                this.f26294d.remove(uri);
            }
        }
    }

    /* renamed from: a */
    public final void m8427a(Integer num) {
        if (num != null) {
            HashSet<Uri> hashSet = this.f26292b.get(num.intValue());
            this.f26292b.remove(num.intValue());
            if (hashSet != null) {
                Iterator<Uri> it = hashSet.iterator();
                while (it.hasNext()) {
                    Uri next = it.next();
                    this.f26294d.remove(next);
                    C11722e eVar = (C11722e) super.m8437b((C11721d) next);
                    if (eVar != null) {
                        m8422c(next, eVar);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m8430a(Uri uri) {
        boolean contains;
        synchronized (this) {
            contains = this.f26294d.contains(uri);
        }
        return contains;
    }

    /* renamed from: a */
    public boolean m8429a(Uri uri, C11722e eVar) {
        boolean a;
        synchronized (this) {
            int a2 = eVar.m8420a();
            HashSet<Uri> hashSet = this.f26292b.get(a2);
            HashSet<Uri> hashSet2 = hashSet;
            if (hashSet == null) {
                hashSet2 = new HashSet<>();
                this.f26292b.put(a2, hashSet2);
            }
            long c = eVar.m8418c();
            HashSet<Uri> hashSet3 = this.f26293c.get(Long.valueOf(c));
            HashSet<Uri> hashSet4 = hashSet3;
            if (hashSet3 == null) {
                hashSet4 = new HashSet<>();
                this.f26293c.put(Long.valueOf(c), hashSet4);
            }
            Uri b = m8425b(uri);
            a = super.m8438a((C11721d) b, (Uri) eVar);
            if (a) {
                hashSet2.add(b);
                hashSet4.add(b);
            }
            m8428a(uri, false);
        }
        return a;
    }

    /* renamed from: b */
    public final Uri m8425b(Uri uri) {
        int match = f26289e.match(uri);
        Uri uri2 = uri;
        if (match != 1) {
            if (match != 3 && match != 5 && match != 7 && match != 9) {
                return null;
            }
            uri2 = Uri.withAppendedPath(Telephony.Mms.CONTENT_URI, uri.getLastPathSegment());
        }
        return uri2;
    }

    /* renamed from: b */
    public final void m8424b(Uri uri, C11722e eVar) {
        HashSet<Uri> hashSet = this.f26293c.get(Long.valueOf(eVar.m8420a()));
        if (hashSet != null) {
            hashSet.remove(uri);
        }
    }

    /* renamed from: c */
    public C11722e m8423c(Uri uri) {
        synchronized (this) {
            int match = f26289e.match(uri);
            switch (match) {
                case 0:
                case 10:
                    mo8432a();
                    return null;
                case 1:
                    return m8421d(uri);
                case 2:
                case 4:
                case 6:
                case 8:
                    m8427a(f26290f.get(match));
                    return null;
                case 3:
                case 5:
                case 7:
                case 9:
                    return m8421d(Uri.withAppendedPath(Telephony.Mms.CONTENT_URI, uri.getLastPathSegment()));
                case 11:
                    m8431a(ContentUris.parseId(uri));
                    return null;
                default:
                    return null;
            }
        }
    }

    /* renamed from: c */
    public final void m8422c(Uri uri, C11722e eVar) {
        HashSet<Uri> hashSet = this.f26293c.get(Long.valueOf(eVar.m8418c()));
        if (hashSet != null) {
            hashSet.remove(uri);
        }
    }

    /* renamed from: d */
    public final C11722e m8421d(Uri uri) {
        this.f26294d.remove(uri);
        C11722e eVar = (C11722e) super.m8437b((C11721d) uri);
        if (eVar == null) {
            return null;
        }
        m8422c(uri, eVar);
        m8424b(uri, eVar);
        return eVar;
    }
}
