package com.google.common.math;

import com.applovin.sdk.AppLovinMediationProvider;
import com.google.common.primitives.Doubles;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p272f.C5057b;
import p131c.p161d.p266c.p272f.C5067f;
/* loaded from: classes2-dex2jar.jar:com/google/common/math/Stats.class */
public final class Stats implements Serializable {
    public static final int BYTES = 40;
    public static final long serialVersionUID = 0;
    public final long count;
    public final double max;
    public final double mean;
    public final double min;
    public final double sumOfSquaresOfDeltas;

    public Stats(long j, double d, double d2, double d3, double d4) {
        this.count = j;
        this.mean = d;
        this.sumOfSquaresOfDeltas = d2;
        this.min = d3;
        this.max = d4;
    }

    public static Stats fromByteArray(byte[] bArr) {
        C4933n.m24795a(bArr);
        C4933n.m24786a(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return readFrom(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    public static double meanOf(Iterator<? extends Number> it) {
        C4933n.m24791a(it.hasNext());
        double doubleValue = ((Number) it.next()).doubleValue();
        long j = 1;
        while (it.hasNext()) {
            double doubleValue2 = ((Number) it.next()).doubleValue();
            j++;
            if (!Doubles.m7866b(doubleValue2) || !Doubles.m7866b(doubleValue)) {
                doubleValue = C5067f.m24570a(doubleValue, doubleValue2);
            } else {
                double d = j;
                Double.isNaN(d);
                doubleValue += (doubleValue2 - doubleValue) / d;
            }
        }
        return doubleValue;
    }

    public static double meanOf(double... dArr) {
        C4933n.m24791a(dArr.length > 0);
        double d = dArr[0];
        for (int i = 1; i < dArr.length; i++) {
            double d2 = dArr[i];
            if (!Doubles.m7866b(d2) || !Doubles.m7866b(d)) {
                d = C5067f.m24570a(d, d2);
            } else {
                double d3 = i + 1;
                Double.isNaN(d3);
                d += (d2 - d) / d3;
            }
        }
        return d;
    }

    public static double meanOf(int... iArr) {
        C4933n.m24791a(iArr.length > 0);
        double d = iArr[0];
        for (int i = 1; i < iArr.length; i++) {
            double d2 = iArr[i];
            if (!Doubles.m7866b(d2) || !Doubles.m7866b(d)) {
                d = C5067f.m24570a(d, d2);
            } else {
                Double.isNaN(d2);
                double d3 = i + 1;
                Double.isNaN(d3);
                d += (d2 - d) / d3;
            }
        }
        return d;
    }

    public static double meanOf(long... jArr) {
        C4933n.m24791a(jArr.length > 0);
        double d = jArr[0];
        for (int i = 1; i < jArr.length; i++) {
            double d2 = jArr[i];
            if (!Doubles.m7866b(d2) || !Doubles.m7866b(d)) {
                d = C5067f.m24570a(d, d2);
            } else {
                Double.isNaN(d2);
                double d3 = i + 1;
                Double.isNaN(d3);
                d += (d2 - d) / d3;
            }
        }
        return d;
    }

    /* renamed from: of */
    public static Stats m7892of(Iterable<? extends Number> iterable) {
        C5067f fVar = new C5067f();
        fVar.m24569a(iterable);
        return fVar.m24572a();
    }

    /* renamed from: of */
    public static Stats m7891of(Iterator<? extends Number> it) {
        C5067f fVar = new C5067f();
        fVar.m24568a(it);
        return fVar.m24572a();
    }

    /* renamed from: of */
    public static Stats m7890of(double... dArr) {
        C5067f fVar = new C5067f();
        fVar.m24567a(dArr);
        return fVar.m24572a();
    }

    /* renamed from: of */
    public static Stats m7889of(int... iArr) {
        C5067f fVar = new C5067f();
        fVar.m24566a(iArr);
        return fVar.m24572a();
    }

    /* renamed from: of */
    public static Stats m7888of(long... jArr) {
        C5067f fVar = new C5067f();
        fVar.m24565a(jArr);
        return fVar.m24572a();
    }

    public static Stats readFrom(ByteBuffer byteBuffer) {
        C4933n.m24795a(byteBuffer);
        C4933n.m24786a(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new Stats(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }

    public long count() {
        return this.count;
    }

    public boolean equals(Object obj) {
        if (obj == null || Stats.class != obj.getClass()) {
            return false;
        }
        Stats stats = (Stats) obj;
        boolean z = false;
        if (this.count == stats.count) {
            z = false;
            if (Double.doubleToLongBits(this.mean) == Double.doubleToLongBits(stats.mean)) {
                z = false;
                if (Double.doubleToLongBits(this.sumOfSquaresOfDeltas) == Double.doubleToLongBits(stats.sumOfSquaresOfDeltas)) {
                    z = false;
                    if (Double.doubleToLongBits(this.min) == Double.doubleToLongBits(stats.min)) {
                        z = false;
                        if (Double.doubleToLongBits(this.max) == Double.doubleToLongBits(stats.max)) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(Long.valueOf(this.count), Double.valueOf(this.mean), Double.valueOf(this.sumOfSquaresOfDeltas), Double.valueOf(this.min), Double.valueOf(this.max));
    }

    public double max() {
        C4933n.m24776b(this.count != 0);
        return this.max;
    }

    public double mean() {
        C4933n.m24776b(this.count != 0);
        return this.mean;
    }

    public double min() {
        C4933n.m24776b(this.count != 0);
        return this.min;
    }

    public double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public double populationVariance() {
        C4933n.m24776b(this.count > 0);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        if (this.count == 1) {
            return 0.0d;
        }
        double a = C5057b.m24592a(this.sumOfSquaresOfDeltas);
        double count = count();
        Double.isNaN(count);
        return a / count;
    }

    public double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double sampleVariance() {
        C4933n.m24776b(this.count > 1);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        double a = C5057b.m24592a(this.sumOfSquaresOfDeltas);
        double d = this.count - 1;
        Double.isNaN(d);
        return a / d;
    }

    public double sum() {
        double d = this.mean;
        double d2 = this.count;
        Double.isNaN(d2);
        return d * d2;
    }

    public double sumOfSquaresOfDeltas() {
        return this.sumOfSquaresOfDeltas;
    }

    public byte[] toByteArray() {
        ByteBuffer order = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        writeTo(order);
        return order.array();
    }

    public String toString() {
        if (count() > 0) {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24814a("count", this.count);
            a.m24816a("mean", this.mean);
            a.m24816a("populationStandardDeviation", populationStandardDeviation());
            a.m24816a("min", this.min);
            a.m24816a(AppLovinMediationProvider.MAX, this.max);
            return a.toString();
        }
        C4924j.C4926b a2 = C4924j.m24820a(this);
        a2.m24814a("count", this.count);
        return a2.toString();
    }

    public void writeTo(ByteBuffer byteBuffer) {
        C4933n.m24795a(byteBuffer);
        C4933n.m24786a(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        byteBuffer.putLong(this.count).putDouble(this.mean).putDouble(this.sumOfSquaresOfDeltas).putDouble(this.min).putDouble(this.max);
    }
}
