package com.tmobile.services.nameid.p007ui.carousel;

import android.content.Context;
import com.tmobile.services.nameid.utility.ScreenDensityUtils;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
@Metadata(bv = {1, 0, 3}, d1 = {"��\b\n��\n\u0002\u0010\b\n��\u0010��\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.carousel.NameIDCarouselIndicator$paddingPx$2 */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/carousel/NameIDCarouselIndicator$paddingPx$2.class */
final class NameIDCarouselIndicator$paddingPx$2 extends Lambda implements Function0<Integer> {

    /* renamed from: f */
    final /* synthetic */ Context f13915f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NameIDCarouselIndicator$paddingPx$2(Context context) {
        super(0);
        this.f13915f = context;
    }

    /* renamed from: b */
    public final int m6187b() {
        return ScreenDensityUtils.m5376a(this.f13915f, 8);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Integer invoke() {
        return Integer.valueOf(m6187b());
    }
}
