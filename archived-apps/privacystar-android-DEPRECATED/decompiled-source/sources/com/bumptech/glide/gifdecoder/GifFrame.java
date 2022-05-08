package com.bumptech.glide.gifdecoder;

import android.support.annotation.ColorInt;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/gifdecoder/GifFrame.class */
class GifFrame {
    static final int DISPOSAL_BACKGROUND = 2;
    static final int DISPOSAL_NONE = 1;
    static final int DISPOSAL_PREVIOUS = 3;
    static final int DISPOSAL_UNSPECIFIED = 0;
    int bufferFrameStart;
    int delay;
    int dispose;

    /* renamed from: ih */
    int f94ih;
    boolean interlace;

    /* renamed from: iw */
    int f95iw;

    /* renamed from: ix */
    int f96ix;

    /* renamed from: iy */
    int f97iy;
    @ColorInt
    int[] lct;
    int transIndex;
    boolean transparency;
}
