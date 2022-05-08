package androidx.media2.exoplayer.external.text.webvtt;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/WebvttParserUtil.class */
public final class WebvttParserUtil {
    public static final Pattern COMMENT = Pattern.compile("^NOTE(( |\t).*)?$");
    public static final String WEBVTT_HEADER = "WEBVTT";

    public static Matcher findNextCueHeader(ParsableByteArray parsableByteArray) {
        String readLine;
        while (true) {
            String readLine2 = parsableByteArray.readLine();
            if (readLine2 == null) {
                return null;
            }
            if (COMMENT.matcher(readLine2).matches()) {
                do {
                    readLine = parsableByteArray.readLine();
                    if (readLine != null) {
                    }
                } while (!readLine.isEmpty());
            } else {
                Matcher matcher = WebvttCueParser.CUE_HEADER_PATTERN.matcher(readLine2);
                if (matcher.matches()) {
                    return matcher;
                }
            }
        }
    }

    public static boolean isWebvttHeaderLine(ParsableByteArray parsableByteArray) {
        String readLine = parsableByteArray.readLine();
        return readLine != null && readLine.startsWith(WEBVTT_HEADER);
    }

    public static float parsePercentage(String str) throws NumberFormatException {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [long] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long parseTimestampUs(java.lang.String r5) throws java.lang.NumberFormatException {
        /*
            r0 = r5
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = androidx.media2.exoplayer.external.util.Util.splitAtFirst(r0, r1)
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            r1 = 0
            r0 = r0[r1]
            java.lang.String r1 = ":"
            java.lang.String[] r0 = androidx.media2.exoplayer.external.util.Util.split(r0, r1)
            r7 = r0
            r0 = r7
            int r0 = r0.length
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0018:
            r0 = r6
            r1 = r8
            if (r0 >= r1) goto L_0x0032
            r0 = r9
            r1 = 60
            long r0 = r0 * r1
            r1 = r7
            r2 = r6
            r1 = r1[r2]
            long r1 = java.lang.Long.parseLong(r1)
            long r0 = r0 + r1
            r9 = r0
            int r6 = r6 + 1
            goto L_0x0018
        L_0x0032:
            r0 = r9
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            r11 = r0
            r0 = r11
            r9 = r0
            r0 = r5
            int r0 = r0.length
            r1 = 2
            if (r0 != r1) goto L_0x004f
            r0 = r11
            r1 = r5
            r2 = 1
            r1 = r1[r2]
            long r1 = java.lang.Long.parseLong(r1)
            long r0 = r0 + r1
            r9 = r0
        L_0x004f:
            r0 = r9
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 * r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.text.webvtt.WebvttParserUtil.parseTimestampUs(java.lang.String):long");
    }

    public static void validateWebvttHeaderLine(ParsableByteArray parsableByteArray) throws ParserException {
        int position = parsableByteArray.getPosition();
        if (!isWebvttHeaderLine(parsableByteArray)) {
            parsableByteArray.setPosition(position);
            String valueOf = String.valueOf(parsableByteArray.readLine());
            throw new ParserException(valueOf.length() != 0 ? "Expected WEBVTT. Got ".concat(valueOf) : new String("Expected WEBVTT. Got "));
        }
    }
}
