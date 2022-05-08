package com.fasterxml.jackson.databind.introspect;

import com.fasterxml.jackson.core.Version;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.cfg.PackageVersion;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/introspect/NopAnnotationIntrospector.class */
public abstract class NopAnnotationIntrospector extends AnnotationIntrospector implements Serializable {
    public static final NopAnnotationIntrospector instance = new NopAnnotationIntrospector() { // from class: com.fasterxml.jackson.databind.introspect.NopAnnotationIntrospector.1
        @Override // com.fasterxml.jackson.core.Versioned
        public Version version() {
            return PackageVersion.VERSION;
        }
    };
}
