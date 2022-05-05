package com.vladlee.easyblacklist;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.vladlee.easyblacklist.C3318by;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
/* renamed from: com.vladlee.easyblacklist.du */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/du.class */
public final class C3376du extends AbstractC3378dw {

    /* renamed from: a */
    Context f19523a;

    /* renamed from: b */
    View.OnLongClickListener f19524b;

    public C3376du(Context context, String[] strArr, int[] iArr, View.OnLongClickListener onLongClickListener) {
        super(context, strArr, iArr);
        this.f19523a = context;
        this.f19524b = onLongClickListener;
    }

    /* renamed from: a */
    public final void m124a() {
        for (Map.Entry<Long, Boolean> entry : this.f19527c.entrySet()) {
            if (entry.getValue().booleanValue()) {
                Context context = this.f19523a;
                long longValue = entry.getKey().longValue();
                context.getContentResolver().delete(Uri.withAppendedPath(C3318by.C3322d.f19428a, Uri.encode(String.valueOf(longValue))), null, null);
            }
        }
    }

    @Override // android.widget.SimpleCursorAdapter
    public final void setViewText(TextView textView, String str) {
        String str2;
        int i;
        Resources resources;
        int i2;
        Drawable drawable;
        int i3;
        Resources resources2;
        int i4;
        Resources resources3;
        if (textView.getId() == 2131296594) {
            long parseLong = Long.parseLong(str);
            str2 = new SimpleDateFormat(C3456gn.m33a(textView.getContext(), parseLong), textView.getContext().getResources().getConfiguration().locale).format(new Date(parseLong));
            if (((LinearLayout) textView.getParent().getParent().getParent()).getChildAt(0).getVisibility() == 0) {
                resources3 = textView.getContext().getResources();
                i4 = 2131099815;
            } else {
                resources3 = textView.getContext().getResources();
                i4 = 2131099820;
            }
            textView.setTextColor(resources3.getColor(i4));
        } else if (textView.getId() == 2131296493) {
            LinearLayout linearLayout = (LinearLayout) textView.getParent();
            linearLayout.setDescendantFocusability(393216);
            LinearLayout linearLayout2 = (LinearLayout) linearLayout.getChildAt(1);
            if (Integer.parseInt(str) == 1) {
                textView.setVisibility(8);
                linearLayout2.setBackgroundDrawable(linearLayout2.getContext().getResources().getDrawable(2131230824));
                drawable = linearLayout2.getBackground();
                i2 = linearLayout2.getContext().getResources().getColor(2131099795);
            } else {
                textView.setVisibility(0);
                linearLayout2.setBackgroundDrawable(linearLayout2.getContext().getResources().getDrawable(2131230825));
                drawable = linearLayout2.getBackground();
                i2 = -1;
            }
            drawable.setColorFilter(i2, PorterDuff.Mode.MULTIPLY);
            if (m115a(getCursor().getLong(0))) {
                resources2 = this.f19523a.getResources();
                i3 = 2131099786;
            } else {
                resources2 = this.f19523a.getResources();
                i3 = 17170445;
            }
            linearLayout.setBackgroundColor(resources2.getColor(i3));
            str2 = str;
        } else if (textView.getId() == 2131296598) {
            textView.setOnLongClickListener(this.f19524b);
            if (((LinearLayout) textView.getParent().getParent().getParent()).getChildAt(0).getVisibility() == 0) {
                resources = textView.getContext().getResources();
                i = 2131099807;
            } else {
                resources = textView.getContext().getResources();
                i = 2131099755;
            }
            int color = resources.getColor(i);
            textView.setTextColor(color);
            textView.setLinkTextColor(color);
            str2 = str;
        } else {
            str2 = str;
            if (textView.getId() == 2131296599) {
                try {
                    int parseInt = Integer.parseInt(str);
                    if (parseInt != 64) {
                        textView.setVisibility(8);
                        str2 = str;
                    } else {
                        str2 = str;
                        if (parseInt == 64) {
                            str2 = textView.getContext().getResources().getString(2131624199);
                        }
                        textView.setVisibility(0);
                    }
                } catch (Exception e) {
                    textView.setVisibility(8);
                    str2 = str;
                }
            }
        }
        if (textView.getId() != 2131296493) {
            super.setViewText(textView, str2);
        }
    }
}
