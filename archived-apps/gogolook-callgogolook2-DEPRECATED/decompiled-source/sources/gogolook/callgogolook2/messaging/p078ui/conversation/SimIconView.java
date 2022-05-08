package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.content.Context;
import android.graphics.Outline;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import gogolook.callgogolook2.messaging.p078ui.ContactIconView;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimIconView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimIconView.class */
public class SimIconView extends ContactIconView {

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimIconView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimIconView$a.class */
    public class C4769a extends ViewOutlineProvider {
        public C4769a(SimIconView simIconView) {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setOval(0, 0, view.getWidth(), view.getHeight());
        }
    }

    public SimIconView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        if (C14017g4.m2805s()) {
            setOutlineProvider(new C4769a(this));
        }
    }
}
