package androidx.media2.exoplayer.external.text.webvtt;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
import androidx.media2.exoplayer.external.util.ColorParser;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.Util;
import com.facebook.ads.ExtraHints;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/text/webvtt/CssParser.class */
public final class CssParser {
    public static final String BLOCK_END = "}";
    public static final String BLOCK_START = "{";
    public static final String PROPERTY_BGCOLOR = "background-color";
    public static final String PROPERTY_FONT_FAMILY = "font-family";
    public static final String PROPERTY_FONT_STYLE = "font-style";
    public static final String PROPERTY_FONT_WEIGHT = "font-weight";
    public static final String PROPERTY_TEXT_DECORATION = "text-decoration";
    public static final String VALUE_BOLD = "bold";
    public static final String VALUE_ITALIC = "italic";
    public static final String VALUE_UNDERLINE = "underline";
    public static final Pattern VOICE_NAME_PATTERN = Pattern.compile("\\[voice=\"([^\"]*)\"\\]");
    public final ParsableByteArray styleInput = new ParsableByteArray();
    public final StringBuilder stringBuilder = new StringBuilder();

    private void applySelectorToStyle(WebvttCssStyle webvttCssStyle, String str) {
        if (!"".equals(str)) {
            int indexOf = str.indexOf(91);
            String str2 = str;
            if (indexOf != -1) {
                Matcher matcher = VOICE_NAME_PATTERN.matcher(str.substring(indexOf));
                if (matcher.matches()) {
                    webvttCssStyle.setTargetVoice(matcher.group(1));
                }
                str2 = str.substring(0, indexOf);
            }
            String[] split = Util.split(str2, "\\.");
            String str3 = split[0];
            int indexOf2 = str3.indexOf(35);
            if (indexOf2 != -1) {
                webvttCssStyle.setTargetTagName(str3.substring(0, indexOf2));
                webvttCssStyle.setTargetId(str3.substring(indexOf2 + 1));
            } else {
                webvttCssStyle.setTargetTagName(str3);
            }
            if (split.length > 1) {
                webvttCssStyle.setTargetClasses((String[]) Util.nullSafeArrayCopyOfRange(split, 1, split.length));
            }
        }
    }

    public static boolean maybeSkipComment(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        byte[] bArr = parsableByteArray.data;
        if (position + 2 > limit) {
            return false;
        }
        int i = position + 1;
        if (bArr[position] != 47) {
            return false;
        }
        int i2 = i + 1;
        if (bArr[i] != 42) {
            return false;
        }
        while (true) {
            int i3 = i2 + 1;
            if (i3 >= limit) {
                parsableByteArray.skipBytes(limit - parsableByteArray.getPosition());
                return true;
            } else if (((char) bArr[i2]) == '*' && ((char) bArr[i3]) == '/') {
                i2 = i3 + 1;
                limit = i2;
            } else {
                i2 = i3;
            }
        }
    }

    public static boolean maybeSkipWhitespace(ParsableByteArray parsableByteArray) {
        char peekCharAtPosition = peekCharAtPosition(parsableByteArray, parsableByteArray.getPosition());
        if (peekCharAtPosition != '\t' && peekCharAtPosition != '\n' && peekCharAtPosition != '\f' && peekCharAtPosition != '\r' && peekCharAtPosition != ' ') {
            return false;
        }
        parsableByteArray.skipBytes(1);
        return true;
    }

    public static String parseIdentifier(ParsableByteArray parsableByteArray, StringBuilder sb) {
        boolean z = false;
        sb.setLength(0);
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit && !z) {
            char c = (char) parsableByteArray.data[position];
            if ((c < 'A' || c > 'Z') && ((c < 'a' || c > 'z') && !((c >= '0' && c <= '9') || c == '#' || c == '-' || c == '.' || c == '_'))) {
                z = true;
            } else {
                position++;
                sb.append(c);
            }
        }
        parsableByteArray.skipBytes(position - parsableByteArray.getPosition());
        return sb.toString();
    }

    @Nullable
    public static String parseNextToken(ParsableByteArray parsableByteArray, StringBuilder sb) {
        skipWhitespaceAndComments(parsableByteArray);
        if (parsableByteArray.bytesLeft() == 0) {
            return null;
        }
        String parseIdentifier = parseIdentifier(parsableByteArray, sb);
        if (!"".equals(parseIdentifier)) {
            return parseIdentifier;
        }
        char readUnsignedByte = (char) parsableByteArray.readUnsignedByte();
        StringBuilder sb2 = new StringBuilder(1);
        sb2.append(readUnsignedByte);
        return sb2.toString();
    }

    @Nullable
    public static String parsePropertyValue(ParsableByteArray parsableByteArray, StringBuilder sb) {
        StringBuilder sb2 = new StringBuilder();
        boolean z = false;
        while (!z) {
            int position = parsableByteArray.getPosition();
            String parseNextToken = parseNextToken(parsableByteArray, sb);
            if (parseNextToken == null) {
                return null;
            }
            if (BLOCK_END.equals(parseNextToken) || ExtraHints.KEYWORD_SEPARATOR.equals(parseNextToken)) {
                parsableByteArray.setPosition(position);
                z = true;
            } else {
                sb2.append(parseNextToken);
            }
        }
        return sb2.toString();
    }

    @Nullable
    public static String parseSelector(ParsableByteArray parsableByteArray, StringBuilder sb) {
        skipWhitespaceAndComments(parsableByteArray);
        if (parsableByteArray.bytesLeft() < 5 || !"::cue".equals(parsableByteArray.readString(5))) {
            return null;
        }
        int position = parsableByteArray.getPosition();
        String parseNextToken = parseNextToken(parsableByteArray, sb);
        if (parseNextToken == null) {
            return null;
        }
        if (BLOCK_START.equals(parseNextToken)) {
            parsableByteArray.setPosition(position);
            return "";
        }
        String readCueTarget = "(".equals(parseNextToken) ? readCueTarget(parsableByteArray) : null;
        if (!")".equals(parseNextToken(parsableByteArray, sb))) {
            return null;
        }
        return readCueTarget;
    }

    public static void parseStyleDeclaration(ParsableByteArray parsableByteArray, WebvttCssStyle webvttCssStyle, StringBuilder sb) {
        skipWhitespaceAndComments(parsableByteArray);
        String parseIdentifier = parseIdentifier(parsableByteArray, sb);
        if (!"".equals(parseIdentifier) && ":".equals(parseNextToken(parsableByteArray, sb))) {
            skipWhitespaceAndComments(parsableByteArray);
            String parsePropertyValue = parsePropertyValue(parsableByteArray, sb);
            if (parsePropertyValue != null && !"".equals(parsePropertyValue)) {
                int position = parsableByteArray.getPosition();
                String parseNextToken = parseNextToken(parsableByteArray, sb);
                if (!ExtraHints.KEYWORD_SEPARATOR.equals(parseNextToken)) {
                    if (BLOCK_END.equals(parseNextToken)) {
                        parsableByteArray.setPosition(position);
                    } else {
                        return;
                    }
                }
                if (TtmlNode.ATTR_TTS_COLOR.equals(parseIdentifier)) {
                    webvttCssStyle.setFontColor(ColorParser.parseCssColor(parsePropertyValue));
                } else if (PROPERTY_BGCOLOR.equals(parseIdentifier)) {
                    webvttCssStyle.setBackgroundColor(ColorParser.parseCssColor(parsePropertyValue));
                } else if (PROPERTY_TEXT_DECORATION.equals(parseIdentifier)) {
                    if ("underline".equals(parsePropertyValue)) {
                        webvttCssStyle.setUnderline(true);
                    }
                } else if (PROPERTY_FONT_FAMILY.equals(parseIdentifier)) {
                    webvttCssStyle.setFontFamily(parsePropertyValue);
                } else if (PROPERTY_FONT_WEIGHT.equals(parseIdentifier)) {
                    if ("bold".equals(parsePropertyValue)) {
                        webvttCssStyle.setBold(true);
                    }
                } else if (PROPERTY_FONT_STYLE.equals(parseIdentifier) && "italic".equals(parsePropertyValue)) {
                    webvttCssStyle.setItalic(true);
                }
            }
        }
    }

    public static char peekCharAtPosition(ParsableByteArray parsableByteArray, int i) {
        return (char) parsableByteArray.data[i];
    }

    public static String readCueTarget(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        boolean z = false;
        while (position < limit && !z) {
            z = ((char) parsableByteArray.data[position]) == ')';
            position++;
        }
        return parsableByteArray.readString((position - 1) - parsableByteArray.getPosition()).trim();
    }

    public static void skipStyleBlock(ParsableByteArray parsableByteArray) {
        do {
        } while (!TextUtils.isEmpty(parsableByteArray.readLine()));
    }

    public static void skipWhitespaceAndComments(ParsableByteArray parsableByteArray) {
        while (true) {
            for (boolean z = true; parsableByteArray.bytesLeft() > 0 && z; z = false) {
                if (maybeSkipWhitespace(parsableByteArray) || maybeSkipComment(parsableByteArray)) {
                }
            }
            return;
        }
    }

    @Nullable
    public WebvttCssStyle parseBlock(ParsableByteArray parsableByteArray) {
        this.stringBuilder.setLength(0);
        int position = parsableByteArray.getPosition();
        skipStyleBlock(parsableByteArray);
        this.styleInput.reset(parsableByteArray.data, parsableByteArray.getPosition());
        this.styleInput.setPosition(position);
        String parseSelector = parseSelector(this.styleInput, this.stringBuilder);
        WebvttCssStyle webvttCssStyle = null;
        if (parseSelector != null) {
            if (!BLOCK_START.equals(parseNextToken(this.styleInput, this.stringBuilder))) {
                webvttCssStyle = null;
            } else {
                WebvttCssStyle webvttCssStyle2 = new WebvttCssStyle();
                applySelectorToStyle(webvttCssStyle2, parseSelector);
                String str = null;
                boolean z = false;
                while (!z) {
                    int position2 = this.styleInput.getPosition();
                    str = parseNextToken(this.styleInput, this.stringBuilder);
                    z = str == null || BLOCK_END.equals(str);
                    if (!z) {
                        this.styleInput.setPosition(position2);
                        parseStyleDeclaration(this.styleInput, webvttCssStyle2, this.stringBuilder);
                    }
                }
                webvttCssStyle = null;
                if (BLOCK_END.equals(str)) {
                    webvttCssStyle = webvttCssStyle2;
                }
            }
        }
        return webvttCssStyle;
    }
}
