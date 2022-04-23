package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwq.class */
public class zzdwq implements zzbi, Closeable, Iterator<zzbf> {

    /* renamed from: f */
    private static final zzbf f14683f = new alg("eof ");

    /* renamed from: g */
    private static zzdwy f14684g = zzdwy.zzn(zzdwq.class);

    /* renamed from: a */
    protected zzbe f14685a;

    /* renamed from: b */
    protected zzdws f14686b;

    /* renamed from: h */
    private zzbf f14690h = null;

    /* renamed from: c */
    long f14687c = 0;

    /* renamed from: d */
    long f14688d = 0;

    /* renamed from: e */
    long f14689e = 0;

    /* renamed from: i */
    private List<zzbf> f14691i = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public final zzbf next() {
        zzbf zza;
        zzbf zzbfVar = this.f14690h;
        if (zzbfVar == null || zzbfVar == f14683f) {
            zzdws zzdwsVar = this.f14686b;
            if (zzdwsVar == null || this.f14687c >= this.f14689e) {
                this.f14690h = f14683f;
                throw new NoSuchElementException();
            }
            try {
                synchronized (zzdwsVar) {
                    this.f14686b.zzfc(this.f14687c);
                    zza = this.f14685a.zza(this.f14686b, this);
                    this.f14687c = this.f14686b.position();
                }
                return zza;
            } catch (EOFException e) {
                throw new NoSuchElementException();
            } catch (IOException e2) {
                throw new NoSuchElementException();
            }
        } else {
            this.f14690h = null;
            return zzbfVar;
        }
    }

    public void close() {
        this.f14686b.close();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        zzbf zzbfVar = this.f14690h;
        if (zzbfVar == f14683f) {
            return false;
        }
        if (zzbfVar != null) {
            return true;
        }
        try {
            this.f14690h = (zzbf) next();
            return true;
        } catch (NoSuchElementException e) {
            this.f14690h = f14683f;
            return false;
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        for (int i = 0; i < this.f14691i.size(); i++) {
            if (i > 0) {
                sb.append(";");
            }
            sb.append(this.f14691i.get(i).toString());
        }
        sb.append("]");
        return sb.toString();
    }

    public void zza(zzdws zzdwsVar, long j, zzbe zzbeVar) {
        this.f14686b = zzdwsVar;
        long position = zzdwsVar.position();
        this.f14688d = position;
        this.f14687c = position;
        zzdwsVar.zzfc(zzdwsVar.position() + j);
        this.f14689e = zzdwsVar.position();
        this.f14685a = zzbeVar;
    }

    public final List<zzbf> zzbdl() {
        return (this.f14686b == null || this.f14690h == f14683f) ? this.f14691i : new zzdww(this.f14691i, this);
    }
}
