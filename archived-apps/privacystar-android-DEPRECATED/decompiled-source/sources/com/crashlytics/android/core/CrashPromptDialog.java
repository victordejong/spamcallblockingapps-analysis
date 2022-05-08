package com.crashlytics.android.core;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.ScrollView;
import android.widget.TextView;
import io.fabric.sdk.android.services.settings.PromptSettingsData;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashPromptDialog.class */
class CrashPromptDialog {
    private final AlertDialog.Builder dialog;
    private final OptInLatch latch;

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashPromptDialog$AlwaysSendCallback.class */
    interface AlwaysSendCallback {
        void sendUserReportsWithoutPrompting(boolean z);
    }

    /* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashPromptDialog$OptInLatch.class */
    private static class OptInLatch {
        private final CountDownLatch latch;
        private boolean send;

        private OptInLatch() {
            this.send = false;
            this.latch = new CountDownLatch(1);
        }

        void await() {
            try {
                this.latch.await();
            } catch (InterruptedException e) {
            }
        }

        boolean getOptIn() {
            return this.send;
        }

        void setOptIn(boolean z) {
            this.send = z;
            this.latch.countDown();
        }
    }

    private CrashPromptDialog(AlertDialog.Builder builder, OptInLatch optInLatch) {
        this.latch = optInLatch;
        this.dialog = builder;
    }

    public static CrashPromptDialog create(Activity activity, PromptSettingsData promptSettingsData, final AlwaysSendCallback alwaysSendCallback) {
        final OptInLatch optInLatch = new OptInLatch();
        DialogStringResolver dialogStringResolver = new DialogStringResolver(activity, promptSettingsData);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        ScrollView createDialogView = createDialogView(activity, dialogStringResolver.getMessage());
        builder.setView(createDialogView).setTitle(dialogStringResolver.getTitle()).setCancelable(false).setNeutralButton(dialogStringResolver.getSendButtonTitle(), new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashPromptDialog.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                OptInLatch.this.setOptIn(true);
                dialogInterface.dismiss();
            }
        });
        if (promptSettingsData.showCancelButton) {
            builder.setNegativeButton(dialogStringResolver.getCancelButtonTitle(), new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashPromptDialog.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    OptInLatch.this.setOptIn(false);
                    dialogInterface.dismiss();
                }
            });
        }
        if (promptSettingsData.showAlwaysSendButton) {
            builder.setPositiveButton(dialogStringResolver.getAlwaysSendButtonTitle(), new DialogInterface.OnClickListener() { // from class: com.crashlytics.android.core.CrashPromptDialog.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    AlwaysSendCallback.this.sendUserReportsWithoutPrompting(true);
                    optInLatch.setOptIn(true);
                    dialogInterface.dismiss();
                }
            });
        }
        return new CrashPromptDialog(builder, optInLatch);
    }

    private static ScrollView createDialogView(Activity activity, String str) {
        float f = activity.getResources().getDisplayMetrics().density;
        int dipsToPixels = dipsToPixels(f, 5);
        TextView textView = new TextView(activity);
        textView.setAutoLinkMask(15);
        textView.setText(str);
        textView.setTextAppearance(activity, 16973892);
        textView.setPadding(dipsToPixels, dipsToPixels, dipsToPixels, dipsToPixels);
        textView.setFocusable(false);
        ScrollView scrollView = new ScrollView(activity);
        scrollView.setPadding(dipsToPixels(f, 14), dipsToPixels(f, 2), dipsToPixels(f, 10), dipsToPixels(f, 12));
        scrollView.addView(textView);
        return scrollView;
    }

    private static int dipsToPixels(float f, int i) {
        return (int) (f * i);
    }

    public void await() {
        this.latch.await();
    }

    public boolean getOptIn() {
        return this.latch.getOptIn();
    }

    public void show() {
        this.dialog.show();
    }
}
