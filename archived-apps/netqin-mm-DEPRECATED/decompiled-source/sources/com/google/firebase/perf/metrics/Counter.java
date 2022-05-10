package com.google.firebase.perf.metrics;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/Counter.class */
public class Counter implements Parcelable {
    public static final Parcelable.Creator<Counter> CREATOR = new C7852a();

    /* renamed from: a */
    public final String f31019a;

    /* renamed from: b */
    public AtomicLong f31020b;

    /* renamed from: com.google.firebase.perf.metrics.Counter$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/metrics/Counter$a.class */
    public class C7852a implements Parcelable.Creator<Counter> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Counter createFromParcel(Parcel parcel) {
            return new Counter(parcel, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Counter[] newArray(int i) {
            return new Counter[i];
        }
    }

    public Counter(Parcel parcel) {
        this.f31019a = parcel.readString();
        this.f31020b = new AtomicLong(parcel.readLong());
    }

    public /* synthetic */ Counter(Parcel parcel, C7852a aVar) {
        this(parcel);
    }

    public Counter(String str) {
        this.f31019a = str;
        this.f31020b = new AtomicLong(0L);
    }

    /* renamed from: a */
    public long m7248a() {
        return this.f31020b.get();
    }

    /* renamed from: a */
    public void m7247a(long j) {
        this.f31020b.addAndGet(j);
    }

    /* renamed from: b */
    public String m7246b() {
        return this.f31019a;
    }

    /* renamed from: b */
    public void m7245b(long j) {
        this.f31020b.set(j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f31019a);
        parcel.writeLong(this.f31020b.get());
    }
}
