package android.support.p001v4.text;

import java.nio.CharBuffer;
import java.util.Locale;
/* renamed from: android.support.v4.text.TextDirectionHeuristicsCompat */
/* loaded from: classes-dex2jar.jar:android/support/v4/text/TextDirectionHeuristicsCompat.class */
public final class TextDirectionHeuristicsCompat {
    private static final int STATE_FALSE = 1;
    private static final int STATE_TRUE = 0;
    private static final int STATE_UNKNOWN = 2;
    public static final TextDirectionHeuristicCompat LTR = new TextDirectionHeuristicInternal(null, false);
    public static final TextDirectionHeuristicCompat RTL = new TextDirectionHeuristicInternal(null, true);
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR = new TextDirectionHeuristicInternal(FirstStrong.INSTANCE, false);
    public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL = new TextDirectionHeuristicInternal(FirstStrong.INSTANCE, true);
    public static final TextDirectionHeuristicCompat ANYRTL_LTR = new TextDirectionHeuristicInternal(AnyStrong.INSTANCE_RTL, false);
    public static final TextDirectionHeuristicCompat LOCALE = TextDirectionHeuristicLocale.INSTANCE;

    /* renamed from: android.support.v4.text.TextDirectionHeuristicsCompat$AnyStrong */
    /* loaded from: classes-dex2jar.jar:android/support/v4/text/TextDirectionHeuristicsCompat$AnyStrong.class */
    private static class AnyStrong implements TextDirectionAlgorithm {
        private final boolean mLookForRtl;
        static final AnyStrong INSTANCE_RTL = new AnyStrong(true);
        static final AnyStrong INSTANCE_LTR = new AnyStrong(false);

        private AnyStrong(boolean z) {
            this.mLookForRtl = z;
        }

        @Override // android.support.p001v4.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public int checkRtl(CharSequence charSequence, int i, int i2) {
            boolean z = false;
            for (int i3 = i; i3 < i2 + i; i3++) {
                switch (TextDirectionHeuristicsCompat.isRtlText(Character.getDirectionality(charSequence.charAt(i3)))) {
                    case 0:
                        if (this.mLookForRtl) {
                            return 0;
                        }
                        break;
                    case 1:
                        if (!this.mLookForRtl) {
                            return 1;
                        }
                        break;
                    default:
                }
                z = true;
            }
            if (z) {
                return this.mLookForRtl ? 1 : 0;
            }
            return 2;
        }
    }

    /* renamed from: android.support.v4.text.TextDirectionHeuristicsCompat$FirstStrong */
    /* loaded from: classes-dex2jar.jar:android/support/v4/text/TextDirectionHeuristicsCompat$FirstStrong.class */
    private static class FirstStrong implements TextDirectionAlgorithm {
        static final FirstStrong INSTANCE = new FirstStrong();

        private FirstStrong() {
        }

        @Override // android.support.p001v4.text.TextDirectionHeuristicsCompat.TextDirectionAlgorithm
        public int checkRtl(CharSequence charSequence, int i, int i2) {
            int i3 = 2;
            for (int i4 = i; i4 < i2 + i && i3 == 2; i4++) {
                i3 = TextDirectionHeuristicsCompat.isRtlTextOrFormat(Character.getDirectionality(charSequence.charAt(i4)));
            }
            return i3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: android.support.v4.text.TextDirectionHeuristicsCompat$TextDirectionAlgorithm */
    /* loaded from: classes-dex2jar.jar:android/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm.class */
    public interface TextDirectionAlgorithm {
        int checkRtl(CharSequence charSequence, int i, int i2);
    }

    /* renamed from: android.support.v4.text.TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl */
    /* loaded from: classes-dex2jar.jar:android/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl.class */
    private static abstract class TextDirectionHeuristicImpl implements TextDirectionHeuristicCompat {
        private final TextDirectionAlgorithm mAlgorithm;

        TextDirectionHeuristicImpl(TextDirectionAlgorithm textDirectionAlgorithm) {
            this.mAlgorithm = textDirectionAlgorithm;
        }

        private boolean doCheck(CharSequence charSequence, int i, int i2) {
            switch (this.mAlgorithm.checkRtl(charSequence, i, i2)) {
                case 0:
                    return true;
                case 1:
                    return false;
                default:
                    return defaultIsRtl();
            }
        }

        protected abstract boolean defaultIsRtl();

        @Override // android.support.p001v4.text.TextDirectionHeuristicCompat
        public boolean isRtl(CharSequence charSequence, int i, int i2) {
            if (charSequence != null && i >= 0 && i2 >= 0 && charSequence.length() - i2 >= i) {
                return this.mAlgorithm == null ? defaultIsRtl() : doCheck(charSequence, i, i2);
            }
            throw new IllegalArgumentException();
        }

        @Override // android.support.p001v4.text.TextDirectionHeuristicCompat
        public boolean isRtl(char[] cArr, int i, int i2) {
            return isRtl(CharBuffer.wrap(cArr), i, i2);
        }
    }

    /* renamed from: android.support.v4.text.TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal */
    /* loaded from: classes-dex2jar.jar:android/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal.class */
    private static class TextDirectionHeuristicInternal extends TextDirectionHeuristicImpl {
        private final boolean mDefaultIsRtl;

        TextDirectionHeuristicInternal(TextDirectionAlgorithm textDirectionAlgorithm, boolean z) {
            super(textDirectionAlgorithm);
            this.mDefaultIsRtl = z;
        }

        @Override // android.support.p001v4.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        protected boolean defaultIsRtl() {
            return this.mDefaultIsRtl;
        }
    }

    /* renamed from: android.support.v4.text.TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale */
    /* loaded from: classes-dex2jar.jar:android/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicLocale.class */
    private static class TextDirectionHeuristicLocale extends TextDirectionHeuristicImpl {
        static final TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicLocale();

        TextDirectionHeuristicLocale() {
            super(null);
        }

        @Override // android.support.p001v4.text.TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
        protected boolean defaultIsRtl() {
            boolean z = true;
            if (TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) != 1) {
                z = false;
            }
            return z;
        }
    }

    private TextDirectionHeuristicsCompat() {
    }

    static int isRtlText(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                return 2;
        }
    }

    static int isRtlTextOrFormat(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                switch (i) {
                    case 14:
                    case 15:
                        return 1;
                    case 16:
                    case 17:
                        return 0;
                    default:
                        return 2;
                }
        }
    }
}
