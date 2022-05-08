package com.facebook.stetho.inspector.elements.android;

import android.app.Application;
import com.facebook.stetho.common.Accumulator;
import com.facebook.stetho.common.Util;
import com.facebook.stetho.inspector.elements.AbstractChainedDescriptor;
import com.facebook.stetho.inspector.elements.NodeType;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/AndroidDocumentRoot.class */
final class AndroidDocumentRoot extends AbstractChainedDescriptor<AndroidDocumentRoot> {
    private final Application mApplication;

    public AndroidDocumentRoot(Application application) {
        this.mApplication = (Application) Util.throwIfNull(application);
    }

    /* renamed from: onGetChildren  reason: avoid collision after fix types in other method */
    protected void onGetChildren2(AndroidDocumentRoot androidDocumentRoot, Accumulator<Object> accumulator) {
        accumulator.store(this.mApplication);
    }

    @Override // com.facebook.stetho.inspector.elements.AbstractChainedDescriptor
    protected /* bridge */ /* synthetic */ void onGetChildren(AndroidDocumentRoot androidDocumentRoot, Accumulator accumulator) {
        onGetChildren2(androidDocumentRoot, (Accumulator<Object>) accumulator);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String onGetNodeName(AndroidDocumentRoot androidDocumentRoot) {
        return "root";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public NodeType onGetNodeType(AndroidDocumentRoot androidDocumentRoot) {
        return NodeType.DOCUMENT_NODE;
    }
}
