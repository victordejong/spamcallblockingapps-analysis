package org.spongycastle.cms.jcajce;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.InflaterInputStream;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.operator.InputExpander;
import org.spongycastle.operator.InputExpanderProvider;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/ZlibExpanderProvider.class */
public class ZlibExpanderProvider implements InputExpanderProvider {
    private final long limit;

    /* loaded from: classes-dex2jar.jar:org/spongycastle/cms/jcajce/ZlibExpanderProvider$LimitedInputStream.class */
    private static class LimitedInputStream extends FilterInputStream {
        private long remaining;

        public LimitedInputStream(InputStream inputStream, long j) {
            super(inputStream);
            this.remaining = j;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0024, code lost:
            if (r0 >= 0) goto L_0x0027;
         */
        @Override // java.io.FilterInputStream, java.io.InputStream
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int read() throws java.io.IOException {
            /*
                r5 = this;
                r0 = r5
                long r0 = r0.remaining
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0029
                r0 = r5
                java.io.InputStream r0 = r0.in
                int r0 = r0.read()
                r6 = r0
                r0 = r6
                if (r0 < 0) goto L_0x0027
                r0 = r5
                long r0 = r0.remaining
                r1 = 1
                long r0 = r0 - r1
                r7 = r0
                r0 = r5
                r1 = r7
                r0.remaining = r1
                r0 = r7
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0029
            L_0x0027:
                r0 = r6
                return r0
            L_0x0029:
                org.spongycastle.util.io.StreamOverflowException r0 = new org.spongycastle.util.io.StreamOverflowException
                r1 = r0
                java.lang.String r2 = "expanded byte limit exceeded"
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.cms.jcajce.ZlibExpanderProvider.LimitedInputStream.read():int");
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (i2 < 1) {
                return super.read(bArr, i, i2);
            }
            if (this.remaining < 1) {
                read();
                return -1;
            }
            if (this.remaining <= i2) {
                i2 = (int) this.remaining;
            }
            int read = ((FilterInputStream) this).in.read(bArr, i, i2);
            if (read > 0) {
                this.remaining -= read;
            }
            return read;
        }
    }

    public ZlibExpanderProvider() {
        this.limit = -1L;
    }

    public ZlibExpanderProvider(long j) {
        this.limit = j;
    }

    @Override // org.spongycastle.operator.InputExpanderProvider
    public InputExpander get(final AlgorithmIdentifier algorithmIdentifier) {
        return new InputExpander() { // from class: org.spongycastle.cms.jcajce.ZlibExpanderProvider.1
            @Override // org.spongycastle.operator.InputExpander
            public AlgorithmIdentifier getAlgorithmIdentifier() {
                return algorithmIdentifier;
            }

            @Override // org.spongycastle.operator.InputExpander
            public InputStream getInputStream(InputStream inputStream) {
                InputStream inflaterInputStream = new InflaterInputStream(inputStream);
                if (ZlibExpanderProvider.this.limit >= 0) {
                    inflaterInputStream = new LimitedInputStream(inflaterInputStream, ZlibExpanderProvider.this.limit);
                }
                return inflaterInputStream;
            }
        };
    }
}
