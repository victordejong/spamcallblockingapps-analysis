package org.spongycastle.util.encoders;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/encoders/UrlBase64Encoder.class */
public class UrlBase64Encoder extends Base64Encoder {
    public UrlBase64Encoder() {
        this.encodingTable[this.encodingTable.length - 2] = (byte) 45;
        this.encodingTable[this.encodingTable.length - 1] = (byte) 95;
        this.padding = (byte) 46;
        initialiseDecodingTable();
    }
}
