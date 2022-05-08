package androidx.media2.exoplayer.external.text.cea;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.Subtitle;
import androidx.media2.exoplayer.external.text.SubtitleDecoder;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.SubtitleInputBuffer;
import androidx.media2.exoplayer.external.text.SubtitleOutputBuffer;
import androidx.media2.exoplayer.external.util.Assertions;
import java.util.ArrayDeque;
import java.util.PriorityQueue;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/CeaDecoder.class */
public abstract class CeaDecoder implements SubtitleDecoder {
    public static final int NUM_INPUT_BUFFERS = 10;
    public static final int NUM_OUTPUT_BUFFERS = 2;
    public final ArrayDeque<CeaInputBuffer> availableInputBuffers = new ArrayDeque<>();
    public final ArrayDeque<SubtitleOutputBuffer> availableOutputBuffers;
    public CeaInputBuffer dequeuedInputBuffer;
    public long playbackPositionUs;
    public long queuedInputBufferCount;
    public final PriorityQueue<CeaInputBuffer> queuedInputBuffers;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaInputBuffer.class */
    public static final class CeaInputBuffer extends SubtitleInputBuffer implements Comparable<CeaInputBuffer> {
        public long queuedInputBufferCount;

        public CeaInputBuffer() {
        }

        /* JADX WARN: Type inference failed for: r0v20, types: [long] */
        /* JADX WARN: Type inference failed for: r0v9, types: [long] */
        /* JADX WARN: Unknown variable types count: 2 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compareTo(@androidx.annotation.NonNull androidx.media2.exoplayer.external.text.cea.CeaDecoder.CeaInputBuffer r6) {
            /*
                r5 = this;
                r0 = r5
                boolean r0 = r0.isEndOfStream()
                r7 = r0
                r0 = r6
                boolean r0 = r0.isEndOfStream()
                r8 = r0
                r0 = 1
                r9 = r0
                r0 = 1
                r10 = r0
                r0 = r7
                r1 = r8
                if (r0 == r1) goto L_0x0025
                r0 = r5
                boolean r0 = r0.isEndOfStream()
                if (r0 == 0) goto L_0x001f
                goto L_0x0022
            L_0x001f:
                r0 = -1
                r10 = r0
            L_0x0022:
                r0 = r10
                return r0
            L_0x0025:
                r0 = r5
                long r0 = r0.timeUs
                r1 = r6
                long r1 = r1.timeUs
                long r0 = r0 - r1
                r11 = r0
                r0 = r11
                r13 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0053
                r0 = r5
                long r0 = r0.queuedInputBufferCount
                r1 = r6
                long r1 = r1.queuedInputBufferCount
                long r0 = r0 - r1
                r11 = r0
                r0 = r11
                r13 = r0
                r0 = r11
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x0053
                r0 = 0
                return r0
            L_0x0053:
                r0 = r13
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0061
                r0 = r9
                r10 = r0
                goto L_0x0064
            L_0x0061:
                r0 = -1
                r10 = r0
            L_0x0064:
                r0 = r10
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.cea.CeaDecoder.CeaInputBuffer.compareTo(androidx.media2.exoplayer.external.text.cea.CeaDecoder$CeaInputBuffer):int");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/CeaDecoder$CeaOutputBuffer.class */
    public final class CeaOutputBuffer extends SubtitleOutputBuffer {
        public CeaOutputBuffer() {
        }

        @Override // androidx.media2.exoplayer.external.text.SubtitleOutputBuffer, androidx.media2.exoplayer.external.decoder.OutputBuffer
        public final void release() {
            CeaDecoder.this.releaseOutputBuffer(this);
        }
    }

    public CeaDecoder() {
        for (int i = 0; i < 10; i++) {
            this.availableInputBuffers.add(new CeaInputBuffer());
        }
        this.availableOutputBuffers = new ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.availableOutputBuffers.add(new CeaOutputBuffer());
        }
        this.queuedInputBuffers = new PriorityQueue<>();
    }

    private void releaseInputBuffer(CeaInputBuffer ceaInputBuffer) {
        ceaInputBuffer.clear();
        this.availableInputBuffers.add(ceaInputBuffer);
    }

    public abstract Subtitle createSubtitle();

    public abstract void decode(SubtitleInputBuffer subtitleInputBuffer);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media2.exoplayer.external.decoder.Decoder
    public SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        Assertions.checkState(this.dequeuedInputBuffer == null);
        if (this.availableInputBuffers.isEmpty()) {
            return null;
        }
        this.dequeuedInputBuffer = this.availableInputBuffers.pollFirst();
        return this.dequeuedInputBuffer;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.media2.exoplayer.external.decoder.Decoder
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        if (this.availableOutputBuffers.isEmpty()) {
            return null;
        }
        while (!this.queuedInputBuffers.isEmpty() && this.queuedInputBuffers.peek().timeUs <= this.playbackPositionUs) {
            CeaInputBuffer poll = this.queuedInputBuffers.poll();
            if (poll.isEndOfStream()) {
                SubtitleOutputBuffer pollFirst = this.availableOutputBuffers.pollFirst();
                pollFirst.addFlag(4);
                releaseInputBuffer(poll);
                return pollFirst;
            }
            decode(poll);
            if (isNewSubtitleDataAvailable()) {
                Subtitle createSubtitle = createSubtitle();
                if (!poll.isDecodeOnly()) {
                    SubtitleOutputBuffer pollFirst2 = this.availableOutputBuffers.pollFirst();
                    pollFirst2.setContent(poll.timeUs, createSubtitle, Long.MAX_VALUE);
                    releaseInputBuffer(poll);
                    return pollFirst2;
                }
            }
            releaseInputBuffer(poll);
        }
        return null;
    }

    @Override // androidx.media2.exoplayer.external.decoder.Decoder
    public void flush() {
        this.queuedInputBufferCount = 0L;
        this.playbackPositionUs = 0L;
        while (!this.queuedInputBuffers.isEmpty()) {
            releaseInputBuffer(this.queuedInputBuffers.poll());
        }
        CeaInputBuffer ceaInputBuffer = this.dequeuedInputBuffer;
        if (ceaInputBuffer != null) {
            releaseInputBuffer(ceaInputBuffer);
            this.dequeuedInputBuffer = null;
        }
    }

    @Override // androidx.media2.exoplayer.external.decoder.Decoder
    public abstract String getName();

    public abstract boolean isNewSubtitleDataAvailable();

    /* JADX WARN: Can't rename method to resolve collision */
    public void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        Assertions.checkArgument(subtitleInputBuffer == this.dequeuedInputBuffer);
        if (subtitleInputBuffer.isDecodeOnly()) {
            releaseInputBuffer(this.dequeuedInputBuffer);
        } else {
            CeaInputBuffer ceaInputBuffer = this.dequeuedInputBuffer;
            long j = this.queuedInputBufferCount;
            this.queuedInputBufferCount = 1 + j;
            ceaInputBuffer.queuedInputBufferCount = j;
            this.queuedInputBuffers.add(this.dequeuedInputBuffer);
        }
        this.dequeuedInputBuffer = null;
    }

    @Override // androidx.media2.exoplayer.external.decoder.Decoder
    public void release() {
    }

    public void releaseOutputBuffer(SubtitleOutputBuffer subtitleOutputBuffer) {
        subtitleOutputBuffer.clear();
        this.availableOutputBuffers.add(subtitleOutputBuffer);
    }

    @Override // androidx.media2.exoplayer.external.text.SubtitleDecoder
    public void setPositionUs(long j) {
        this.playbackPositionUs = j;
    }
}
