package com.google.common.math;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p272f.AbstractC5060d;
/* loaded from: classes2-dex2jar.jar:com/google/common/math/PairedStats.class */
public final class PairedStats implements Serializable {
    public static final int BYTES = 88;
    public static final long serialVersionUID = 0;
    public final double sumOfProductsOfDeltas;
    public final Stats xStats;
    public final Stats yStats;

    public PairedStats(Stats stats, Stats stats2, double d) {
        this.xStats = stats;
        this.yStats = stats2;
        this.sumOfProductsOfDeltas = d;
    }

    public static double ensureInUnitRange(double d) {
        if (d >= 1.0d) {
            return 1.0d;
        }
        if (d <= -1.0d) {
            return -1.0d;
        }
        return d;
    }

    public static double ensurePositive(double d) {
        if (d > 0.0d) {
            return d;
        }
        return Double.MIN_VALUE;
    }

    public static PairedStats fromByteArray(byte[] bArr) {
        C4933n.m24795a(bArr);
        C4933n.m24786a(bArr.length == 88, "Expected PairedStats.BYTES = %s, got %s", 88, bArr.length);
        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        return new PairedStats(Stats.readFrom(order), Stats.readFrom(order), order.getDouble());
    }

    public long count() {
        return this.xStats.count();
    }

    public boolean equals(Object obj) {
        if (obj == null || PairedStats.class != obj.getClass()) {
            return false;
        }
        PairedStats pairedStats = (PairedStats) obj;
        boolean z = false;
        if (this.xStats.equals(pairedStats.xStats)) {
            z = false;
            if (this.yStats.equals(pairedStats.yStats)) {
                z = false;
                if (Double.doubleToLongBits(this.sumOfProductsOfDeltas) == Double.doubleToLongBits(pairedStats.sumOfProductsOfDeltas)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return C4928k.m24807a(this.xStats, this.yStats, Double.valueOf(this.sumOfProductsOfDeltas));
    }

    public AbstractC5060d leastSquaresFit() {
        boolean z = true;
        C4933n.m24776b(count() > 1);
        if (Double.isNaN(this.sumOfProductsOfDeltas)) {
            return AbstractC5060d.m24582a();
        }
        double sumOfSquaresOfDeltas = this.xStats.sumOfSquaresOfDeltas();
        if (sumOfSquaresOfDeltas > 0.0d) {
            return this.yStats.sumOfSquaresOfDeltas() > 0.0d ? AbstractC5060d.m24580a(this.xStats.mean(), this.yStats.mean()).m24578a(this.sumOfProductsOfDeltas / sumOfSquaresOfDeltas) : AbstractC5060d.m24581a(this.yStats.mean());
        }
        if (this.yStats.sumOfSquaresOfDeltas() <= 0.0d) {
            z = false;
        }
        C4933n.m24776b(z);
        return AbstractC5060d.m24579b(this.xStats.mean());
    }

    public double pearsonsCorrelationCoefficient() {
        boolean z = true;
        C4933n.m24776b(count() > 1);
        if (Double.isNaN(this.sumOfProductsOfDeltas)) {
            return Double.NaN;
        }
        double sumOfSquaresOfDeltas = xStats().sumOfSquaresOfDeltas();
        double sumOfSquaresOfDeltas2 = yStats().sumOfSquaresOfDeltas();
        C4933n.m24776b(sumOfSquaresOfDeltas > 0.0d);
        if (sumOfSquaresOfDeltas2 <= 0.0d) {
            z = false;
        }
        C4933n.m24776b(z);
        return ensureInUnitRange(this.sumOfProductsOfDeltas / Math.sqrt(ensurePositive(sumOfSquaresOfDeltas * sumOfSquaresOfDeltas2)));
    }

    public double populationCovariance() {
        C4933n.m24776b(count() != 0);
        double d = this.sumOfProductsOfDeltas;
        double count = count();
        Double.isNaN(count);
        return d / count;
    }

    public double sampleCovariance() {
        C4933n.m24776b(count() > 1);
        double d = this.sumOfProductsOfDeltas;
        double count = count() - 1;
        Double.isNaN(count);
        return d / count;
    }

    public double sumOfProductsOfDeltas() {
        return this.sumOfProductsOfDeltas;
    }

    public byte[] toByteArray() {
        ByteBuffer order = ByteBuffer.allocate(88).order(ByteOrder.LITTLE_ENDIAN);
        this.xStats.writeTo(order);
        this.yStats.writeTo(order);
        order.putDouble(this.sumOfProductsOfDeltas);
        return order.array();
    }

    public String toString() {
        if (count() > 0) {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("xStats", this.xStats);
            a.m24813a("yStats", this.yStats);
            a.m24816a("populationCovariance", populationCovariance());
            return a.toString();
        }
        C4924j.C4926b a2 = C4924j.m24820a(this);
        a2.m24813a("xStats", this.xStats);
        a2.m24813a("yStats", this.yStats);
        return a2.toString();
    }

    public Stats xStats() {
        return this.xStats;
    }

    public Stats yStats() {
        return this.yStats;
    }
}
