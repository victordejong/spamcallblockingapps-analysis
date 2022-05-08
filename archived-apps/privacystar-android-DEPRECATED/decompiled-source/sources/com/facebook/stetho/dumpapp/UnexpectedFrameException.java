package com.facebook.stetho.dumpapp;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/dumpapp/UnexpectedFrameException.class */
class UnexpectedFrameException extends DumpappFramingException {
    public UnexpectedFrameException(byte b, byte b2) {
        super("Expected '" + ((int) b) + "', got: '" + ((int) b2) + "'");
    }
}
