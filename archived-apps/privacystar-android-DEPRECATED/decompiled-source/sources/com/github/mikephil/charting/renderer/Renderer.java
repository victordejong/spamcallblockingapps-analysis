package com.github.mikephil.charting.renderer;

import com.github.mikephil.charting.utils.ViewPortHandler;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/renderer/Renderer.class */
public abstract class Renderer {
    protected ViewPortHandler mViewPortHandler;

    public Renderer(ViewPortHandler viewPortHandler) {
        this.mViewPortHandler = viewPortHandler;
    }
}
