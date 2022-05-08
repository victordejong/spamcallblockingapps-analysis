package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.widget.RemoteViews;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.C0189R;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.text.BidiFormatter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat.class */
public class NotificationCompat {

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$Action.class */
    public static class Action {

        /* renamed from: a */
        final Bundle f2857a;
        @Nullable

        /* renamed from: b */
        private IconCompat f2858b;

        /* renamed from: c */
        private final RemoteInput[] f2859c;

        /* renamed from: d */
        private final RemoteInput[] f2860d;

        /* renamed from: e */
        private boolean f2861e;

        /* renamed from: f */
        boolean f2862f;

        /* renamed from: g */
        private final int f2863g;

        /* renamed from: h */
        private final boolean f2864h;
        @Deprecated

        /* renamed from: i */
        public int f2865i;

        /* renamed from: j */
        public CharSequence f2866j;

        /* renamed from: k */
        public PendingIntent f2867k;

        /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$Action$Builder.class */
        public static final class Builder {

            /* renamed from: a */
            private final IconCompat f2868a;

            /* renamed from: b */
            private final CharSequence f2869b;

            /* renamed from: c */
            private final PendingIntent f2870c;

            /* renamed from: d */
            private boolean f2871d;

            /* renamed from: e */
            private final Bundle f2872e;

            /* renamed from: f */
            private ArrayList<RemoteInput> f2873f;

            /* renamed from: g */
            private int f2874g;

            /* renamed from: h */
            private boolean f2875h;

            /* renamed from: i */
            private boolean f2876i;

            public Builder(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i != 0 ? IconCompat.m19491d(null, "", i) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
            }

            private Builder(@Nullable IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z, int i, boolean z2, boolean z3) {
                this.f2871d = true;
                this.f2875h = true;
                this.f2868a = iconCompat;
                this.f2869b = Builder.limitCharSequenceLength(charSequence);
                this.f2870c = pendingIntent;
                this.f2872e = bundle;
                this.f2873f = remoteInputArr == null ? null : new ArrayList<>(Arrays.asList(remoteInputArr));
                this.f2871d = z;
                this.f2874g = i;
                this.f2875h = z2;
                this.f2876i = z3;
            }

            /* renamed from: b */
            private void m19791b() {
                if (this.f2876i && this.f2870c == null) {
                    throw new NullPointerException("Contextual Actions must contain a valid PendingIntent");
                }
            }

            /* renamed from: a */
            public Action m19792a() {
                m19791b();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<RemoteInput> arrayList3 = this.f2873f;
                if (arrayList3 != null) {
                    Iterator<RemoteInput> it = arrayList3.iterator();
                    while (it.hasNext()) {
                        RemoteInput next = it.next();
                        if (next.m19695j()) {
                            arrayList.add(next);
                        } else {
                            arrayList2.add(next);
                        }
                    }
                }
                RemoteInput[] remoteInputArr = null;
                RemoteInput[] remoteInputArr2 = arrayList.isEmpty() ? null : (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]);
                if (!arrayList2.isEmpty()) {
                    remoteInputArr = (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]);
                }
                return new Action(this.f2868a, this.f2869b, this.f2870c, this.f2872e, remoteInputArr, remoteInputArr2, this.f2871d, this.f2874g, this.f2875h, this.f2876i);
            }
        }

        /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$Action$Extender.class */
        public interface Extender {
        }

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$Action$SemanticAction.class */
        public @interface SemanticAction {
        }

        /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$Action$WearableExtender.class */
        public static final class WearableExtender implements Extender {

            /* renamed from: a */
            private int f2877a = 1;

            /* renamed from: b */
            private CharSequence f2878b;

            /* renamed from: c */
            private CharSequence f2879c;

            /* renamed from: d */
            private CharSequence f2880d;

            /* renamed from: a */
            public WearableExtender clone() {
                WearableExtender wearableExtender = new WearableExtender();
                wearableExtender.f2877a = this.f2877a;
                wearableExtender.f2878b = this.f2878b;
                wearableExtender.f2879c = this.f2879c;
                wearableExtender.f2880d = this.f2880d;
                return wearableExtender;
            }
        }

        public Action(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.m19491d(null, "", i) : null, charSequence, pendingIntent);
        }

        public Action(@Nullable IconCompat iconCompat, @Nullable CharSequence charSequence, @Nullable PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), null, null, true, 0, true, false);
        }

        Action(@Nullable IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, RemoteInput[] remoteInputArr2, boolean z, int i, boolean z2, boolean z3) {
            this.f2862f = true;
            this.f2858b = iconCompat;
            if (iconCompat != null && iconCompat.m19485j() == 2) {
                this.f2865i = iconCompat.m19490e();
            }
            this.f2866j = Builder.limitCharSequenceLength(charSequence);
            this.f2867k = pendingIntent;
            this.f2857a = bundle == null ? new Bundle() : bundle;
            this.f2859c = remoteInputArr;
            this.f2860d = remoteInputArr2;
            this.f2861e = z;
            this.f2863g = i;
            this.f2862f = z2;
            this.f2864h = z3;
        }

        /* renamed from: a */
        public PendingIntent m19803a() {
            return this.f2867k;
        }

        /* renamed from: b */
        public boolean m19802b() {
            return this.f2861e;
        }

        /* renamed from: c */
        public RemoteInput[] m19801c() {
            return this.f2860d;
        }

        /* renamed from: d */
        public Bundle m19800d() {
            return this.f2857a;
        }

        @Deprecated
        /* renamed from: e */
        public int m19799e() {
            return this.f2865i;
        }

        @Nullable
        /* renamed from: f */
        public IconCompat m19798f() {
            int i;
            if (this.f2858b == null && (i = this.f2865i) != 0) {
                this.f2858b = IconCompat.m19491d(null, "", i);
            }
            return this.f2858b;
        }

        /* renamed from: g */
        public RemoteInput[] m19797g() {
            return this.f2859c;
        }

        /* renamed from: h */
        public int m19796h() {
            return this.f2863g;
        }

        /* renamed from: i */
        public boolean m19795i() {
            return this.f2862f;
        }

        /* renamed from: j */
        public CharSequence m19794j() {
            return this.f2866j;
        }

        /* renamed from: k */
        public boolean m19793k() {
            return this.f2864h;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$BadgeIconType.class */
    public @interface BadgeIconType {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$BigPictureStyle.class */
    public static class BigPictureStyle extends Style {

        /* renamed from: e */
        private Bitmap f2881e;

        /* renamed from: f */
        private Bitmap f2882f;

        /* renamed from: g */
        private boolean f2883g;

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: b */
        public void mo17971b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(notificationBuilderWithBuilderAccessor.mo19747a()).setBigContentTitle(this.f2903b).bigPicture(this.f2881e);
                if (this.f2883g) {
                    bigPicture.bigLargeIcon(this.f2882f);
                }
                if (this.f2905d) {
                    bigPicture.setSummaryText(this.f2904c);
                }
            }
        }

        /* renamed from: q */
        public BigPictureStyle m19789q(Bitmap bitmap) {
            this.f2882f = bitmap;
            this.f2883g = true;
            return this;
        }

        /* renamed from: r */
        public BigPictureStyle m19788r(Bitmap bitmap) {
            this.f2881e = bitmap;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$BigTextStyle.class */
    public static class BigTextStyle extends Style {

        /* renamed from: e */
        private CharSequence f2884e;

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: b */
        public void mo17971b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.mo19747a()).setBigContentTitle(this.f2903b).bigText(this.f2884e);
                if (this.f2905d) {
                    bigText.setSummaryText(this.f2904c);
                }
            }
        }

        /* renamed from: q */
        public BigTextStyle m19787q(CharSequence charSequence) {
            this.f2884e = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        /* renamed from: r */
        public BigTextStyle m19786r(CharSequence charSequence) {
            this.f2903b = Builder.limitCharSequenceLength(charSequence);
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$BubbleMetadata.class */
    public static final class BubbleMetadata {

        /* renamed from: a */
        private PendingIntent f2885a;

        /* renamed from: b */
        private PendingIntent f2886b;

        /* renamed from: c */
        private IconCompat f2887c;

        /* renamed from: d */
        private int f2888d;
        @DimenRes

        /* renamed from: e */
        private int f2889e;

        /* renamed from: f */
        private int f2890f;

        /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$BubbleMetadata$Builder.class */
        public static final class Builder {
        }

        @Nullable
        @RequiresApi
        /* renamed from: h */
        public static Notification.BubbleMetadata m19778h(@Nullable BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setAutoExpandBubble(bubbleMetadata.m19785a()).setDeleteIntent(bubbleMetadata.m19784b()).setIcon(bubbleMetadata.m19781e().m19475t()).setIntent(bubbleMetadata.m19780f()).setSuppressNotification(bubbleMetadata.m19779g());
            if (bubbleMetadata.m19783c() != 0) {
                suppressNotification.setDesiredHeight(bubbleMetadata.m19783c());
            }
            if (bubbleMetadata.m19782d() != 0) {
                suppressNotification.setDesiredHeightResId(bubbleMetadata.m19782d());
            }
            return suppressNotification.build();
        }

        /* renamed from: a */
        public boolean m19785a() {
            boolean z = true;
            if ((this.f2890f & 1) == 0) {
                z = false;
            }
            return z;
        }

        @Nullable
        /* renamed from: b */
        public PendingIntent m19784b() {
            return this.f2886b;
        }

        @Dimension
        /* renamed from: c */
        public int m19783c() {
            return this.f2888d;
        }

        @DimenRes
        /* renamed from: d */
        public int m19782d() {
            return this.f2889e;
        }

        @NonNull
        /* renamed from: e */
        public IconCompat m19781e() {
            return this.f2887c;
        }

        @NonNull
        /* renamed from: f */
        public PendingIntent m19780f() {
            return this.f2885a;
        }

        /* renamed from: g */
        public boolean m19779g() {
            return (this.f2890f & 2) != 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$Builder.class */
    public static class Builder {
        @RestrictTo
        public ArrayList<Action> mActions;
        boolean mAllowSystemGeneratedContextualActions;
        int mBadgeIcon;
        RemoteViews mBigContentView;
        BubbleMetadata mBubbleMetadata;
        String mCategory;
        String mChannelId;
        boolean mChronometerCountDown;
        int mColor;
        boolean mColorized;
        boolean mColorizedSet;
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        RemoteViews mContentView;
        @RestrictTo
        public Context mContext;
        Bundle mExtras;
        PendingIntent mFullScreenIntent;
        int mGroupAlertBehavior;
        String mGroupKey;
        boolean mGroupSummary;
        RemoteViews mHeadsUpContentView;
        ArrayList<Action> mInvisibleActions;
        Bitmap mLargeIcon;
        boolean mLocalOnly;
        Notification mNotification;
        int mNumber;
        @Deprecated
        public ArrayList<String> mPeople;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        Notification mPublicVersion;
        CharSequence[] mRemoteInputHistory;
        String mShortcutId;
        boolean mShowWhen;
        boolean mSilent;
        String mSortKey;
        Style mStyle;
        CharSequence mSubText;
        RemoteViews mTickerView;
        long mTimeout;
        boolean mUseChronometer;
        int mVisibility;

        @Deprecated
        public Builder(Context context) {
            this(context, null);
        }

        public Builder(@NonNull Context context, @NonNull String str) {
            this.mActions = new ArrayList<>();
            this.mInvisibleActions = new ArrayList<>();
            this.mShowWhen = true;
            this.mLocalOnly = false;
            this.mColor = 0;
            this.mVisibility = 0;
            this.mBadgeIcon = 0;
            this.mGroupAlertBehavior = 0;
            Notification notification = new Notification();
            this.mNotification = notification;
            this.mContext = context;
            this.mChannelId = str;
            notification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.mPriority = 0;
            this.mPeople = new ArrayList<>();
            this.mAllowSystemGeneratedContextualActions = true;
        }

        protected static CharSequence limitCharSequenceLength(CharSequence charSequence) {
            if (charSequence == null) {
                return charSequence;
            }
            CharSequence charSequence2 = charSequence;
            if (charSequence.length() > 5120) {
                charSequence2 = charSequence.subSequence(0, 5120);
            }
            return charSequence2;
        }

        private Bitmap reduceLargeIconSize(Bitmap bitmap) {
            Bitmap bitmap2 = bitmap;
            if (bitmap != null) {
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap2 = bitmap;
                } else {
                    Resources resources = this.mContext.getResources();
                    int dimensionPixelSize = resources.getDimensionPixelSize(C0189R.dimen.compat_notification_large_icon_max_width);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(C0189R.dimen.compat_notification_large_icon_max_height);
                    if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                        return bitmap;
                    }
                    double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
                    bitmap2 = Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
                }
            }
            return bitmap2;
        }

        private void setFlag(int i, boolean z) {
            if (z) {
                Notification notification = this.mNotification;
                notification.flags = i | notification.flags;
                return;
            }
            Notification notification2 = this.mNotification;
            notification2.flags = (i ^ (-1)) & notification2.flags;
        }

        public Builder addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mActions.add(new Action(i, charSequence, pendingIntent));
            return this;
        }

        public Builder addAction(Action action) {
            this.mActions.add(action);
            return this;
        }

        public Notification build() {
            return new NotificationCompatBuilder(this).m19745c();
        }

        @RestrictTo
        public RemoteViews getBigContentView() {
            return this.mBigContentView;
        }

        @RestrictTo
        public int getColor() {
            return this.mColor;
        }

        @RestrictTo
        public RemoteViews getContentView() {
            return this.mContentView;
        }

        public Bundle getExtras() {
            if (this.mExtras == null) {
                this.mExtras = new Bundle();
            }
            return this.mExtras;
        }

        @RestrictTo
        public RemoteViews getHeadsUpContentView() {
            return this.mHeadsUpContentView;
        }

        @RestrictTo
        public int getPriority() {
            return this.mPriority;
        }

        @RestrictTo
        public long getWhenIfShowing() {
            return this.mShowWhen ? this.mNotification.when : 0L;
        }

        public Builder setAutoCancel(boolean z) {
            setFlag(16, z);
            return this;
        }

        public Builder setChannelId(@NonNull String str) {
            this.mChannelId = str;
            return this;
        }

        public Builder setColor(@ColorInt int i) {
            this.mColor = i;
            return this;
        }

        public Builder setContentIntent(PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mContentText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setContentTitle(CharSequence charSequence) {
            this.mContentTitle = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setCustomBigContentView(RemoteViews remoteViews) {
            this.mBigContentView = remoteViews;
            return this;
        }

        public Builder setDefaults(int i) {
            Notification notification = this.mNotification;
            notification.defaults = i;
            if ((i & 4) != 0) {
                notification.flags |= 1;
            }
            return this;
        }

        public Builder setDeleteIntent(PendingIntent pendingIntent) {
            this.mNotification.deleteIntent = pendingIntent;
            return this;
        }

        public Builder setFullScreenIntent(PendingIntent pendingIntent, boolean z) {
            this.mFullScreenIntent = pendingIntent;
            setFlag(128, z);
            return this;
        }

        public Builder setGroup(String str) {
            this.mGroupKey = str;
            return this;
        }

        public Builder setGroupSummary(boolean z) {
            this.mGroupSummary = z;
            return this;
        }

        public Builder setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = reduceLargeIconSize(bitmap);
            return this;
        }

        public Builder setLights(@ColorInt int i, int i2, int i3) {
            Notification notification = this.mNotification;
            notification.ledARGB = i;
            notification.ledOnMS = i2;
            notification.ledOffMS = i3;
            int i4 = (i2 == 0 || i3 == 0) ? 0 : 1;
            Notification notification2 = this.mNotification;
            notification2.flags = i4 | (notification2.flags & (-2));
            return this;
        }

        public Builder setLocalOnly(boolean z) {
            this.mLocalOnly = z;
            return this;
        }

        public Builder setNumber(int i) {
            this.mNumber = i;
            return this;
        }

        public Builder setOngoing(boolean z) {
            setFlag(2, z);
            return this;
        }

        public Builder setOnlyAlertOnce(boolean z) {
            setFlag(8, z);
            return this;
        }

        public Builder setPriority(int i) {
            this.mPriority = i;
            return this;
        }

        public Builder setShowWhen(boolean z) {
            this.mShowWhen = z;
            return this;
        }

        public Builder setSmallIcon(int i) {
            this.mNotification.icon = i;
            return this;
        }

        public Builder setSound(Uri uri) {
            Notification notification = this.mNotification;
            notification.sound = uri;
            notification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                notification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public Builder setStyle(Style style) {
            if (this.mStyle != style) {
                this.mStyle = style;
                if (style != null) {
                    style.m19749p(this);
                }
            }
            return this;
        }

        public Builder setSubText(CharSequence charSequence) {
            this.mSubText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setTicker(CharSequence charSequence) {
            this.mNotification.tickerText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setVibrate(long[] jArr) {
            this.mNotification.vibrate = jArr;
            return this;
        }

        public Builder setVisibility(int i) {
            this.mVisibility = i;
            return this;
        }

        public Builder setWhen(long j) {
            this.mNotification.when = j;
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$CarExtender.class */
    public static final class CarExtender implements Extender {

        @Deprecated
        /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$CarExtender$UnreadConversation.class */
        public static class UnreadConversation {

            /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$CarExtender$UnreadConversation$Builder.class */
            public static class Builder {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$DecoratedCustomViewStyle.class */
    public static class DecoratedCustomViewStyle extends Style {
        /* renamed from: q */
        private RemoteViews m19777q(RemoteViews remoteViews, boolean z) {
            int min;
            boolean z2 = true;
            int i = 0;
            RemoteViews c = m19759c(true, C0189R.layout.notification_template_custom_big, false);
            c.removeAllViews(C0189R.C0192id.actions);
            List<Action> s = m19775s(this.f2902a.mActions);
            if (!z || s == null || (min = Math.min(s.size(), 3)) <= 0) {
                z2 = false;
            } else {
                for (int i2 = 0; i2 < min; i2++) {
                    c.addView(C0189R.C0192id.actions, m19776r(s.get(i2)));
                }
            }
            if (!z2) {
                i = 8;
            }
            c.setViewVisibility(C0189R.C0192id.actions, i);
            c.setViewVisibility(C0189R.C0192id.action_divider, i);
            m19758d(c, remoteViews);
            return c;
        }

        /* renamed from: r */
        private RemoteViews m19776r(Action action) {
            boolean z = action.f2867k == null;
            RemoteViews remoteViews = new RemoteViews(this.f2902a.mContext.getPackageName(), z ? C0189R.layout.notification_action_tombstone : C0189R.layout.notification_action);
            remoteViews.setImageViewBitmap(C0189R.C0192id.action_image, m19753i(action.m19798f(), this.f2902a.mContext.getResources().getColor(C0189R.C0190color.notification_action_color_filter)));
            remoteViews.setTextViewText(C0189R.C0192id.action_text, action.f2866j);
            if (!z) {
                remoteViews.setOnClickPendingIntent(C0189R.C0192id.action_container, action.f2867k);
            }
            if (Build.VERSION.SDK_INT >= 15) {
                remoteViews.setContentDescription(C0189R.C0192id.action_container, action.f2866j);
            }
            return remoteViews;
        }

        /* renamed from: s */
        private static List<Action> m19775s(List<Action> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Action action : list) {
                if (!action.m19793k()) {
                    arrayList.add(action);
                }
            }
            return arrayList;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: b */
        public void mo17971b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                notificationBuilderWithBuilderAccessor.mo19747a().setStyle(new Notification.DecoratedCustomViewStyle());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: m */
        public RemoteViews mo17970m(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews bigContentView = this.f2902a.getBigContentView();
            if (bigContentView == null) {
                bigContentView = this.f2902a.getContentView();
            }
            if (bigContentView == null) {
                return null;
            }
            return m19777q(bigContentView, true);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: n */
        public RemoteViews mo17969n(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT < 24 && this.f2902a.getContentView() != null) {
                return m19777q(this.f2902a.getContentView(), false);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: o */
        public RemoteViews mo17973o(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews headsUpContentView = this.f2902a.getHeadsUpContentView();
            RemoteViews contentView = headsUpContentView != null ? headsUpContentView : this.f2902a.getContentView();
            if (headsUpContentView == null) {
                return null;
            }
            return m19777q(contentView, true);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$Extender.class */
    public interface Extender {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$GroupAlertBehavior.class */
    public @interface GroupAlertBehavior {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$InboxStyle.class */
    public static class InboxStyle extends Style {

        /* renamed from: e */
        private ArrayList<CharSequence> f2891e = new ArrayList<>();

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: b */
        public void mo17971b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(notificationBuilderWithBuilderAccessor.mo19747a()).setBigContentTitle(this.f2903b);
                if (this.f2905d) {
                    bigContentTitle.setSummaryText(this.f2904c);
                }
                Iterator<CharSequence> it = this.f2891e.iterator();
                while (it.hasNext()) {
                    bigContentTitle.addLine(it.next());
                }
            }
        }

        /* renamed from: q */
        public InboxStyle m19774q(CharSequence charSequence) {
            this.f2891e.add(Builder.limitCharSequenceLength(charSequence));
            return this;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$MessagingStyle.class */
    public static class MessagingStyle extends Style {

        /* renamed from: e */
        private final List<Message> f2892e = new ArrayList();

        /* renamed from: f */
        private Person f2893f;
        @Nullable

        /* renamed from: g */
        private CharSequence f2894g;
        @Nullable

        /* renamed from: h */
        private Boolean f2895h;

        /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$MessagingStyle$Message.class */
        public static final class Message {

            /* renamed from: a */
            private final CharSequence f2896a;

            /* renamed from: b */
            private final long f2897b;
            @Nullable

            /* renamed from: c */
            private final Person f2898c;

            /* renamed from: d */
            private Bundle f2899d;
            @Nullable

            /* renamed from: e */
            private String f2900e;
            @Nullable

            /* renamed from: f */
            private Uri f2901f;

            @NonNull
            /* renamed from: a */
            static Bundle[] m19767a(List<Message> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    bundleArr[i] = list.get(i).m19761g();
                }
                return bundleArr;
            }

            /* renamed from: g */
            private Bundle m19761g() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.f2896a;
                if (charSequence != null) {
                    bundle.putCharSequence("text", charSequence);
                }
                bundle.putLong("time", this.f2897b);
                Person person = this.f2898c;
                if (person != null) {
                    bundle.putCharSequence("sender", person.m19710c());
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable("sender_person", this.f2898c.m19706g());
                    } else {
                        bundle.putBundle("person", this.f2898c.m19705h());
                    }
                }
                String str = this.f2900e;
                if (str != null) {
                    bundle.putString("type", str);
                }
                Uri uri = this.f2901f;
                if (uri != null) {
                    bundle.putParcelable("uri", uri);
                }
                Bundle bundle2 = this.f2899d;
                if (bundle2 != null) {
                    bundle.putBundle("extras", bundle2);
                }
                return bundle;
            }

            @Nullable
            /* renamed from: b */
            public String m19766b() {
                return this.f2900e;
            }

            @Nullable
            /* renamed from: c */
            public Uri m19765c() {
                return this.f2901f;
            }

            @Nullable
            /* renamed from: d */
            public Person m19764d() {
                return this.f2898c;
            }

            @NonNull
            /* renamed from: e */
            public CharSequence m19763e() {
                return this.f2896a;
            }

            /* renamed from: f */
            public long m19762f() {
                return this.f2897b;
            }
        }

        private MessagingStyle() {
        }

        @Nullable
        /* renamed from: q */
        private Message m19773q() {
            for (int size = this.f2892e.size() - 1; size >= 0; size--) {
                Message message = this.f2892e.get(size);
                if (!(message.m19764d() == null || TextUtils.isEmpty(message.m19764d().m19710c()))) {
                    return message;
                }
            }
            if (this.f2892e.isEmpty()) {
                return null;
            }
            List<Message> list = this.f2892e;
            return list.get(list.size() - 1);
        }

        /* renamed from: r */
        private boolean m19772r() {
            for (int size = this.f2892e.size() - 1; size >= 0; size--) {
                Message message = this.f2892e.get(size);
                if (message.m19764d() != null && message.m19764d().m19710c() == null) {
                    return true;
                }
            }
            return false;
        }

        @NonNull
        /* renamed from: t */
        private TextAppearanceSpan m19770t(int i) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i), null);
        }

        /* renamed from: u */
        private CharSequence m19769u(Message message) {
            BidiFormatter c = BidiFormatter.m19398c();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z = Build.VERSION.SDK_INT >= 21;
            int i = z ? -16777216 : -1;
            Person d = message.m19764d();
            CharSequence charSequence = "";
            String c2 = d == null ? "" : message.m19764d().m19710c();
            int i2 = i;
            CharSequence charSequence2 = c2;
            if (TextUtils.isEmpty(c2)) {
                CharSequence c3 = this.f2893f.m19710c();
                i2 = i;
                charSequence2 = c3;
                if (z) {
                    i2 = i;
                    charSequence2 = c3;
                    if (this.f2902a.getColor() != 0) {
                        i2 = this.f2902a.getColor();
                        charSequence2 = c3;
                    }
                }
            }
            CharSequence h = c.m19393h(charSequence2);
            spannableStringBuilder.append(h);
            spannableStringBuilder.setSpan(m19770t(i2), spannableStringBuilder.length() - h.length(), spannableStringBuilder.length(), 33);
            if (message.m19763e() != null) {
                charSequence = message.m19763e();
            }
            spannableStringBuilder.append((CharSequence) "  ").append(c.m19393h(charSequence));
            return spannableStringBuilder;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        /* renamed from: a */
        public void mo19760a(Bundle bundle) {
            super.mo19760a(bundle);
            bundle.putCharSequence("android.selfDisplayName", this.f2893f.m19710c());
            bundle.putBundle("android.messagingStyleUser", this.f2893f.m19705h());
            bundle.putCharSequence("android.hiddenConversationTitle", this.f2894g);
            if (this.f2894g != null && this.f2895h.booleanValue()) {
                bundle.putCharSequence("android.conversationTitle", this.f2894g);
            }
            if (!this.f2892e.isEmpty()) {
                bundle.putParcelableArray("android.messages", Message.m19767a(this.f2892e));
            }
            Boolean bool = this.f2895h;
            if (bool != null) {
                bundle.putBoolean("android.isGroupConversation", bool.booleanValue());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        @RestrictTo
        /* renamed from: b */
        public void mo17971b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            Notification.MessagingStyle.Message message;
            m19768v(m19771s());
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                Notification.MessagingStyle messagingStyle = i >= 28 ? new Notification.MessagingStyle(this.f2893f.m19706g()) : new Notification.MessagingStyle(this.f2893f.m19710c());
                if (this.f2895h.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setConversationTitle(this.f2894g);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setGroupConversation(this.f2895h.booleanValue());
                }
                for (Message message2 : this.f2892e) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        Person d = message2.m19764d();
                        message = new Notification.MessagingStyle.Message(message2.m19763e(), message2.m19762f(), d == null ? null : d.m19706g());
                    } else {
                        message = new Notification.MessagingStyle.Message(message2.m19763e(), message2.m19762f(), message2.m19764d() != null ? message2.m19764d().m19710c() : null);
                    }
                    if (message2.m19766b() != null) {
                        message.setData(message2.m19766b(), message2.m19765c());
                    }
                    messagingStyle.addMessage(message);
                }
                messagingStyle.setBuilder(notificationBuilderWithBuilderAccessor.mo19747a());
                return;
            }
            Message q = m19773q();
            if (this.f2894g != null && this.f2895h.booleanValue()) {
                notificationBuilderWithBuilderAccessor.mo19747a().setContentTitle(this.f2894g);
            } else if (q != null) {
                notificationBuilderWithBuilderAccessor.mo19747a().setContentTitle("");
                if (q.m19764d() != null) {
                    notificationBuilderWithBuilderAccessor.mo19747a().setContentTitle(q.m19764d().m19710c());
                }
            }
            if (q != null) {
                notificationBuilderWithBuilderAccessor.mo19747a().setContentText(this.f2894g != null ? m19769u(q) : q.m19763e());
            }
            if (Build.VERSION.SDK_INT >= 16) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                boolean z = this.f2894g != null || m19772r();
                for (int size = this.f2892e.size() - 1; size >= 0; size--) {
                    Message message3 = this.f2892e.get(size);
                    CharSequence u = z ? m19769u(message3) : message3.m19763e();
                    if (size != this.f2892e.size() - 1) {
                        spannableStringBuilder.insert(0, (CharSequence) "\n");
                    }
                    spannableStringBuilder.insert(0, u);
                }
                new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.mo19747a()).setBigContentTitle(null).bigText(spannableStringBuilder);
            }
        }

        /* renamed from: s */
        public boolean m19771s() {
            Builder builder = this.f2902a;
            boolean z = false;
            boolean z2 = false;
            if (builder == null || builder.mContext.getApplicationInfo().targetSdkVersion >= 28 || this.f2895h != null) {
                Boolean bool = this.f2895h;
                if (bool != null) {
                    z = bool.booleanValue();
                }
                return z;
            }
            if (this.f2894g != null) {
                z2 = true;
            }
            return z2;
        }

        /* renamed from: v */
        public MessagingStyle m19768v(boolean z) {
            this.f2895h = Boolean.valueOf(z);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$NotificationVisibility.class */
    public @interface NotificationVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$StreamType.class */
    public @interface StreamType {
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$Style.class */
    public static abstract class Style {
        @RestrictTo

        /* renamed from: a */
        protected Builder f2902a;

        /* renamed from: b */
        CharSequence f2903b;

        /* renamed from: c */
        CharSequence f2904c;

        /* renamed from: d */
        boolean f2905d = false;

        /* renamed from: e */
        private int m19757e() {
            Resources resources = this.f2902a.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(C0189R.dimen.notification_top_pad);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(C0189R.dimen.notification_top_pad_large_text);
            float f = (m19756f(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
            return Math.round(((1.0f - f) * dimensionPixelSize) + (f * dimensionPixelSize2));
        }

        /* renamed from: f */
        private static float m19756f(float f, float f2, float f3) {
            if (f >= f2) {
                f2 = f;
                if (f > f3) {
                    f2 = f3;
                }
            }
            return f2;
        }

        /* renamed from: h */
        private Bitmap m19754h(int i, int i2, int i3) {
            return m19752j(IconCompat.m19492c(this.f2902a.mContext, i), i2, i3);
        }

        /* renamed from: j */
        private Bitmap m19752j(IconCompat iconCompat, int i, int i2) {
            Drawable o = iconCompat.m19480o(this.f2902a.mContext);
            int intrinsicWidth = i2 == 0 ? o.getIntrinsicWidth() : i2;
            int i3 = i2;
            if (i2 == 0) {
                i3 = o.getIntrinsicHeight();
            }
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i3, Bitmap.Config.ARGB_8888);
            o.setBounds(0, 0, intrinsicWidth, i3);
            if (i != 0) {
                o.mutate().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
            o.draw(new Canvas(createBitmap));
            return createBitmap;
        }

        /* renamed from: k */
        private Bitmap m19751k(int i, int i2, int i3, int i4) {
            int i5 = C0189R.C0191drawable.notification_icon_background;
            int i6 = i4;
            if (i4 == 0) {
                i6 = 0;
            }
            Bitmap h = m19754h(i5, i6, i2);
            Canvas canvas = new Canvas(h);
            Drawable mutate = this.f2902a.mContext.getResources().getDrawable(i).mutate();
            mutate.setFilterBitmap(true);
            int i7 = (i2 - i3) / 2;
            int i8 = i3 + i7;
            mutate.setBounds(i7, i7, i8, i8);
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            mutate.draw(canvas);
            return h;
        }

        /* renamed from: l */
        private void m19750l(RemoteViews remoteViews) {
            remoteViews.setViewVisibility(C0189R.C0192id.title, 8);
            remoteViews.setViewVisibility(C0189R.C0192id.text2, 8);
            remoteViews.setViewVisibility(C0189R.C0192id.text, 8);
        }

        @RestrictTo
        /* renamed from: a */
        public void mo19760a(Bundle bundle) {
        }

        @RestrictTo
        /* renamed from: b */
        public void mo17971b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        }

        /* JADX WARN: Removed duplicated region for block: B:68:0x02cc  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x02e5  */
        /* JADX WARN: Removed duplicated region for block: B:73:0x02f7  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x0303  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0331  */
        /* JADX WARN: Removed duplicated region for block: B:93:0x03c5  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x03ca  */
        /* JADX WARN: Removed duplicated region for block: B:97:0x03df  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x03e5  */
        @androidx.annotation.RestrictTo
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public android.widget.RemoteViews m19759c(boolean r11, int r12, boolean r13) {
            /*
                Method dump skipped, instructions count: 1011
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.NotificationCompat.Style.m19759c(boolean, int, boolean):android.widget.RemoteViews");
        }

        @RestrictTo
        /* renamed from: d */
        public void m19758d(RemoteViews remoteViews, RemoteViews remoteViews2) {
            m19750l(remoteViews);
            remoteViews.removeAllViews(C0189R.C0192id.notification_main_column);
            remoteViews.addView(C0189R.C0192id.notification_main_column, remoteViews2.clone());
            remoteViews.setViewVisibility(C0189R.C0192id.notification_main_column, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                remoteViews.setViewPadding(C0189R.C0192id.notification_main_column_container, 0, m19757e(), 0, 0);
            }
        }

        @RestrictTo
        /* renamed from: g */
        public Bitmap m19755g(int i, int i2) {
            return m19754h(i, i2, 0);
        }

        /* renamed from: i */
        Bitmap m19753i(IconCompat iconCompat, int i) {
            return m19752j(iconCompat, i, 0);
        }

        @RestrictTo
        /* renamed from: m */
        public RemoteViews mo17970m(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo
        /* renamed from: n */
        public RemoteViews mo17969n(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        @RestrictTo
        /* renamed from: o */
        public RemoteViews mo17973o(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        /* renamed from: p */
        public void m19749p(Builder builder) {
            if (this.f2902a != builder) {
                this.f2902a = builder;
                if (builder != null) {
                    builder.setStyle(this);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/NotificationCompat$WearableExtender.class */
    public static final class WearableExtender implements Extender {

        /* renamed from: c */
        private PendingIntent f2908c;

        /* renamed from: e */
        private Bitmap f2910e;

        /* renamed from: f */
        private int f2911f;

        /* renamed from: j */
        private int f2915j;

        /* renamed from: l */
        private int f2917l;

        /* renamed from: m */
        private String f2918m;

        /* renamed from: n */
        private String f2919n;

        /* renamed from: a */
        private ArrayList<Action> f2906a = new ArrayList<>();

        /* renamed from: b */
        private int f2907b = 1;

        /* renamed from: d */
        private ArrayList<Notification> f2909d = new ArrayList<>();

        /* renamed from: g */
        private int f2912g = 8388613;

        /* renamed from: h */
        private int f2913h = -1;

        /* renamed from: i */
        private int f2914i = 0;

        /* renamed from: k */
        private int f2916k = 80;

        /* renamed from: a */
        public WearableExtender clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.f2906a = new ArrayList<>(this.f2906a);
            wearableExtender.f2907b = this.f2907b;
            wearableExtender.f2908c = this.f2908c;
            wearableExtender.f2909d = new ArrayList<>(this.f2909d);
            wearableExtender.f2910e = this.f2910e;
            wearableExtender.f2911f = this.f2911f;
            wearableExtender.f2912g = this.f2912g;
            wearableExtender.f2913h = this.f2913h;
            wearableExtender.f2914i = this.f2914i;
            wearableExtender.f2915j = this.f2915j;
            wearableExtender.f2916k = this.f2916k;
            wearableExtender.f2917l = this.f2917l;
            wearableExtender.f2918m = this.f2918m;
            wearableExtender.f2919n = this.f2919n;
            return wearableExtender;
        }
    }

    @Nullable
    /* renamed from: a */
    public static Bundle m19804a(Notification notification) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            return notification.extras;
        }
        if (i >= 16) {
            return NotificationCompatJellybean.m19740c(notification);
        }
        return null;
    }
}
