package com.facebook.stetho;

import com.facebook.stetho.inspector.protocol.ChromeDevtoolsDomain;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/InspectorModulesProvider.class */
public interface InspectorModulesProvider {
    Iterable<ChromeDevtoolsDomain> get();
}
