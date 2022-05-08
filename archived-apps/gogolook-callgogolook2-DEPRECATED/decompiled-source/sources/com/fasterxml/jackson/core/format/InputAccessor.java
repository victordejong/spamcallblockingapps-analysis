package com.fasterxml.jackson.core.format;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/format/InputAccessor.class */
public interface InputAccessor {
    boolean hasMoreBytes() throws IOException;

    byte nextByte() throws IOException;
}
