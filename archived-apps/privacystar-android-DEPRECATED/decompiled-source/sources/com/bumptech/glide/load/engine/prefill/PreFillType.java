package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.util.Preconditions;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/prefill/PreFillType.class */
public final class PreFillType {
    @VisibleForTesting
    static final Bitmap.Config DEFAULT_CONFIG = Bitmap.Config.RGB_565;
    private final Bitmap.Config config;
    private final int height;
    private final int weight;
    private final int width;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/prefill/PreFillType$Builder.class */
    public static class Builder {
        private Bitmap.Config config;
        private final int height;
        private int weight;
        private final int width;

        public Builder(int i) {
            this(i, i);
        }

        public Builder(int i, int i2) {
            this.weight = 1;
            if (i <= 0) {
                throw new IllegalArgumentException("Width must be > 0");
            } else if (i2 <= 0) {
                throw new IllegalArgumentException("Height must be > 0");
            } else {
                this.width = i;
                this.height = i2;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public PreFillType build() {
            return new PreFillType(this.width, this.height, this.config, this.weight);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Bitmap.Config getConfig() {
            return this.config;
        }

        public Builder setConfig(@Nullable Bitmap.Config config) {
            this.config = config;
            return this;
        }

        public Builder setWeight(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("Weight must be > 0");
            }
            this.weight = i;
            return this;
        }
    }

    PreFillType(int i, int i2, Bitmap.Config config, int i3) {
        this.config = (Bitmap.Config) Preconditions.checkNotNull(config, "Config must not be null");
        this.width = i;
        this.height = i2;
        this.weight = i3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PreFillType)) {
            return false;
        }
        PreFillType preFillType = (PreFillType) obj;
        boolean z = false;
        if (this.height == preFillType.height) {
            z = false;
            if (this.width == preFillType.width) {
                z = false;
                if (this.weight == preFillType.weight) {
                    z = false;
                    if (this.config == preFillType.config) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bitmap.Config getConfig() {
        return this.config;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getHeight() {
        return this.height;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWeight() {
        return this.weight;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (((((this.width * 31) + this.height) * 31) + this.config.hashCode()) * 31) + this.weight;
    }

    public String toString() {
        return "PreFillSize{width=" + this.width + ", height=" + this.height + ", config=" + this.config + ", weight=" + this.weight + '}';
    }
}
