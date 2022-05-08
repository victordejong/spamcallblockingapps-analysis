package com.criteo.publisher.advancednative;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import java.util.ArrayDeque;
/* renamed from: com.criteo.publisher.advancednative.e */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/e.class */
public class C1945e {

    /* renamed from: com.criteo.publisher.advancednative.e$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/e$a.class */
    public class View$OnClickListenerC1946a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ AbstractC1958l f2078a;

        public View$OnClickListenerC1946a(C1945e eVar, AbstractC1958l lVar) {
            this.f2078a = lVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f2078a.mo35969a();
        }
    }

    /* renamed from: a */
    public void m35979a(@NonNull View view, @NonNull AbstractC1958l lVar) {
        View$OnClickListenerC1946a aVar = new View$OnClickListenerC1946a(this, lVar);
        ArrayDeque arrayDeque = new ArrayDeque();
        arrayDeque.add(view);
        while (!arrayDeque.isEmpty()) {
            View view2 = (View) arrayDeque.remove();
            view2.setOnClickListener(aVar);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                for (int i = 0; i < viewGroup.getChildCount(); i++) {
                    arrayDeque.add(viewGroup.getChildAt(i));
                }
            }
        }
    }
}
