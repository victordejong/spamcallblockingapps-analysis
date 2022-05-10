package com.google.common.hash;

import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p270d.AbstractC5051j;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/Funnels.class */
public final class Funnels {

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Funnels$ByteArrayFunnel.class */
    public enum ByteArrayFunnel implements Funnel<byte[]> {
        INSTANCE;

        public void funnel(byte[] bArr, AbstractC5051j jVar) {
            jVar.mo24601a(bArr);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.byteArrayFunnel()";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Funnels$IntegerFunnel.class */
    public enum IntegerFunnel implements Funnel<Integer> {
        INSTANCE;

        public void funnel(Integer num, AbstractC5051j jVar) {
            jVar.mo7931a(num.intValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.integerFunnel()";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Funnels$LongFunnel.class */
    public enum LongFunnel implements Funnel<Long> {
        INSTANCE;

        public void funnel(Long l, AbstractC5051j jVar) {
            jVar.mo7929a(l.longValue());
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.longFunnel()";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Funnels$SequentialFunnel.class */
    public static class SequentialFunnel<E> implements Funnel<Iterable<? extends E>>, Serializable {
        public final Funnel<E> elementFunnel;

        public SequentialFunnel(Funnel<E> funnel) {
            C4933n.m24795a(funnel);
            this.elementFunnel = funnel;
        }

        public boolean equals(Object obj) {
            if (obj instanceof SequentialFunnel) {
                return this.elementFunnel.equals(((SequentialFunnel) obj).elementFunnel);
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void funnel(Iterable<? extends E> iterable, AbstractC5051j jVar) {
            Iterator<? extends E> it = iterable.iterator();
            while (it.hasNext()) {
                this.elementFunnel.funnel(it.next(), jVar);
            }
        }

        @Override // com.google.common.hash.Funnel
        public /* bridge */ /* synthetic */ void funnel(Object obj, AbstractC5051j jVar) {
            funnel((Iterable) ((Iterable) obj), jVar);
        }

        public int hashCode() {
            return SequentialFunnel.class.hashCode() ^ this.elementFunnel.hashCode();
        }

        public String toString() {
            return "Funnels.sequentialFunnel(" + this.elementFunnel + ")";
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Funnels$StringCharsetFunnel.class */
    public static class StringCharsetFunnel implements Funnel<CharSequence>, Serializable {
        public final Charset charset;

        /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Funnels$StringCharsetFunnel$SerializedForm.class */
        public static class SerializedForm implements Serializable {
            public static final long serialVersionUID = 0;
            public final String charsetCanonicalName;

            public SerializedForm(Charset charset) {
                this.charsetCanonicalName = charset.name();
            }

            private Object readResolve() {
                return Funnels.m7945a(Charset.forName(this.charsetCanonicalName));
            }
        }

        public StringCharsetFunnel(Charset charset) {
            C4933n.m24795a(charset);
            this.charset = charset;
        }

        public boolean equals(Object obj) {
            if (obj instanceof StringCharsetFunnel) {
                return this.charset.equals(((StringCharsetFunnel) obj).charset);
            }
            return false;
        }

        public void funnel(CharSequence charSequence, AbstractC5051j jVar) {
            jVar.mo7928a(charSequence, this.charset);
        }

        public int hashCode() {
            return StringCharsetFunnel.class.hashCode() ^ this.charset.hashCode();
        }

        public String toString() {
            return "Funnels.stringFunnel(" + this.charset.name() + ")";
        }

        public Object writeReplace() {
            return new SerializedForm(this.charset);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Funnels$UnencodedCharsFunnel.class */
    public enum UnencodedCharsFunnel implements Funnel<CharSequence> {
        INSTANCE;

        public void funnel(CharSequence charSequence, AbstractC5051j jVar) {
            jVar.mo24602a(charSequence);
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Funnels.unencodedCharsFunnel()";
        }
    }

    /* renamed from: a */
    public static Funnel<CharSequence> m7945a(Charset charset) {
        return new StringCharsetFunnel(charset);
    }
}
