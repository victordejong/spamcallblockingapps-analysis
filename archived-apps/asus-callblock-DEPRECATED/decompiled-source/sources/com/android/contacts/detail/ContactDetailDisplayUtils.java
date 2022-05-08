package com.android.contacts.detail;

import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.ContactsContract;
import android.support.v4.a.a.a;
import android.telephony.PhoneNumberUtils;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.android.contacts.k;
import com.android.contacts.model.a.j;
import com.android.contacts.model.a.n;
import com.android.contacts.model.c;
import com.android.contacts.model.e;
import com.android.contacts.preference.ContactsPreferences;
import com.android.contacts.util.ContactBadgeUtil;
import com.android.contacts.util.CoverUtils;
import com.android.contacts.util.HtmlUtils;
import com.android.contacts.util.MoreMath;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.StreamItemEntry;
import com.android.contacts.util.StreamItemPhotoEntry;
import com.asus.updatesdk.R;
import com.google.a.b.ae;
import com.google.a.b.p;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailDisplayUtils.class */
public class ContactDetailDisplayUtils {
    private static final int PHOTO_FADE_IN_ANIMATION_DURATION_MILLIS = 100;
    private static final String TAG = "ContactDetailDisplayUtils";
    private static Html.ImageGetter sImageGetter;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailDisplayUtils$DefaultImageGetter.class */
    public static class DefaultImageGetter implements Html.ImageGetter {
        private static final String RES_SCHEME = "res";
        private final PackageManager mPackageManager;

        public DefaultImageGetter(PackageManager packageManager) {
            this.mPackageManager = packageManager;
        }

        private Drawable getResourceDrawable(Resources resources, int i) {
            Drawable drawable = resources.getDrawable(i);
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            return drawable;
        }

        private Resources getResourcesForResourceName(String str) {
            Resources resources;
            try {
                resources = this.mPackageManager.getResourcesForApplication(str);
            } catch (PackageManager.NameNotFoundException e) {
                Log.d(ContactDetailDisplayUtils.TAG, "Could not find package: " + str);
                resources = null;
            }
            return resources;
        }

        @Override // android.text.Html.ImageGetter
        public Drawable getDrawable(String str) {
            Drawable drawable;
            try {
                Uri parse = Uri.parse(str);
                if (!RES_SCHEME.equals(parse.getScheme())) {
                    Log.d(ContactDetailDisplayUtils.TAG, "Image source does not correspond to a resource: " + str);
                    drawable = null;
                } else {
                    String authority = parse.getAuthority();
                    Resources resourcesForResourceName = getResourcesForResourceName(authority);
                    if (resourcesForResourceName == null) {
                        Log.d(ContactDetailDisplayUtils.TAG, "Could not parse image source: " + str);
                        drawable = null;
                    } else {
                        List<String> pathSegments = parse.getPathSegments();
                        if (pathSegments.size() != 1) {
                            Log.d(ContactDetailDisplayUtils.TAG, "Could not parse image source: " + str);
                            drawable = null;
                        } else {
                            int identifier = resourcesForResourceName.getIdentifier(pathSegments.get(0), "drawable", authority);
                            if (identifier == 0) {
                                Log.d(ContactDetailDisplayUtils.TAG, "Cannot resolve resource identifier: " + str);
                                drawable = null;
                            } else {
                                try {
                                    drawable = getResourceDrawable(resourcesForResourceName, identifier);
                                } catch (Resources.NotFoundException e) {
                                    Log.d(ContactDetailDisplayUtils.TAG, "Resource not found: " + str, e);
                                    drawable = null;
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                Log.d(ContactDetailDisplayUtils.TAG, "Could not parse image source: " + str);
                drawable = null;
            }
            return drawable;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/android/contacts/detail/ContactDetailDisplayUtils$StreamPhotoTag.class */
    public static class StreamPhotoTag {
        public final StreamItemEntry streamItem;
        public final StreamItemPhotoEntry streamItemPhoto;

        public StreamPhotoTag(StreamItemEntry streamItemEntry, StreamItemPhotoEntry streamItemPhotoEntry) {
            this.streamItem = streamItemEntry;
            this.streamItemPhoto = streamItemPhotoEntry;
        }

        public Uri getStreamItemPhotoUri() {
            Uri.Builder buildUpon = ContactsContract.StreamItems.CONTENT_URI.buildUpon();
            ContentUris.appendId(buildUpon, this.streamItem.getId());
            buildUpon.appendPath("photo");
            ContentUris.appendId(buildUpon, this.streamItemPhoto.getId());
            return buildUpon.build();
        }
    }

    private ContactDetailDisplayUtils() {
    }

    static View addStreamItemText(Context context, StreamItemEntry streamItemEntry, View view) {
        TextView textView = (TextView) view.findViewById(2131297353);
        TextView textView2 = (TextView) view.findViewById(2131297349);
        TextView textView3 = (TextView) view.findViewById(2131297350);
        new DefaultImageGetter(context.getPackageManager());
        setDataOrHideIfNone(streamItemEntry.getDecodedText(), textView);
        setDataOrHideIfNone(ContactBadgeUtil.getSocialDate(streamItemEntry, context), textView2);
        setDataOrHideIfNone(streamItemEntry.getDecodedComments(), textView3);
        return view;
    }

    public static void configureStarredImageView(ImageView imageView, boolean z, boolean z2, boolean z3, boolean z4) {
        if (z || z2 || (!PhoneCapabilityTester.IsAsusDevice() && z4)) {
            imageView.setVisibility(8);
            return;
        }
        imageView.setVisibility(0);
        imageView.setImageResource(z3 ? 2131165299 : 2131165224);
        imageView.setTag(Boolean.valueOf(z3));
        imageView.setContentDescription(imageView.getResources().getString(z3 ? 2131755836 : 2131755802));
    }

    public static void configureStarredMenuItem(MenuItem menuItem, boolean z, boolean z2, boolean z3, boolean z4, Context context) {
        if (z || z2 || (!PhoneCapabilityTester.IsAsusDevice() && z4)) {
            menuItem.setVisible(false);
            return;
        }
        menuItem.setVisible(true);
        int i = z3 ? 2131165299 : 2131165224;
        menuItem.setIcon(i);
        menuItem.setChecked(z3);
        menuItem.setTitle(z3 ? 2131755836 : 2131755802);
        if (i == 2131165224) {
            Drawable b2 = a.b(menuItem.getIcon());
            a.a(b2, context.getResources().getColor(2131034181));
            menuItem.setIcon(b2);
        }
    }

    public static View createStreamItemView(LayoutInflater layoutInflater, Context context, View view, StreamItemEntry streamItemEntry, View.OnClickListener onClickListener) {
        int i = (!PhoneCapabilityTester.isUsingTwoPanes(context) || context.getResources().getConfiguration().orientation != 2) ? 1 : 2;
        View view2 = view;
        if (view == null) {
            view2 = layoutInflater.inflate(2131427669, (ViewGroup) null, false);
        }
        k a2 = k.a(context);
        List<StreamItemPhotoEntry> photos = streamItemEntry.getPhotos();
        int size = photos.size();
        addStreamItemText(context, streamItemEntry, view2);
        ViewGroup viewGroup = (ViewGroup) view2.findViewById(2131297354);
        if (size == 0) {
            viewGroup.setVisibility(8);
        } else {
            viewGroup.setVisibility(0);
            int i2 = i > 1 ? (size + 1) / 2 : size;
            int childCount = viewGroup.getChildCount();
            if (childCount != i2) {
                if (childCount < i2) {
                    for (int i3 = childCount; i3 < i2; i3++) {
                        layoutInflater.inflate(2131427671, viewGroup, true);
                    }
                } else {
                    for (int i4 = i2; i4 < childCount; i4++) {
                        viewGroup.getChildAt(i4).setVisibility(8);
                    }
                }
            }
            for (int i5 = 0; i5 < size; i5 += i) {
                View childAt = viewGroup.getChildAt(i5 / i);
                childAt.setVisibility(0);
                loadPhoto(a2, streamItemEntry, photos.get(i5), childAt, 2131297352, onClickListener);
                if (i > 1) {
                    View findViewById = childAt.findViewById(2131297256);
                    if (i5 + 1 < size) {
                        loadPhoto(a2, streamItemEntry, photos.get(i5 + 1), childAt, 2131297355, onClickListener);
                        findViewById.setVisibility(0);
                    } else {
                        findViewById.setVisibility(4);
                    }
                }
            }
        }
        return view2;
    }

    public static String getAttribution(Context context, c cVar) {
        String str;
        if (cVar.e()) {
            String str2 = cVar.s;
            String str3 = cVar.t;
            if (!TextUtils.isEmpty(str2)) {
                str3 = str2;
            }
            str = context.getString(2131755445, str3);
        } else {
            str = null;
        }
        return str;
    }

    public static String getCompany(Context context, c cVar) {
        String str;
        boolean z = cVar.h == 30;
        ae<e> b2 = cVar.o.iterator();
        loop0: while (true) {
            if (!b2.hasNext()) {
                str = null;
                break;
            }
            for (com.android.contacts.model.a.a aVar : p.a(b2.next().h(), j.class)) {
                j jVar = (j) aVar;
                String asString = jVar.f1994a.getAsString(CoverUtils.CoverData.COVER_URI);
                String asString2 = jVar.f1994a.getAsString("data4");
                if (TextUtils.isEmpty(asString)) {
                    str = asString2;
                    if (z) {
                        str = null;
                    }
                } else if (TextUtils.isEmpty(asString2)) {
                    str = z ? null : asString;
                } else {
                    str = asString2;
                    if (!z) {
                        str = context.getString(2131755933, asString, asString2);
                    }
                }
                if (!TextUtils.isEmpty(str)) {
                    break loop0;
                }
            }
        }
        return str;
    }

    public static void getContactPhoneList(c cVar, ArrayList<String> arrayList) {
        if (cVar != null) {
            ae<e> b2 = cVar.o.iterator();
            while (b2.hasNext()) {
                for (com.android.contacts.model.a.a aVar : b2.next().h()) {
                    if (aVar instanceof com.android.contacts.model.a.k) {
                        arrayList.add(PhoneNumberUtils.toCallerIDMinMatch(PhoneNumberUtils.stripSeparators(((com.android.contacts.model.a.k) aVar).l())));
                    }
                }
            }
        }
    }

    public static void getContactPhoneNumberList(c cVar, ArrayList<String> arrayList) {
        if (cVar != null) {
            ae<e> b2 = cVar.o.iterator();
            while (b2.hasNext()) {
                for (com.android.contacts.model.a.a aVar : b2.next().h()) {
                    if (aVar instanceof com.android.contacts.model.a.k) {
                        arrayList.add(((com.android.contacts.model.a.k) aVar).l());
                    }
                }
            }
        }
    }

    public static CharSequence getDisplayName(Context context, c cVar) {
        String str = cVar.k;
        String str2 = cVar.l;
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? context.getResources().getString(2131755855) : new ContactsPreferences(context).getDisplayOrder() == 1 ? str : str2;
    }

    public static int getFirstListItemOffset(ListView listView) {
        return (listView == null || listView.getChildCount() == 0 || listView.getFirstVisiblePosition() != 0) ? Integer.MIN_VALUE : listView.getChildAt(0).getTop();
    }

    public static Html.ImageGetter getImageGetter(Context context) {
        if (sImageGetter == null) {
            sImageGetter = new DefaultImageGetter(context.getPackageManager());
        }
        return sImageGetter;
    }

    public static String getPhoneticName(Context context, c cVar) {
        String str = cVar.m;
        if (TextUtils.isEmpty(str)) {
            str = null;
        }
        return str;
    }

    public static boolean hasInternetCall(c cVar) {
        boolean z;
        if (cVar != null) {
            ae<e> b2 = cVar.o.iterator();
            loop0: while (true) {
                if (!b2.hasNext()) {
                    z = false;
                    break;
                }
                for (com.android.contacts.model.a.a aVar : b2.next().h()) {
                    if (aVar instanceof n) {
                        z = true;
                        break loop0;
                    }
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    private static void loadPhoto(k kVar, StreamItemEntry streamItemEntry, StreamItemPhotoEntry streamItemPhotoEntry, View view, int i, View.OnClickListener onClickListener) {
        View findViewById = view.findViewById(i);
        View findViewById2 = findViewById.findViewById(2131297200);
        ImageView imageView = (ImageView) findViewById.findViewById(R.id.image);
        if (onClickListener != null) {
            findViewById2.setOnClickListener(onClickListener);
            findViewById2.setTag(new StreamPhotoTag(streamItemEntry, streamItemPhotoEntry));
            findViewById2.setFocusable(true);
            findViewById2.setEnabled(true);
        } else {
            findViewById2.setOnClickListener(null);
            findViewById2.setTag(null);
            findViewById2.setFocusable(false);
            findViewById2.setClickable(false);
            findViewById2.setEnabled(false);
        }
        kVar.a(imageView, Uri.parse(streamItemPhotoEntry.getPhotoUri()), k.f1579b);
    }

    public static void requestToMoveToOffset(ListView listView, int i, int i2) {
        if (listView != null && listView.getChildCount() != 0 && listView.getFirstVisiblePosition() == 0 && i <= 0 && i2 != i && listView.getChildAt(0).getTop() != i) {
            listView.setSelectionFromTop(0, i);
        }
    }

    public static void setAlphaOnViewBackground(View view, float f) {
        if (view != null) {
            view.setBackgroundColor(((int) (MoreMath.clamp(f, 0.0f, 1.0f) * 255.0f)) << 24);
        }
    }

    public static void setAttribution(Context context, c cVar, TextView textView) {
        if (textView != null) {
            setDataOrHideIfNone(getAttribution(context, cVar), textView);
        }
    }

    public static void setCompanyName(Context context, c cVar, TextView textView) {
        if (textView != null) {
            setDataOrHideIfNone(getCompany(context, cVar), textView);
        }
    }

    private static void setDataOrHideIfNone(CharSequence charSequence, TextView textView) {
        if (!TextUtils.isEmpty(charSequence)) {
            textView.setText(charSequence);
            textView.setVisibility(0);
            return;
        }
        textView.setText((CharSequence) null);
        textView.setVisibility(8);
    }

    public static void setDisplayName(Context context, c cVar, TextView textView) {
        if (textView != null) {
            setDataOrHideIfNone(getDisplayName(context, cVar), textView);
        }
    }

    public static void setPhoneticName(Context context, c cVar, TextView textView) {
        if (textView != null) {
            setDataOrHideIfNone(getPhoneticName(context, cVar), textView);
        }
    }

    public static void setPhoto(Context context, c cVar, ImageView imageView) {
        setPhoto(context, cVar, imageView, false);
    }

    public static void setPhoto(Context context, c cVar, ImageView imageView, boolean z) {
        byte[] bArr = cVar.y;
        Bitmap decodeByteArray = bArr != null ? BitmapFactory.decodeByteArray(bArr, 0, bArr.length) : ContactBadgeUtil.loadDefaultAvatarPhoto(context, true, false, cVar.h());
        boolean e = cVar.e();
        if (imageView.getDrawable() == null && e) {
            AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
            alphaAnimation.setDuration(100L);
            alphaAnimation.setInterpolator(new AccelerateInterpolator());
            imageView.startAnimation(alphaAnimation);
        }
        imageView.setImageBitmap(decodeByteArray);
    }

    public static void setSocialSnippet(Context context, c cVar, TextView textView, ImageView imageView) {
        String str;
        Spanned spanned;
        if (textView != null) {
            if (!cVar.p.isEmpty()) {
                StreamItemEntry streamItemEntry = cVar.p.get(0);
                spanned = HtmlUtils.fromHtml(context, streamItemEntry.getText());
                if (!streamItemEntry.getPhotos().isEmpty()) {
                    str = streamItemEntry.getPhotos().get(0).getPhotoUri();
                    spanned = null;
                } else {
                    str = null;
                }
            } else {
                str = null;
                spanned = null;
            }
            setDataOrHideIfNone(spanned, textView);
            if (str != null) {
                k.a(context).a(imageView, Uri.parse(str), k.f1579b);
                imageView.setVisibility(0);
                return;
            }
            imageView.setVisibility(8);
        }
    }

    public static void setSocialSnippetText(Context context, c cVar, TextView textView) {
        if (textView != null && cVar != null) {
            String str = null;
            if (!cVar.p.isEmpty()) {
                str = HtmlUtils.fromHtml(context, cVar.p.get(0).getText());
            }
            String str2 = str;
            if (str != null) {
                String charSequence = str.toString();
                str2 = str;
                if (charSequence.indexOf(10) != -1) {
                    str2 = charSequence.replace('\n', ' ').toString();
                }
            }
            setDataOrHideIfNone(str2, textView);
        }
    }

    public static void updateBlockListCallLog(Context context, ArrayList<String> arrayList) {
    }
}
