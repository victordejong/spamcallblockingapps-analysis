package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.io.InputStream;
@RequiresApi
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/TypefaceCompatApi29Impl.class */
public class TypefaceCompatApi29Impl extends TypefaceCompatBaseImpl {
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    /* renamed from: b */
    public Typeface mo19534b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat.FontFileResourceEntry[] a = fontFamilyFilesResourceEntry.m19630a();
        int length = a.length;
        int i2 = 0;
        FontFamily.Builder builder = null;
        int i3 = 0;
        while (true) {
            int i4 = 1;
            if (i3 >= length) {
                break;
            }
            FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry = a[i3];
            try {
                Font.Builder weight = new Font.Builder(resources, fontFileResourceEntry.m19628b()).setWeight(fontFileResourceEntry.m19625e());
                if (!fontFileResourceEntry.m19624f()) {
                    i4 = 0;
                }
                Font build = weight.setSlant(i4).setTtcIndex(fontFileResourceEntry.m19627c()).setFontVariationSettings(fontFileResourceEntry.m19626d()).build();
                if (builder == null) {
                    builder = new FontFamily.Builder(build);
                } else {
                    builder.addFont(build);
                }
            } catch (IOException e) {
            }
            i3++;
        }
        if (builder == null) {
            return null;
        }
        int i5 = (i & 1) != 0 ? 700 : 400;
        if ((i & 2) != 0) {
            i2 = 1;
        }
        return new Typeface.CustomFallbackBuilder(builder.build()).setStyle(new FontStyle(i5, i2)).build();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00aa, code lost:
        if (r0 != null) goto L_0x0041;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        if (r0 != null) goto L_0x0041;
     */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @androidx.annotation.Nullable
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.graphics.Typeface mo19533c(android.content.Context r6, @androidx.annotation.Nullable android.os.CancellationSignal r7, @androidx.annotation.NonNull androidx.core.provider.FontsContractCompat.FontInfo[] r8, int r9) {
        /*
            Method dump skipped, instructions count: 293
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.TypefaceCompatApi29Impl.mo19533c(android.content.Context, android.os.CancellationSignal, androidx.core.provider.FontsContractCompat$FontInfo[], int):android.graphics.Typeface");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    /* renamed from: d */
    public Typeface mo19532d(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    /* renamed from: e */
    public Typeface mo19531e(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (IOException e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    /* renamed from: h */
    public FontsContractCompat.FontInfo mo19528h(FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }
}
