package androidx.core.content;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.AttrRes;
import androidx.annotation.StyleRes;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0015\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a \u0010��\u001a\u0004\u0018\u0001H\u0001\"\n\b��\u0010\u0001\u0018\u0001*\u00020\u0002*\u00020\u0003H\u0086\b¢\u0006\u0002\u0010\u0004\u001aN\u0010\u0005\u001a\u00020\u0006*\u00020\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0003\u0010\u000b\u001a\u00020\f2\b\b\u0003\u0010\r\u001a\u00020\f2\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00060\u000f¢\u0006\u0002\b\u0011H\u0086\b\u001a8\u0010\u0005\u001a\u00020\u0006*\u00020\u00032\b\b\u0001\u0010\u0012\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0017\u0010\u000e\u001a\u0013\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00060\u000f¢\u0006\u0002\b\u0011H\u0086\b¨\u0006\u0013"}, m815d2 = {"getSystemService", ExifInterface.GPS_DIRECTION_TRUE, "", "Landroid/content/Context;", "(Landroid/content/Context;)Ljava/lang/Object;", "withStyledAttributes", "", "set", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "", "defStyleRes", "block", "Lkotlin/Function1;", "Landroid/content/res/TypedArray;", "Lkotlin/ExtensionFunctionType;", "resourceId", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/content/ContextKt.class */
public final class ContextKt {
    public static final /* synthetic */ <T> T getSystemService(Context context) {
        C15149k.m377b(context, "$this$getSystemService");
        C15149k.m385a(4, ExifInterface.GPS_DIRECTION_TRUE);
        throw null;
    }

    public static final void withStyledAttributes(Context context, @StyleRes int i, int[] iArr, AbstractC15118l<? super TypedArray, C14989s> lVar) {
        C15149k.m377b(context, "$this$withStyledAttributes");
        C15149k.m377b(iArr, "attrs");
        C15149k.m377b(lVar, "block");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, iArr);
        lVar.invoke(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public static final void withStyledAttributes(Context context, AttributeSet attributeSet, int[] iArr, @AttrRes int i, @StyleRes int i2, AbstractC15118l<? super TypedArray, C14989s> lVar) {
        C15149k.m377b(context, "$this$withStyledAttributes");
        C15149k.m377b(iArr, "attrs");
        C15149k.m377b(lVar, "block");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        lVar.invoke(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }

    public static /* synthetic */ void withStyledAttributes$default(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, AbstractC15118l lVar, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            attributeSet = null;
        }
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = 0;
        }
        C15149k.m377b(context, "$this$withStyledAttributes");
        C15149k.m377b(iArr, "attrs");
        C15149k.m377b(lVar, "block");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        lVar.invoke(obtainStyledAttributes);
        obtainStyledAttributes.recycle();
    }
}
