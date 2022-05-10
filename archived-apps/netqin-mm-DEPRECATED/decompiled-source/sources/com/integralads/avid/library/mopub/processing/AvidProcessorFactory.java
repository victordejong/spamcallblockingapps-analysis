package com.integralads.avid.library.mopub.processing;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/processing/AvidProcessorFactory.class */
public class AvidProcessorFactory {

    /* renamed from: a */
    public AvidSceenProcessor f33043a;

    /* renamed from: b */
    public AvidViewProcessor f33044b;

    public AvidProcessorFactory() {
        AvidViewProcessor avidViewProcessor = new AvidViewProcessor();
        this.f33044b = avidViewProcessor;
        this.f33043a = new AvidSceenProcessor(avidViewProcessor);
    }

    public IAvidNodeProcessor getRootProcessor() {
        return this.f33043a;
    }
}
