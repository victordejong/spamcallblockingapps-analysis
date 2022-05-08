package com.android.contacts.calllog;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.android.contacts.util.AsusRedPointNotificationDualPanelHelper;
import com.google.a.a.d;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/CallTypeIconsView.class */
public class CallTypeIconsView extends View {

    /* renamed from: a  reason: collision with root package name */
    private List<Integer> f650a;

    /* renamed from: b  reason: collision with root package name */
    private a f651b;
    private int c;
    private int d;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/calllog/CallTypeIconsView$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final Drawable f652a;

        /* renamed from: b  reason: collision with root package name */
        public final Drawable f653b;
        public final Drawable c;
        public final Drawable d;
        public final int e;

        public a(Context context) {
            Resources resources = context.getResources();
            this.d = resources.getDrawable(2131165864);
            this.e = resources.getDimensionPixelSize(2131099939);
            this.f652a = resources.getDrawable(2131165323);
            this.f653b = resources.getDrawable(2131165325);
            this.c = resources.getDrawable(2131165324);
        }
    }

    public CallTypeIconsView(Context context) {
        this(context, null);
    }

    public CallTypeIconsView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d.a(true);
        this.f650a = new ArrayList(3);
        this.f651b = new a(context);
    }

    private Drawable b(int i) {
        Drawable drawable;
        switch (i) {
            case 1:
                drawable = this.f651b.f652a;
                break;
            case 2:
                drawable = this.f651b.f653b;
                break;
            case 3:
                drawable = this.f651b.c;
                break;
            case 4:
                drawable = this.f651b.d;
                break;
            case 5:
            case 6:
            case 7:
            case 11:
            case 12:
            case 13:
            case AsusRedPointNotificationDualPanelHelper.ID.UPDATE_VERSION /* 14 */:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            default:
                throw new IllegalArgumentException("invalid call type: " + i);
            case 8:
                drawable = this.f651b.f652a;
                break;
            case 9:
                drawable = this.f651b.f653b;
                break;
            case 10:
                drawable = this.f651b.c;
                break;
            case 20:
                drawable = this.f651b.f652a;
                break;
            case 21:
                drawable = this.f651b.f653b;
                break;
            case 22:
                drawable = this.f651b.c;
                break;
        }
        return drawable;
    }

    public final void a() {
        this.f650a.clear();
        this.c = 0;
        this.d = 0;
        invalidate();
    }

    public final void a(int i) {
        this.f650a.add(Integer.valueOf(i));
        try {
            Drawable b2 = b(i);
            this.c += b2.getIntrinsicWidth() + this.f651b.e;
            this.d = Math.max(this.d, b2.getIntrinsicHeight());
            invalidate();
        } catch (IllegalArgumentException e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int i = 0;
        for (Integer num : this.f650a) {
            try {
                Drawable b2 = b(num.intValue());
                int intrinsicWidth = b2.getIntrinsicWidth() + i;
                b2.setBounds(i, 0, intrinsicWidth, b2.getIntrinsicHeight());
                b2.draw(canvas);
                i = this.f651b.e + intrinsicWidth;
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.c, this.d);
    }
}
