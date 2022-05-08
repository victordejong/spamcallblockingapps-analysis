package com.criteo.publisher.model.p021z;

import androidx.annotation.NonNull;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import java.net.URL;
/* renamed from: com.criteo.publisher.model.z.c */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/z/c.class */
public abstract class AbstractC2058c extends AbstractC2077o {

    /* renamed from: a */
    public final URL f2295a;

    public AbstractC2058c(URL url) {
        if (url != null) {
            this.f2295a = url;
            return;
        }
        throw new NullPointerException("Null url");
    }

    @Override // com.criteo.publisher.model.p021z.AbstractC2077o
    @NonNull
    /* renamed from: a */
    public URL mo35734a() {
        return this.f2295a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2077o) {
            return this.f2295a.equals(((AbstractC2077o) obj).mo35734a());
        }
        return false;
    }

    public int hashCode() {
        return this.f2295a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "NativeImage{url=" + this.f2295a + CssParser.BLOCK_END;
    }
}
