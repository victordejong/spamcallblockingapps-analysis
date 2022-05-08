package com.google.firebase.components;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/firebase/components/Component$$Lambda$2.class */
public final /* synthetic */ class Component$$Lambda$2 implements ComponentFactory {
    private final Object arg$1;

    private Component$$Lambda$2(Object obj) {
        this.arg$1 = obj;
    }

    public static ComponentFactory lambdaFactory$(Object obj) {
        return new Component$$Lambda$2(obj);
    }

    @Override // com.google.firebase.components.ComponentFactory
    public Object create(ComponentContainer componentContainer) {
        return Component.lambda$of$1(this.arg$1, componentContainer);
    }
}
