package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzabs.class */
public final class zzabs extends RelativeLayout {

    /* renamed from: a */
    private static final float[] f10839a = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};

    /* renamed from: b */
    private AnimationDrawable f10840b;

    public zzabs(Context context, zzabp zzabpVar, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        Preconditions.checkNotNull(zzabpVar);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f10839a, null, null));
        shapeDrawable.getPaint().setColor(zzabpVar.getBackgroundColor());
        setLayoutParams(layoutParams);
        zzq.zzks();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(zzabpVar.getText())) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(zzabpVar.getText());
            textView.setTextColor(zzabpVar.getTextColor());
            textView.setTextSize(zzabpVar.getTextSize());
            zzve.zzou();
            int zza = zzayk.zza(context, 4);
            zzve.zzou();
            textView.setPadding(zza, 0, zzayk.zza(context, 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<zzabu> zzqy = zzabpVar.zzqy();
        if (zzqy != null && zzqy.size() > 1) {
            this.f10840b = new AnimationDrawable();
            for (zzabu zzabuVar : zzqy) {
                try {
                    this.f10840b.addFrame((Drawable) ObjectWrapper.unwrap(zzabuVar.zzrc()), zzabpVar.zzqz());
                } catch (Exception e) {
                    zzavs.zzc("Error while getting drawable.", e);
                }
            }
            zzq.zzks();
            imageView.setBackground(this.f10840b);
        } else if (zzqy.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) ObjectWrapper.unwrap(zzqy.get(0).zzrc()));
            } catch (Exception e2) {
                zzavs.zzc("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.f10840b;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
