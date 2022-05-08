package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.ConnectionErrorMessages;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/DeferredLifecycleHelper.class */
public abstract class DeferredLifecycleHelper<T extends LifecycleDelegate> {

    /* renamed from: a */
    private T f7023a;

    /* renamed from: b */
    private Bundle f7024b;

    /* renamed from: c */
    private LinkedList<AbstractC1690a> f7025c;

    /* renamed from: d */
    private final OnDelegateCreatedListener<T> f7026d = new C1691a(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.google.android.gms.dynamic.DeferredLifecycleHelper$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/DeferredLifecycleHelper$a.class */
    public interface AbstractC1690a {
        /* renamed from: a */
        int mo5541a();

        /* renamed from: b */
        void mo5540b();
    }

    /* renamed from: a */
    private final void m5548a(int i) {
        while (!this.f7025c.isEmpty() && this.f7025c.getLast().mo5541a() >= i) {
            this.f7025c.removeLast();
        }
    }

    /* renamed from: a */
    private final void m5547a(Bundle bundle, AbstractC1690a aVar) {
        if (this.f7023a != null) {
            aVar.mo5540b();
            return;
        }
        if (this.f7025c == null) {
            this.f7025c = new LinkedList<>();
        }
        this.f7025c.add(aVar);
        if (bundle != null) {
            Bundle bundle2 = this.f7024b;
            if (bundle2 == null) {
                this.f7024b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
    }

    public static void showGooglePlayUnavailableMessage(FrameLayout frameLayout) {
        GoogleApiAvailability instance = GoogleApiAvailability.getInstance();
        Context context = frameLayout.getContext();
        int isGooglePlayServicesAvailable = instance.isGooglePlayServicesAvailable(context);
        String errorMessage = ConnectionErrorMessages.getErrorMessage(context, isGooglePlayServicesAvailable);
        String errorDialogButtonMessage = ConnectionErrorMessages.getErrorDialogButtonMessage(context, isGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(errorMessage);
        linearLayout.addView(textView);
        Intent errorResolutionIntent = instance.getErrorResolutionIntent(context, isGooglePlayServicesAvailable, null);
        if (errorResolutionIntent != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(errorDialogButtonMessage);
            linearLayout.addView(button);
            button.setOnClickListener(new View$OnClickListenerC1694d(context, errorResolutionIntent));
        }
    }

    public T getDelegate() {
        return this.f7023a;
    }

    public void onCreate(Bundle bundle) {
        m5547a(bundle, new C1692b(this, bundle));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        m5547a(bundle, new C1695e(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.f7023a == null) {
            showGooglePlayUnavailableMessage(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        T t = this.f7023a;
        if (t != null) {
            t.onDestroy();
        } else {
            m5548a(1);
        }
    }

    public void onDestroyView() {
        T t = this.f7023a;
        if (t != null) {
            t.onDestroyView();
        } else {
            m5548a(2);
        }
    }

    public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
        m5547a(bundle2, new C1693c(this, activity, bundle, bundle2));
    }

    public void onLowMemory() {
        T t = this.f7023a;
        if (t != null) {
            t.onLowMemory();
        }
    }

    public void onPause() {
        T t = this.f7023a;
        if (t != null) {
            t.onPause();
        } else {
            m5548a(5);
        }
    }

    public void onResume() {
        m5547a((Bundle) null, new C1696f(this));
    }

    public void onSaveInstanceState(Bundle bundle) {
        T t = this.f7023a;
        if (t != null) {
            t.onSaveInstanceState(bundle);
            return;
        }
        Bundle bundle2 = this.f7024b;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }

    public void onStart() {
        m5547a((Bundle) null, new C1697g(this));
    }

    public void onStop() {
        T t = this.f7023a;
        if (t != null) {
            t.onStop();
        } else {
            m5548a(4);
        }
    }
}
