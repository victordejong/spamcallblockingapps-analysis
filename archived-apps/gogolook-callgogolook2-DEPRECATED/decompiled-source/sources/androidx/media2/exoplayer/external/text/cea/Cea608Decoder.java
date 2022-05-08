package androidx.media2.exoplayer.external.text.cea;

import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.annotation.RestrictTo;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.InputDeviceCompat;
import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import androidx.media2.exoplayer.external.extractor.mp4.MetadataUtil;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import androidx.media2.exoplayer.external.text.Cue;
import androidx.media2.exoplayer.external.text.Subtitle;
import androidx.media2.exoplayer.external.text.SubtitleDecoderException;
import androidx.media2.exoplayer.external.text.SubtitleInputBuffer;
import androidx.media2.exoplayer.external.text.SubtitleOutputBuffer;
import androidx.media2.exoplayer.external.util.Log;
import androidx.media2.exoplayer.external.util.MimeTypes;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p459j.p460a.p596x.p599m.C14427a;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/Cea608Decoder.class */
public final class Cea608Decoder extends CeaDecoder {
    public static final int CC_FIELD_FLAG = 1;
    public static final byte CC_IMPLICIT_DATA_HEADER = -4;
    public static final int CC_MODE_PAINT_ON = 3;
    public static final int CC_MODE_POP_ON = 2;
    public static final int CC_MODE_ROLL_UP = 1;
    public static final int CC_MODE_UNKNOWN = 0;
    public static final int CC_TYPE_FLAG = 2;
    public static final int CC_VALID_FLAG = 4;
    public static final byte CTRL_BACKSPACE = 33;
    public static final byte CTRL_CARRIAGE_RETURN = 45;
    public static final byte CTRL_DELETE_TO_END_OF_ROW = 36;
    public static final byte CTRL_END_OF_CAPTION = 47;
    public static final byte CTRL_ERASE_DISPLAYED_MEMORY = 44;
    public static final byte CTRL_ERASE_NON_DISPLAYED_MEMORY = 46;
    public static final byte CTRL_RESUME_CAPTION_LOADING = 32;
    public static final byte CTRL_RESUME_DIRECT_CAPTIONING = 41;
    public static final byte CTRL_RESUME_TEXT_DISPLAY = 43;
    public static final byte CTRL_ROLL_UP_CAPTIONS_2_ROWS = 37;
    public static final byte CTRL_ROLL_UP_CAPTIONS_3_ROWS = 38;
    public static final byte CTRL_ROLL_UP_CAPTIONS_4_ROWS = 39;
    public static final byte CTRL_TEXT_RESTART = 42;
    public static final int DEFAULT_CAPTIONS_ROW_COUNT = 4;
    public static final int NTSC_CC_CHANNEL_1 = 0;
    public static final int NTSC_CC_CHANNEL_2 = 1;
    public static final int NTSC_CC_FIELD_1 = 0;
    public static final int NTSC_CC_FIELD_2 = 1;
    public static final int STYLE_ITALICS = 7;
    public static final int STYLE_UNCHANGED = 8;
    public static final String TAG = "Cea608Decoder";
    public int captionMode;
    public int captionRowCount;
    public boolean captionValid;
    public List<Cue> cues;
    public boolean isInCaptionService;
    public List<Cue> lastCues;
    public final int packetLength;
    public byte repeatableControlCc1;
    public byte repeatableControlCc2;
    public boolean repeatableControlSet;
    public final int selectedChannel;
    public final int selectedField;
    public static final int[] ROW_INDICES = {11, 1, 3, 12, 14, 5, 7, 9};
    public static final int[] COLUMN_INDICES = {0, 4, 8, 12, 16, 20, 24, 28};
    public static final int[] STYLE_COLORS = {-1, -16711936, -16776961, -16711681, SupportMenu.CATEGORY_MASK, InputDeviceCompat.SOURCE_ANY, -65281};
    public static final int[] BASIC_CHARACTER_SET = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, MatroskaExtractor.ID_AUDIO, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, MatroskaExtractor.ID_TIME_CODE, 247, 209, MatroskaExtractor.ID_CUE_CLUSTER_POSITION, 9632};
    public static final int[] SPECIAL_CHARACTER_SET = {MatroskaExtractor.ID_TRACK_ENTRY, MatroskaExtractor.ID_PIXEL_WIDTH, PsExtractor.PRIVATE_STREAM_1, 191, 8482, 162, MatroskaExtractor.ID_SIMPLE_BLOCK, 9834, 224, 32, 232, 226, 234, 238, 244, 251};
    public static final int[] SPECIAL_ES_FR_CHARACTER_SET = {193, 201, 211, 218, 220, C14427a.f32275e, 8216, MatroskaExtractor.ID_BLOCK, 42, 39, 8212, MetadataUtil.TYPE_TOP_BYTE_COPYRIGHT, 8480, 8226, 8220, 8221, PsExtractor.AUDIO_STREAM, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, MatroskaExtractor.ID_CUE_POINT};
    public static final int[] SPECIAL_PT_DE_CHARACTER_SET = {195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, Cea708Decoder.CHARACTER_LOWER_RIGHT_BORDER, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};
    public static final boolean[] ODD_PARITY_BYTE_TABLE = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};
    public final ParsableByteArray ccData = new ParsableByteArray();
    public final ArrayList<CueBuilder> cueBuilders = new ArrayList<>();
    public CueBuilder currentCueBuilder = new CueBuilder(0, 4);
    public int currentChannel = 0;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder.class */
    public static class CueBuilder {
        public static final int BASE_ROW = 15;
        public static final int SCREEN_CHARWIDTH = 32;
        public int captionMode;
        public int captionRowCount;
        public int indent;
        public int row;
        public int tabOffset;
        public final List<CueStyle> cueStyles = new ArrayList();
        public final List<SpannableString> rolledUpCaptions = new ArrayList();
        public final StringBuilder captionStringBuilder = new StringBuilder();

        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/cea/Cea608Decoder$CueBuilder$CueStyle.class */
        public static class CueStyle {
            public int start;
            public final int style;
            public final boolean underline;

            public CueStyle(int i, boolean z, int i2) {
                this.style = i;
                this.underline = z;
                this.start = i2;
            }
        }

        public CueBuilder(int i, int i2) {
            reset(i);
            setCaptionRowCount(i2);
        }

        private SpannableString buildCurrentLine() {
            int i;
            int i2;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.captionStringBuilder);
            int length = spannableStringBuilder.length();
            int i3 = 0;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            int i7 = -1;
            int i8 = -1;
            boolean z = false;
            while (i3 < this.cueStyles.size()) {
                CueStyle cueStyle = this.cueStyles.get(i3);
                boolean z2 = cueStyle.underline;
                int i9 = cueStyle.style;
                i8 = i8;
                if (i9 != 8) {
                    z = i9 == 7;
                    if (i9 != 7) {
                        i8 = Cea608Decoder.STYLE_COLORS[i9];
                    }
                }
                int i10 = cueStyle.start;
                int i11 = i3 + 1;
                if (i10 == (i11 < this.cueStyles.size() ? this.cueStyles.get(i11).start : length)) {
                    i3 = i11;
                    i8 = i8;
                    z = z;
                } else {
                    if (i4 == -1 || z2) {
                        i = i4;
                        if (i4 == -1) {
                            i = i4;
                            if (z2) {
                                i = i10;
                            }
                        }
                    } else {
                        setUnderlineSpan(spannableStringBuilder, i4, i10);
                        i = -1;
                    }
                    if (i5 == -1 || z) {
                        i2 = i5;
                        if (i5 == -1) {
                            i2 = i5;
                            if (z) {
                                i2 = i10;
                            }
                        }
                    } else {
                        setItalicSpan(spannableStringBuilder, i5, i10);
                        i2 = -1;
                    }
                    i3 = i11;
                    i4 = i;
                    i5 = i2;
                    i8 = i8;
                    z = z;
                    if (i8 != i7) {
                        setColorSpan(spannableStringBuilder, i6, i10, i7);
                        i7 = i8;
                        i3 = i11;
                        i4 = i;
                        i5 = i2;
                        i6 = i10;
                        i8 = i8;
                        z = z;
                    }
                }
            }
            if (!(i4 == -1 || i4 == length)) {
                setUnderlineSpan(spannableStringBuilder, i4, length);
            }
            if (!(i5 == -1 || i5 == length)) {
                setItalicSpan(spannableStringBuilder, i5, length);
            }
            if (i6 != length) {
                setColorSpan(spannableStringBuilder, i6, length, i7);
            }
            return new SpannableString(spannableStringBuilder);
        }

        public static void setColorSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3) {
            if (i3 != -1) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(i3), i, i2, 33);
            }
        }

        public static void setItalicSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new StyleSpan(2), i, i2, 33);
        }

        public static void setUnderlineSpan(SpannableStringBuilder spannableStringBuilder, int i, int i2) {
            spannableStringBuilder.setSpan(new UnderlineSpan(), i, i2, 33);
        }

        public void append(char c) {
            this.captionStringBuilder.append(c);
        }

        public void backspace() {
            CueStyle cueStyle;
            int i;
            int length = this.captionStringBuilder.length();
            if (length > 0) {
                this.captionStringBuilder.delete(length - 1, length);
                for (int size = this.cueStyles.size() - 1; size >= 0 && (i = (cueStyle = this.cueStyles.get(size)).start) == length; size--) {
                    cueStyle.start = i - 1;
                }
            }
        }

        public Cue build(int i) {
            float f;
            int i2;
            int i3;
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            for (int i4 = 0; i4 < this.rolledUpCaptions.size(); i4++) {
                spannableStringBuilder.append((CharSequence) this.rolledUpCaptions.get(i4));
                spannableStringBuilder.append('\n');
            }
            spannableStringBuilder.append((CharSequence) buildCurrentLine());
            if (spannableStringBuilder.length() == 0) {
                return null;
            }
            int i5 = this.indent + this.tabOffset;
            int length = (32 - i5) - spannableStringBuilder.length();
            int i6 = i5 - length;
            if (i == Integer.MIN_VALUE) {
                i = (this.captionMode != 2 || (Math.abs(i6) >= 3 && length >= 0)) ? (this.captionMode != 2 || i6 <= 0) ? 0 : 2 : 1;
            }
            if (i != 1) {
                if (i == 2) {
                    i5 = 32 - length;
                }
                f = ((i5 / 32.0f) * 0.8f) + 0.1f;
            } else {
                f = 0.5f;
            }
            if (this.captionMode != 1) {
                i3 = this.row;
                if (i3 <= 7) {
                    i2 = 0;
                    return new Cue(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, Float.MIN_VALUE);
                }
            }
            i3 = (this.row - 15) - 2;
            i2 = 2;
            return new Cue(spannableStringBuilder, Layout.Alignment.ALIGN_NORMAL, i3, 1, i2, f, i, Float.MIN_VALUE);
        }

        public boolean isEmpty() {
            return this.cueStyles.isEmpty() && this.rolledUpCaptions.isEmpty() && this.captionStringBuilder.length() == 0;
        }

        public void reset(int i) {
            this.captionMode = i;
            this.cueStyles.clear();
            this.rolledUpCaptions.clear();
            this.captionStringBuilder.setLength(0);
            this.row = 15;
            this.indent = 0;
            this.tabOffset = 0;
        }

        public void rollUp() {
            this.rolledUpCaptions.add(buildCurrentLine());
            this.captionStringBuilder.setLength(0);
            this.cueStyles.clear();
            int min = Math.min(this.captionRowCount, this.row);
            while (this.rolledUpCaptions.size() >= min) {
                this.rolledUpCaptions.remove(0);
            }
        }

        public void setCaptionMode(int i) {
            this.captionMode = i;
        }

        public void setCaptionRowCount(int i) {
            this.captionRowCount = i;
        }

        public void setStyle(int i, boolean z) {
            this.cueStyles.add(new CueStyle(i, z, this.captionStringBuilder.length()));
        }
    }

    public Cea608Decoder(String str, int i) {
        this.packetLength = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i == 1) {
            this.selectedChannel = 0;
            this.selectedField = 0;
        } else if (i == 2) {
            this.selectedChannel = 1;
            this.selectedField = 0;
        } else if (i == 3) {
            this.selectedChannel = 0;
            this.selectedField = 1;
        } else if (i != 4) {
            Log.m37483w(TAG, "Invalid channel. Defaulting to CC1.");
            this.selectedChannel = 0;
            this.selectedField = 0;
        } else {
            this.selectedChannel = 1;
            this.selectedField = 1;
        }
        setCaptionMode(0);
        resetCueBuilders();
        this.isInCaptionService = true;
    }

    public static int getChannel(byte b) {
        return (b >> 3) & 1;
    }

    public static char getChar(byte b) {
        return (char) BASIC_CHARACTER_SET[(b & Byte.MAX_VALUE) - 32];
    }

    private List<Cue> getDisplayCues() {
        int size = this.cueBuilders.size();
        ArrayList arrayList = new ArrayList(size);
        int i = 2;
        for (int i2 = 0; i2 < size; i2++) {
            Cue build = this.cueBuilders.get(i2).build(Integer.MIN_VALUE);
            arrayList.add(build);
            i = i;
            if (build != null) {
                i = Math.min(i, build.positionAnchor);
            }
        }
        ArrayList arrayList2 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            Cue cue = (Cue) arrayList.get(i3);
            if (cue != null) {
                Cue cue2 = cue;
                if (cue.positionAnchor != i) {
                    cue2 = this.cueBuilders.get(i3).build(i);
                }
                arrayList2.add(cue2);
            }
        }
        return arrayList2;
    }

    public static char getExtendedEsFrChar(byte b) {
        return (char) SPECIAL_ES_FR_CHARACTER_SET[b & 31];
    }

    public static char getExtendedPtDeChar(byte b) {
        return (char) SPECIAL_PT_DE_CHARACTER_SET[b & 31];
    }

    public static char getSpecialChar(byte b) {
        return (char) SPECIAL_CHARACTER_SET[b & 15];
    }

    private void handleCtrl(byte b, byte b2, boolean z) {
        this.currentChannel = getChannel(b);
        if (isRepeatable(b)) {
            if (!z || this.repeatableControlCc1 != b || this.repeatableControlCc2 != b2) {
                this.repeatableControlSet = true;
                this.repeatableControlCc1 = b;
                this.repeatableControlCc2 = b2;
            } else {
                return;
            }
        }
        if (this.currentChannel == this.selectedChannel) {
            if (isMidrowCtrlCode(b, b2)) {
                handleMidrowCtrl(b2);
            } else if (isPreambleAddressCode(b, b2)) {
                handlePreambleAddressCode(b, b2);
            } else if (isTabCtrlCode(b, b2)) {
                this.currentCueBuilder.tabOffset = b2 - 32;
            } else if (isMiscCode(b, b2)) {
                handleMiscCode(b2);
            }
        }
    }

    private void handleMidrowCtrl(byte b) {
        this.currentCueBuilder.append(' ');
        this.currentCueBuilder.setStyle((b >> 1) & 7, (b & 1) == 1);
    }

    private void handleMiscCode(byte b) {
        if (b == 32) {
            setCaptionMode(2);
        } else if (b != 41) {
            switch (b) {
                case 37:
                    setCaptionMode(1);
                    setCaptionRowCount(2);
                    return;
                case 38:
                    setCaptionMode(1);
                    setCaptionRowCount(3);
                    return;
                case 39:
                    setCaptionMode(1);
                    setCaptionRowCount(4);
                    return;
                default:
                    int i = this.captionMode;
                    if (i != 0) {
                        if (b == 33) {
                            this.currentCueBuilder.backspace();
                            return;
                        } else if (b != 36) {
                            switch (b) {
                                case 44:
                                    this.cues = Collections.emptyList();
                                    int i2 = this.captionMode;
                                    if (i2 == 1 || i2 == 3) {
                                        resetCueBuilders();
                                        return;
                                    }
                                    return;
                                case 45:
                                    if (i == 1 && !this.currentCueBuilder.isEmpty()) {
                                        this.currentCueBuilder.rollUp();
                                        return;
                                    }
                                    return;
                                case 46:
                                    resetCueBuilders();
                                    return;
                                case 47:
                                    this.cues = getDisplayCues();
                                    resetCueBuilders();
                                    return;
                                default:
                                    return;
                            }
                        } else {
                            return;
                        }
                    } else {
                        return;
                    }
            }
        } else {
            setCaptionMode(3);
        }
    }

    private void handlePreambleAddressCode(byte b, byte b2) {
        int i = ROW_INDICES[b & 7];
        boolean z = false;
        int i2 = i;
        if ((b2 & 32) != 0) {
            i2 = i + 1;
        }
        if (i2 != this.currentCueBuilder.row) {
            if (this.captionMode != 1 && !this.currentCueBuilder.isEmpty()) {
                this.currentCueBuilder = new CueBuilder(this.captionMode, this.captionRowCount);
                this.cueBuilders.add(this.currentCueBuilder);
            }
            this.currentCueBuilder.row = i2;
        }
        boolean z2 = (b2 & 16) == 16;
        if ((b2 & 1) == 1) {
            z = true;
        }
        int i3 = (b2 >> 1) & 7;
        this.currentCueBuilder.setStyle(z2 ? 8 : i3, z);
        if (z2) {
            this.currentCueBuilder.indent = COLUMN_INDICES[i3];
        }
    }

    public static boolean isMidrowCtrlCode(byte b, byte b2) {
        return (b & 247) == 17 && (b2 & 240) == 32;
    }

    public static boolean isMiscCode(byte b, byte b2) {
        return (b & 246) == 20 && (b2 & 240) == 32;
    }

    public static boolean isPreambleAddressCode(byte b, byte b2) {
        return (b & 240) == 16 && (b2 & 192) == 64;
    }

    public static boolean isRepeatable(byte b) {
        return (b & 240) == 16;
    }

    public static boolean isServiceSwitchCommand(byte b) {
        return (b & 247) == 20;
    }

    public static boolean isTabCtrlCode(byte b, byte b2) {
        return (b & 247) == 23 && b2 >= 33 && b2 <= 35;
    }

    public static boolean isXdsControlCode(byte b) {
        boolean z = true;
        if (1 > b || b > 15) {
            z = false;
        }
        return z;
    }

    private void maybeUpdateIsInCaptionService(byte b, byte b2) {
        if (isXdsControlCode(b)) {
            this.isInCaptionService = false;
        } else if (isServiceSwitchCommand(b)) {
            if (!(b2 == 32 || b2 == 47)) {
                switch (b2) {
                    case 37:
                    case 38:
                    case 39:
                        break;
                    default:
                        switch (b2) {
                            case 41:
                                break;
                            case 42:
                            case 43:
                                this.isInCaptionService = false;
                                return;
                            default:
                                return;
                        }
                }
            }
            this.isInCaptionService = true;
        }
    }

    private void resetCueBuilders() {
        this.currentCueBuilder.reset(this.captionMode);
        this.cueBuilders.clear();
        this.cueBuilders.add(this.currentCueBuilder);
    }

    private void setCaptionMode(int i) {
        int i2 = this.captionMode;
        if (i2 != i) {
            this.captionMode = i;
            if (i == 3) {
                for (int i3 = 0; i3 < this.cueBuilders.size(); i3++) {
                    this.cueBuilders.get(i3).setCaptionMode(i);
                }
                return;
            }
            resetCueBuilders();
            if (i2 == 3 || i == 1 || i == 0) {
                this.cues = Collections.emptyList();
            }
        }
    }

    private void setCaptionRowCount(int i) {
        this.captionRowCount = i;
        this.currentCueBuilder.setCaptionRowCount(i);
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder
    public Subtitle createSubtitle() {
        List<Cue> list = this.cues;
        this.lastCues = list;
        return new CeaSubtitle(list);
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder
    public void decode(SubtitleInputBuffer subtitleInputBuffer) {
        this.ccData.reset(subtitleInputBuffer.data.array(), subtitleInputBuffer.data.limit());
        boolean z = false;
        while (true) {
            int bytesLeft = this.ccData.bytesLeft();
            int i = this.packetLength;
            if (bytesLeft < i) {
                break;
            }
            byte readUnsignedByte = i == 2 ? (byte) -4 : (byte) this.ccData.readUnsignedByte();
            int readUnsignedByte2 = this.ccData.readUnsignedByte();
            int readUnsignedByte3 = this.ccData.readUnsignedByte();
            if ((readUnsignedByte & 2) == 0 && (readUnsignedByte & 1) == this.selectedField) {
                byte b = (byte) (readUnsignedByte2 & 127);
                byte b2 = (byte) (readUnsignedByte3 & 127);
                if (b != 0 || b2 != 0) {
                    boolean z2 = this.repeatableControlSet;
                    this.repeatableControlSet = false;
                    boolean z3 = this.captionValid;
                    this.captionValid = (readUnsignedByte & 4) == 4;
                    if (this.captionValid) {
                        boolean[] zArr = ODD_PARITY_BYTE_TABLE;
                        if (!zArr[readUnsignedByte2] || !zArr[readUnsignedByte3]) {
                            resetCueBuilders();
                        } else {
                            maybeUpdateIsInCaptionService(b, b2);
                            if (this.isInCaptionService) {
                                if ((b & 247) == 17 && (b2 & 240) == 48) {
                                    if (getChannel(b) == this.selectedChannel) {
                                        this.currentCueBuilder.append(getSpecialChar(b2));
                                    }
                                } else if ((b & 246) == 18 && (b2 & 224) == 32) {
                                    if (getChannel(b) == this.selectedChannel) {
                                        this.currentCueBuilder.backspace();
                                        if ((b & 1) == 0) {
                                            this.currentCueBuilder.append(getExtendedEsFrChar(b2));
                                        } else {
                                            this.currentCueBuilder.append(getExtendedPtDeChar(b2));
                                        }
                                    }
                                } else if ((b & 224) == 0) {
                                    handleCtrl(b, b2, z2);
                                } else if (this.currentChannel == this.selectedChannel) {
                                    this.currentCueBuilder.append(getChar(b));
                                    if ((b2 & 224) != 0) {
                                        this.currentCueBuilder.append(getChar(b2));
                                    }
                                }
                            }
                        }
                    } else if (z3) {
                        resetCueBuilders();
                    }
                    z = true;
                }
            }
        }
        if (z) {
            int i2 = this.captionMode;
            if (i2 == 1 || i2 == 3) {
                this.cues = getDisplayCues();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public /* bridge */ /* synthetic */ SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        return super.dequeueOutputBuffer();
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public void flush() {
        super.flush();
        this.cues = null;
        this.lastCues = null;
        setCaptionMode(0);
        setCaptionRowCount(4);
        resetCueBuilders();
        this.captionValid = false;
        this.repeatableControlSet = false;
        this.repeatableControlCc1 = (byte) 0;
        this.repeatableControlCc2 = (byte) 0;
        this.currentChannel = 0;
        this.isInCaptionService = true;
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public String getName() {
        return TAG;
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder
    public boolean isNewSubtitleDataAvailable() {
        return this.cues != this.lastCues;
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder
    public /* bridge */ /* synthetic */ void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        super.queueInputBuffer(subtitleInputBuffer);
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.decoder.Decoder
    public void release() {
    }

    @Override // androidx.media2.exoplayer.external.text.cea.CeaDecoder, androidx.media2.exoplayer.external.text.SubtitleDecoder
    public /* bridge */ /* synthetic */ void setPositionUs(long j) {
        super.setPositionUs(j);
    }
}
