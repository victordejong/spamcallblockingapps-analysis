package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzve;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzq.class */
public final class zzq extends FrameLayout implements View.OnClickListener {

    /* renamed from: a */
    private final ImageButton f5940a;

    /* renamed from: b */
    private final zzy f5941b;

    public zzq(Context context, zzp zzpVar, zzy zzyVar) {
        super(context);
        this.f5941b = zzyVar;
        setOnClickListener(this);
        this.f5940a = new ImageButton(context);
        this.f5940a.setImageResource(17301527);
        this.f5940a.setBackgroundColor(0);
        this.f5940a.setOnClickListener(this);
        ImageButton imageButton = this.f5940a;
        zzve.zzou();
        int zza = zzayk.zza(context, zzpVar.paddingLeft);
        zzve.zzou();
        int zza2 = zzayk.zza(context, 0);
        zzve.zzou();
        int zza3 = zzayk.zza(context, zzpVar.paddingRight);
        zzve.zzou();
        imageButton.setPadding(zza, zza2, zza3, zzayk.zza(context, zzpVar.paddingBottom));
        this.f5940a.setContentDescription("Interstitial close button");
        ImageButton imageButton2 = this.f5940a;
        zzve.zzou();
        int zza4 = zzayk.zza(context, zzpVar.size + zzpVar.paddingLeft + zzpVar.paddingRight);
        zzve.zzou();
        addView(imageButton2, new FrameLayout.LayoutParams(zza4, zzayk.zza(context, zzpVar.size + zzpVar.paddingBottom), 17));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzy zzyVar = this.f5941b;
        if (zzyVar != null) {
            zzyVar.zztl();
        }
    }

    public final void zzal(boolean z) {
        this.f5940a.setVisibility(z ? 8 : 0);
    }
}
