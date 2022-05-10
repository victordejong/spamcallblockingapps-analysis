package com.google.common.hash;

import java.util.zip.Adler32;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
import p131c.p161d.p266c.p270d.AbstractC5046e;
import p131c.p161d.p266c.p270d.AbstractC5048g;
/* loaded from: classes2-dex2jar.jar:com/google/common/hash/Hashing.class */
public final class Hashing {

    /* renamed from: a */
    public static final int f30831a = (int) System.currentTimeMillis();

    /* loaded from: classes2-dex2jar.jar:com/google/common/hash/Hashing$ChecksumType.class */
    public enum ChecksumType implements AbstractC5048g<Checksum> {
        CRC_32("Hashing.crc32()") { // from class: com.google.common.hash.Hashing.ChecksumType.1
            @Override // p131c.p161d.p266c.p267a.AbstractC4941s
            public Checksum get() {
                return new CRC32();
            }
        },
        ADLER_32("Hashing.adler32()") { // from class: com.google.common.hash.Hashing.ChecksumType.2
            @Override // p131c.p161d.p266c.p267a.AbstractC4941s
            public Checksum get() {
                return new Adler32();
            }
        };
        
        public final AbstractC5046e hashFunction;

        ChecksumType(String str) {
            this.hashFunction = new ChecksumHashFunction(this, 32, str);
        }
    }

    /* renamed from: a */
    public static AbstractC5046e m7944a() {
        return Murmur3_128HashFunction.MURMUR3_128;
    }
}
