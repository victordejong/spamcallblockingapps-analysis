package com.google.android.exoplayer2.source.smoothstreaming.manifest;

import com.google.android.exoplayer2.ParserException;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifestParser$MissingFieldException.class */
public class SsManifestParser$MissingFieldException extends ParserException {
    public SsManifestParser$MissingFieldException(String str) {
        super("Missing required field: " + str);
    }
}
