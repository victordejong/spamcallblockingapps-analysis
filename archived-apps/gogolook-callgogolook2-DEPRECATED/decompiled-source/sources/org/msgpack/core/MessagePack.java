package org.msgpack.core;

import java.io.InputStream;
import java.io.OutputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.nio.charset.Charset;
import java.nio.charset.CodingErrorAction;
import org.msgpack.core.buffer.ArrayBufferInput;
import org.msgpack.core.buffer.ChannelBufferInput;
import org.msgpack.core.buffer.ChannelBufferOutput;
import org.msgpack.core.buffer.InputStreamBufferInput;
import org.msgpack.core.buffer.MessageBufferInput;
import org.msgpack.core.buffer.MessageBufferOutput;
import org.msgpack.core.buffer.OutputStreamBufferOutput;
/* loaded from: classes3-dex2jar.jar:org/msgpack/core/MessagePack.class */
public class MessagePack {
    public static final Charset UTF8 = Charset.forName("UTF-8");

    /* loaded from: classes3-dex2jar.jar:org/msgpack/core/MessagePack$Code.class */
    public static final class Code {
        public static final byte ARRAY16 = -36;
        public static final byte ARRAY32 = -35;
        public static final byte BIN16 = -59;
        public static final byte BIN32 = -58;
        public static final byte BIN8 = -60;
        public static final byte EXT16 = -56;
        public static final byte EXT32 = -55;
        public static final byte EXT8 = -57;
        public static final byte FALSE = -62;
        public static final byte FIXARRAY_PREFIX = -112;
        public static final byte FIXEXT1 = -44;
        public static final byte FIXEXT16 = -40;
        public static final byte FIXEXT2 = -43;
        public static final byte FIXEXT4 = -42;
        public static final byte FIXEXT8 = -41;
        public static final byte FIXMAP_PREFIX = Byte.MIN_VALUE;
        public static final byte FIXSTR_PREFIX = -96;
        public static final byte FLOAT32 = -54;
        public static final byte FLOAT64 = -53;
        public static final byte INT16 = -47;
        public static final byte INT32 = -46;
        public static final byte INT64 = -45;
        public static final byte INT8 = -48;
        public static final byte MAP16 = -34;
        public static final byte MAP32 = -33;
        public static final byte NEGFIXINT_PREFIX = -32;
        public static final byte NEVER_USED = -63;
        public static final byte NIL = -64;
        public static final byte POSFIXINT_MASK = Byte.MIN_VALUE;
        public static final byte STR16 = -38;
        public static final byte STR32 = -37;
        public static final byte STR8 = -39;
        public static final byte TRUE = -61;
        public static final byte UINT16 = -51;
        public static final byte UINT32 = -50;
        public static final byte UINT64 = -49;
        public static final byte UINT8 = -52;

        public static final boolean isFixInt(byte b) {
            int i = b & 255;
            return i <= 127 || i >= 224;
        }

        public static final boolean isFixStr(byte b) {
            return (b & (-32)) == -96;
        }

        public static final boolean isFixedArray(byte b) {
            return (b & (-16)) == -112;
        }

        public static final boolean isFixedMap(byte b) {
            return (b & (-16)) == -128;
        }

        public static final boolean isFixedRaw(byte b) {
            return (b & (-32)) == -96;
        }

        public static final boolean isNegFixInt(byte b) {
            return (b & (-32)) == -32;
        }

        public static final boolean isPosFixInt(byte b) {
            return (b & Byte.MIN_VALUE) == 0;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/core/MessagePack$PackerConfig.class */
    public static class PackerConfig implements Cloneable {
        public int bufferFlushThreshold;
        public int bufferSize;
        public int smallStringOptimizationThreshold;

        public PackerConfig() {
            this.smallStringOptimizationThreshold = 512;
            this.bufferFlushThreshold = 8192;
            this.bufferSize = 8192;
        }

        public PackerConfig(PackerConfig packerConfig) {
            this.smallStringOptimizationThreshold = 512;
            this.bufferFlushThreshold = 8192;
            this.bufferSize = 8192;
            this.smallStringOptimizationThreshold = this.smallStringOptimizationThreshold;
            this.bufferFlushThreshold = this.bufferFlushThreshold;
            this.bufferSize = this.bufferSize;
        }

        public PackerConfig clone() {
            return new PackerConfig(this);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof PackerConfig)) {
                return false;
            }
            PackerConfig packerConfig = (PackerConfig) obj;
            boolean z = false;
            if (this.smallStringOptimizationThreshold == packerConfig.smallStringOptimizationThreshold) {
                z = false;
                if (this.bufferFlushThreshold == packerConfig.bufferFlushThreshold) {
                    z = false;
                    if (this.bufferSize == packerConfig.bufferSize) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int getBufferFlushThreshold() {
            return this.bufferFlushThreshold;
        }

        public int getBufferSize() {
            return this.bufferSize;
        }

        public int getSmallStringOptimizationThreshold() {
            return this.smallStringOptimizationThreshold;
        }

        public MessageBufferPacker newBufferPacker() {
            return new MessageBufferPacker(this);
        }

        public MessagePacker newPacker(OutputStream outputStream) {
            return newPacker(new OutputStreamBufferOutput(outputStream, this.bufferSize));
        }

        public MessagePacker newPacker(WritableByteChannel writableByteChannel) {
            return newPacker(new ChannelBufferOutput(writableByteChannel, this.bufferSize));
        }

        public MessagePacker newPacker(MessageBufferOutput messageBufferOutput) {
            return new MessagePacker(messageBufferOutput, this);
        }

        public PackerConfig withBufferFlushThreshold(int i) {
            PackerConfig clone = clone();
            clone.bufferFlushThreshold = i;
            return clone;
        }

        public PackerConfig withBufferSize(int i) {
            PackerConfig clone = clone();
            clone.bufferSize = i;
            return clone;
        }

        public PackerConfig withSmallStringOptimizationThreshold(int i) {
            PackerConfig clone = clone();
            clone.smallStringOptimizationThreshold = i;
            return clone;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/msgpack/core/MessagePack$UnpackerConfig.class */
    public static class UnpackerConfig implements Cloneable {
        public CodingErrorAction actionOnMalformedString;
        public CodingErrorAction actionOnUnmappableString;
        public boolean allowReadingBinaryAsString;
        public boolean allowReadingStringAsBinary;
        public int bufferSize;
        public int stringDecoderBufferSize;
        public int stringSizeLimit;

        public UnpackerConfig() {
            this.allowReadingStringAsBinary = true;
            this.allowReadingBinaryAsString = true;
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            this.actionOnMalformedString = codingErrorAction;
            this.actionOnUnmappableString = codingErrorAction;
            this.stringSizeLimit = Integer.MAX_VALUE;
            this.bufferSize = 8192;
            this.stringDecoderBufferSize = 8192;
        }

        public UnpackerConfig(UnpackerConfig unpackerConfig) {
            this.allowReadingStringAsBinary = true;
            this.allowReadingBinaryAsString = true;
            CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
            this.actionOnMalformedString = codingErrorAction;
            this.actionOnUnmappableString = codingErrorAction;
            this.stringSizeLimit = Integer.MAX_VALUE;
            this.bufferSize = 8192;
            this.stringDecoderBufferSize = 8192;
            this.allowReadingStringAsBinary = unpackerConfig.allowReadingStringAsBinary;
            this.allowReadingBinaryAsString = unpackerConfig.allowReadingBinaryAsString;
            this.actionOnMalformedString = unpackerConfig.actionOnMalformedString;
            this.actionOnUnmappableString = unpackerConfig.actionOnUnmappableString;
            this.stringSizeLimit = unpackerConfig.stringSizeLimit;
            this.bufferSize = unpackerConfig.bufferSize;
        }

        public UnpackerConfig clone() {
            return new UnpackerConfig(this);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof UnpackerConfig)) {
                return false;
            }
            UnpackerConfig unpackerConfig = (UnpackerConfig) obj;
            boolean z = false;
            if (this.allowReadingStringAsBinary == unpackerConfig.allowReadingStringAsBinary) {
                z = false;
                if (this.allowReadingBinaryAsString == unpackerConfig.allowReadingBinaryAsString) {
                    z = false;
                    if (this.actionOnMalformedString == unpackerConfig.actionOnMalformedString) {
                        z = false;
                        if (this.actionOnUnmappableString == unpackerConfig.actionOnUnmappableString) {
                            z = false;
                            if (this.stringSizeLimit == unpackerConfig.stringSizeLimit) {
                                z = false;
                                if (this.stringDecoderBufferSize == unpackerConfig.stringDecoderBufferSize) {
                                    z = false;
                                    if (this.bufferSize == unpackerConfig.bufferSize) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        public CodingErrorAction getActionOnMalformedString() {
            return this.actionOnMalformedString;
        }

        public CodingErrorAction getActionOnUnmappableString() {
            return this.actionOnUnmappableString;
        }

        public boolean getAllowReadingBinaryAsString() {
            return this.allowReadingBinaryAsString;
        }

        public boolean getAllowReadingStringAsBinary() {
            return this.allowReadingStringAsBinary;
        }

        public int getBufferSize() {
            return this.bufferSize;
        }

        public int getStringDecoderBufferSize() {
            return this.stringDecoderBufferSize;
        }

        public int getStringSizeLimit() {
            return this.stringSizeLimit;
        }

        public MessageUnpacker newUnpacker(InputStream inputStream) {
            return newUnpacker(new InputStreamBufferInput(inputStream, this.bufferSize));
        }

        public MessageUnpacker newUnpacker(ReadableByteChannel readableByteChannel) {
            return newUnpacker(new ChannelBufferInput(readableByteChannel, this.bufferSize));
        }

        public MessageUnpacker newUnpacker(MessageBufferInput messageBufferInput) {
            return new MessageUnpacker(messageBufferInput, this);
        }

        public MessageUnpacker newUnpacker(byte[] bArr) {
            return newUnpacker(new ArrayBufferInput(bArr));
        }

        public MessageUnpacker newUnpacker(byte[] bArr, int i, int i2) {
            return newUnpacker(new ArrayBufferInput(bArr, i, i2));
        }

        public UnpackerConfig withActionOnMalformedString(CodingErrorAction codingErrorAction) {
            UnpackerConfig clone = clone();
            clone.actionOnMalformedString = codingErrorAction;
            return clone;
        }

        public UnpackerConfig withActionOnUnmappableString(CodingErrorAction codingErrorAction) {
            UnpackerConfig clone = clone();
            clone.actionOnUnmappableString = codingErrorAction;
            return clone;
        }

        public UnpackerConfig withAllowReadingBinaryAsString(boolean z) {
            UnpackerConfig clone = clone();
            clone.allowReadingBinaryAsString = z;
            return clone;
        }

        public UnpackerConfig withAllowReadingStringAsBinary(boolean z) {
            UnpackerConfig clone = clone();
            clone.allowReadingStringAsBinary = z;
            return clone;
        }

        public UnpackerConfig withBufferSize(int i) {
            UnpackerConfig clone = clone();
            clone.bufferSize = i;
            return clone;
        }

        public UnpackerConfig withStringDecoderBufferSize(int i) {
            UnpackerConfig clone = clone();
            clone.stringDecoderBufferSize = i;
            return clone;
        }

        public UnpackerConfig withStringSizeLimit(int i) {
            UnpackerConfig clone = clone();
            clone.stringSizeLimit = i;
            return clone;
        }
    }

    public static MessageBufferPacker newDefaultBufferPacker() {
        return new PackerConfig().newBufferPacker();
    }

    public static MessagePacker newDefaultPacker(OutputStream outputStream) {
        return new PackerConfig().newPacker(outputStream);
    }

    public static MessagePacker newDefaultPacker(WritableByteChannel writableByteChannel) {
        return new PackerConfig().newPacker(writableByteChannel);
    }

    public static MessagePacker newDefaultPacker(MessageBufferOutput messageBufferOutput) {
        return new PackerConfig().newPacker(messageBufferOutput);
    }

    public static MessageUnpacker newDefaultUnpacker(InputStream inputStream) {
        return new UnpackerConfig().newUnpacker(inputStream);
    }

    public static MessageUnpacker newDefaultUnpacker(ReadableByteChannel readableByteChannel) {
        return new UnpackerConfig().newUnpacker(readableByteChannel);
    }

    public static MessageUnpacker newDefaultUnpacker(MessageBufferInput messageBufferInput) {
        return new UnpackerConfig().newUnpacker(messageBufferInput);
    }

    public static MessageUnpacker newDefaultUnpacker(byte[] bArr) {
        return new UnpackerConfig().newUnpacker(bArr);
    }

    public static MessageUnpacker newDefaultUnpacker(byte[] bArr, int i, int i2) {
        return new UnpackerConfig().newUnpacker(bArr, i, i2);
    }
}
