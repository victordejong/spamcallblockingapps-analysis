package com.flurry.sdk;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.flurry.sdk.ar */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ar.class */
public final class C2841ar extends AbstractC2829aq {

    /* renamed from: h */
    public final File f4075h;

    /* renamed from: i */
    public OutputStream f4076i;

    public C2841ar(File file) {
        this.f4075h = file;
    }

    @Override // com.flurry.sdk.AbstractC2829aq
    /* renamed from: c */
    public final OutputStream mo33544c() throws IOException {
        OutputStream outputStream = this.f4076i;
        if (outputStream != null) {
            return outputStream;
        }
        File file = this.f4075h;
        if (file != null) {
            this.f4076i = new FileOutputStream(file);
            return this.f4076i;
        }
        throw new IOException("No file specified");
    }

    @Override // com.flurry.sdk.AbstractC2829aq
    /* renamed from: d */
    public final void mo33543d() {
        C3445la.m32465a(this.f4076i);
        this.f4076i = null;
    }

    @Override // com.flurry.sdk.AbstractC2829aq
    /* renamed from: e */
    public final void mo33542e() {
        File file = this.f4075h;
        if (file != null) {
            file.delete();
        }
    }
}
