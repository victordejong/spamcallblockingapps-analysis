package androidx.appcompat.widget;

import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.C0247a;
import androidx.core.content.C0646b;
import androidx.p027c.p028a.AbstractC0558c;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;
/* renamed from: androidx.appcompat.widget.bg */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bg.class */
final class View$OnClickListenerC0477bg extends AbstractC0558c implements View.OnClickListener {

    /* renamed from: j */
    private final SearchView f2298j;

    /* renamed from: k */
    private final SearchableInfo f2299k;

    /* renamed from: l */
    private final Context f2300l;

    /* renamed from: m */
    private final WeakHashMap<String, Drawable.ConstantState> f2301m;

    /* renamed from: n */
    private final int f2302n;

    /* renamed from: o */
    private boolean f2303o;

    /* renamed from: p */
    private int f2304p;

    /* renamed from: q */
    private ColorStateList f2305q;

    /* renamed from: r */
    private int f2306r;

    /* renamed from: s */
    private int f2307s;

    /* renamed from: t */
    private int f2308t;

    /* renamed from: u */
    private int f2309u;

    /* renamed from: v */
    private int f2310v;

    /* renamed from: w */
    private int f2311w;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.appcompat.widget.bg$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/bg$a.class */
    public static final class C0478a {

        /* renamed from: a */
        public final TextView f2312a;

        /* renamed from: b */
        public final TextView f2313b;

        /* renamed from: c */
        public final ImageView f2314c;

        /* renamed from: d */
        public final ImageView f2315d;

        /* renamed from: e */
        public final ImageView f2316e;

        public C0478a(View view) {
            this.f2312a = (TextView) view.findViewById(16908308);
            this.f2313b = (TextView) view.findViewById(16908309);
            this.f2314c = (ImageView) view.findViewById(16908295);
            this.f2315d = (ImageView) view.findViewById(16908296);
            this.f2316e = (ImageView) view.findViewById(C0247a.C0253f.f691s);
        }
    }

    /* renamed from: a */
    private Drawable m9116a(ComponentName componentName) {
        String nameNotFoundException;
        ActivityInfo activityInfo;
        int iconResource;
        PackageManager packageManager = this.f2541d.getPackageManager();
        try {
            activityInfo = packageManager.getActivityInfo(componentName, 128);
            iconResource = activityInfo.getIconResource();
        } catch (PackageManager.NameNotFoundException e) {
            nameNotFoundException = e.toString();
        }
        if (iconResource == 0) {
            return null;
        }
        Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
        if (drawable != null) {
            return drawable;
        }
        nameNotFoundException = "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString();
        Log.w("SuggestionsAdapter", nameNotFoundException);
        return null;
    }

    /* renamed from: a */
    private Drawable m9113a(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return m9108b(uri);
                } catch (Resources.NotFoundException e) {
                    throw new FileNotFoundException("Resource does not exist: ".concat(String.valueOf(uri)));
                }
            } else {
                InputStream openInputStream = this.f2300l.getContentResolver().openInputStream(uri);
                if (openInputStream != null) {
                    Drawable createFromStream = Drawable.createFromStream(openInputStream, null);
                    try {
                        openInputStream.close();
                    } catch (IOException e2) {
                        Log.e("SuggestionsAdapter", "Error closing icon stream for ".concat(String.valueOf(uri)), e2);
                    }
                    return createFromStream;
                }
                throw new FileNotFoundException("Failed to open ".concat(String.valueOf(uri)));
            }
        } catch (FileNotFoundException e3) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
        return null;
    }

    /* renamed from: a */
    private Drawable m9110a(String str) {
        Drawable drawable = null;
        if (str != null) {
            drawable = null;
            if (!str.isEmpty()) {
                if ("0".equals(str)) {
                    drawable = null;
                } else {
                    try {
                        int parseInt = Integer.parseInt(str);
                        String str2 = "android.resource://" + this.f2300l.getPackageName() + "/" + parseInt;
                        Drawable b = m9107b(str2);
                        if (b != null) {
                            return b;
                        }
                        Drawable a = C0646b.m8619a(this.f2300l, parseInt);
                        m9109a(str2, a);
                        return a;
                    } catch (Resources.NotFoundException e) {
                        Log.w("SuggestionsAdapter", "Icon resource not found: ".concat(String.valueOf(str)));
                        return null;
                    } catch (NumberFormatException e2) {
                        Drawable b2 = m9107b(str);
                        if (b2 != null) {
                            return b2;
                        }
                        drawable = m9113a(Uri.parse(str));
                        m9109a(str, drawable);
                    }
                }
            }
        }
        return drawable;
    }

    /* renamed from: a */
    private static String m9115a(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e);
            return null;
        }
    }

    /* renamed from: a */
    public static String m9114a(Cursor cursor, String str) {
        return m9115a(cursor, cursor.getColumnIndex(str));
    }

    /* renamed from: a */
    private static void m9112a(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    /* renamed from: a */
    private static void m9111a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        textView.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    /* renamed from: a */
    private void m9109a(String str, Drawable drawable) {
        if (drawable != null) {
            this.f2301m.put(str, drawable.getConstantState());
        }
    }

    /* renamed from: b */
    private Drawable m9108b(Uri uri) {
        int parseInt;
        String authority = uri.getAuthority();
        if (!TextUtils.isEmpty(authority)) {
            try {
                Resources resourcesForApplication = this.f2541d.getPackageManager().getResourcesForApplication(authority);
                List<String> pathSegments = uri.getPathSegments();
                if (pathSegments != null) {
                    int size = pathSegments.size();
                    if (size == 1) {
                        try {
                            parseInt = Integer.parseInt(pathSegments.get(0));
                        } catch (NumberFormatException e) {
                            throw new FileNotFoundException("Single path segment is not a resource ID: ".concat(String.valueOf(uri)));
                        }
                    } else if (size == 2) {
                        parseInt = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
                    } else {
                        throw new FileNotFoundException("More than two path segments: ".concat(String.valueOf(uri)));
                    }
                    if (parseInt != 0) {
                        return resourcesForApplication.getDrawable(parseInt);
                    }
                    throw new FileNotFoundException("No resource found for: ".concat(String.valueOf(uri)));
                }
                throw new FileNotFoundException("No path: ".concat(String.valueOf(uri)));
            } catch (PackageManager.NameNotFoundException e2) {
                throw new FileNotFoundException("No package found for authority: ".concat(String.valueOf(uri)));
            }
        } else {
            throw new FileNotFoundException("No authority: ".concat(String.valueOf(uri)));
        }
    }

    /* renamed from: b */
    private Drawable m9107b(String str) {
        Drawable.ConstantState constantState = this.f2301m.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    /* renamed from: c */
    private static void m9106c(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    @Override // androidx.p027c.p028a.AbstractC0554a, androidx.p027c.p028a.C0556b.AbstractC0557a
    /* renamed from: a */
    public final Cursor mo8862a(CharSequence charSequence) {
        Cursor cursor;
        String suggestAuthority;
        String[] strArr;
        String charSequence2 = charSequence == null ? "" : charSequence.toString();
        if (this.f2298j.getVisibility() != 0 || this.f2298j.getWindowVisibility() != 0) {
            return null;
        }
        try {
            SearchableInfo searchableInfo = this.f2299k;
            if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
                cursor = null;
            } else {
                Uri.Builder fragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
                String suggestPath = searchableInfo.getSuggestPath();
                if (suggestPath != null) {
                    fragment.appendEncodedPath(suggestPath);
                }
                fragment.appendPath("search_suggest_query");
                String suggestSelection = searchableInfo.getSuggestSelection();
                if (suggestSelection != null) {
                    strArr = new String[]{charSequence2};
                } else {
                    fragment.appendPath(charSequence2);
                    strArr = null;
                }
                fragment.appendQueryParameter("limit", "50");
                cursor = this.f2541d.getContentResolver().query(fragment.build(), null, suggestSelection, strArr, null);
            }
            if (cursor == null) {
                return null;
            }
            cursor.getCount();
            return cursor;
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e);
            return null;
        }
    }

    @Override // androidx.p027c.p028a.AbstractC0558c, androidx.p027c.p028a.AbstractC0554a
    /* renamed from: a */
    public final View mo8860a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View a = super.mo8860a(context, cursor, viewGroup);
        a.setTag(new C0478a(a));
        ((ImageView) a.findViewById(C0247a.C0253f.f691s)).setImageResource(this.f2302n);
        return a;
    }

    @Override // androidx.p027c.p028a.AbstractC0554a, androidx.p027c.p028a.C0556b.AbstractC0557a
    /* renamed from: a */
    public final void mo8863a(Cursor cursor) {
        if (this.f2303o) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.mo8863a(cursor);
            if (cursor != null) {
                this.f2306r = cursor.getColumnIndex("suggest_text_1");
                this.f2307s = cursor.getColumnIndex("suggest_text_2");
                this.f2308t = cursor.getColumnIndex("suggest_text_2_url");
                this.f2309u = cursor.getColumnIndex("suggest_icon_1");
                this.f2310v = cursor.getColumnIndex("suggest_icon_2");
                this.f2311w = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.p027c.p028a.AbstractC0554a
    /* renamed from: a */
    public final void mo8866a(View view, Cursor cursor) {
        Drawable drawable;
        String str;
        C0478a aVar = (C0478a) view.getTag();
        int i = this.f2311w;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (aVar.f2312a != null) {
            m9111a(aVar.f2312a, m9115a(cursor, this.f2306r));
        }
        if (aVar.f2313b != null) {
            String a = m9115a(cursor, this.f2308t);
            if (a != null) {
                if (this.f2305q == null) {
                    TypedValue typedValue = new TypedValue();
                    this.f2541d.getTheme().resolveAttribute(C0247a.C0248a.f557O, typedValue, true);
                    this.f2305q = this.f2541d.getResources().getColorStateList(typedValue.resourceId);
                }
                SpannableString spannableString = new SpannableString(a);
                spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.f2305q, null), 0, a.length(), 33);
                str = spannableString;
            } else {
                str = m9115a(cursor, this.f2307s);
            }
            if (TextUtils.isEmpty(str)) {
                if (aVar.f2312a != null) {
                    aVar.f2312a.setSingleLine(false);
                    aVar.f2312a.setMaxLines(2);
                }
            } else if (aVar.f2312a != null) {
                aVar.f2312a.setSingleLine(true);
                aVar.f2312a.setMaxLines(1);
            }
            m9111a(aVar.f2313b, str);
        }
        Drawable drawable2 = null;
        if (aVar.f2314c != null) {
            ImageView imageView = aVar.f2314c;
            int i3 = this.f2309u;
            if (i3 == -1) {
                drawable = null;
            } else {
                drawable = m9110a(cursor.getString(i3));
                if (drawable == null) {
                    ComponentName searchActivity = this.f2299k.getSearchActivity();
                    String flattenToShortString = searchActivity.flattenToShortString();
                    if (this.f2301m.containsKey(flattenToShortString)) {
                        Drawable.ConstantState constantState = this.f2301m.get(flattenToShortString);
                        drawable = constantState == null ? null : constantState.newDrawable(this.f2300l.getResources());
                    } else {
                        Drawable a2 = m9116a(searchActivity);
                        this.f2301m.put(flattenToShortString, a2 == null ? null : a2.getConstantState());
                        drawable = a2;
                    }
                    if (drawable == null) {
                        drawable = this.f2541d.getPackageManager().getDefaultActivityIcon();
                    }
                }
            }
            m9112a(imageView, drawable, 4);
        }
        if (aVar.f2315d != null) {
            ImageView imageView2 = aVar.f2315d;
            int i4 = this.f2310v;
            if (i4 != -1) {
                drawable2 = m9110a(cursor.getString(i4));
            }
            m9112a(imageView2, drawable2, 8);
        }
        int i5 = this.f2304p;
        if (i5 == 2 || (i5 == 1 && (i2 & 1) != 0)) {
            aVar.f2316e.setVisibility(0);
            aVar.f2316e.setTag(aVar.f2312a.getText());
            aVar.f2316e.setOnClickListener(this);
            return;
        }
        aVar.f2316e.setVisibility(8);
    }

    @Override // androidx.p027c.p028a.AbstractC0554a, androidx.p027c.p028a.C0556b.AbstractC0557a
    /* renamed from: b */
    public final CharSequence mo8861b(Cursor cursor) {
        String a;
        String a2;
        if (cursor == null) {
            return null;
        }
        String a3 = m9114a(cursor, "suggest_intent_query");
        if (a3 != null) {
            return a3;
        }
        if (this.f2299k.shouldRewriteQueryFromData() && (a2 = m9114a(cursor, "suggest_intent_data")) != null) {
            return a2;
        }
        if (!this.f2299k.shouldRewriteQueryFromText() || (a = m9114a(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return a;
    }

    @Override // androidx.p027c.p028a.AbstractC0554a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public final View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View b = mo8859b(this.f2541d, this.f2540c, viewGroup);
            if (b != null) {
                ((C0478a) b.getTag()).f2312a.setText(e.toString());
            }
            return b;
        }
    }

    @Override // androidx.p027c.p028a.AbstractC0554a, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e);
            View a = mo8860a(this.f2541d, this.f2540c, viewGroup);
            if (a != null) {
                ((C0478a) a.getTag()).f2312a.setText(e.toString());
            }
            return a;
        }
    }

    @Override // androidx.p027c.p028a.AbstractC0554a, android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        m9106c(mo8864a());
    }

    @Override // android.widget.BaseAdapter
    public final void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        m9106c(mo8864a());
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.f2298j.m9354a((CharSequence) tag);
        }
    }
}
