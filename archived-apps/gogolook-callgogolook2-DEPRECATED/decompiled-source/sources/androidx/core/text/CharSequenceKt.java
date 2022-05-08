package androidx.core.text;

import android.text.TextUtils;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n��\n\u0002\u0010\u000b\n\u0002\u0010\r\n��\n\u0002\u0010\b\n��\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0086\b\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0086\b¨\u0006\u0005"}, m815d2 = {"isDigitsOnly", "", "", "trimmedLength", "", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/text/CharSequenceKt.class */
public final class CharSequenceKt {
    public static final boolean isDigitsOnly(CharSequence charSequence) {
        C15149k.m377b(charSequence, "$this$isDigitsOnly");
        return TextUtils.isDigitsOnly(charSequence);
    }

    public static final int trimmedLength(CharSequence charSequence) {
        C15149k.m377b(charSequence, "$this$trimmedLength");
        return TextUtils.getTrimmedLength(charSequence);
    }
}
