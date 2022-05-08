package com.github.mikephil.charting.buffer;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/buffer/AbstractBuffer.class */
public abstract class AbstractBuffer<T> {
    public final float[] buffer;
    protected int index;
    protected float phaseX = 1.0f;
    protected float phaseY = 1.0f;
    protected int mFrom = 0;
    protected int mTo = 0;

    public AbstractBuffer(int i) {
        this.index = 0;
        this.index = 0;
        this.buffer = new float[i];
    }

    public abstract void feed(T t);

    public void limitFrom(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        this.mFrom = i2;
    }

    public void limitTo(int i) {
        int i2 = i;
        if (i < 0) {
            i2 = 0;
        }
        this.mTo = i2;
    }

    public void reset() {
        this.index = 0;
    }

    public void setPhases(float f, float f2) {
        this.phaseX = f;
        this.phaseY = f2;
    }

    public int size() {
        return this.buffer.length;
    }
}
