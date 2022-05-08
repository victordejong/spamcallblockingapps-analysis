package com.mikepenz.aboutlibraries;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import android.util.Log;
import com.mikepenz.aboutlibraries.detector.Detect;
import com.mikepenz.aboutlibraries.entity.Library;
import com.mikepenz.aboutlibraries.entity.License;
import com.mikepenz.aboutlibraries.util.GenericsUtil;
import com.mikepenz.aboutlibraries.util.Util;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.cli.HelpFormatter;
/* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/Libs.class */
public class Libs {
    public static final String BUNDLE_COLORS = "ABOUT_COLOR";
    public static final String BUNDLE_STYLE = "ABOUT_LIBRARIES_STYLE";
    public static final String BUNDLE_THEME = "ABOUT_LIBRARIES_THEME";
    public static final String BUNDLE_TITLE = "ABOUT_LIBRARIES_TITLE";
    private static final String DEFINE_EXT = "define_";
    private static final String DEFINE_INT = "define_int_";
    private static final String DEFINE_LICENSE = "define_license_";
    private ArrayList<Library> internLibraries = new ArrayList<>();
    private ArrayList<Library> externLibraries = new ArrayList<>();
    private ArrayList<License> licenses = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/Libs$ActivityStyle.class */
    public enum ActivityStyle {
        LIGHT,
        DARK,
        LIGHT_DARK_TOOLBAR
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/Libs$LibraryFields.class */
    public enum LibraryFields {
        AUTHOR_NAME,
        AUTHOR_WEBSITE,
        LIBRARY_NAME,
        LIBRARY_DESCRIPTION,
        LIBRARY_VERSION,
        LIBRARY_WEBSITE,
        LIBRARY_OPEN_SOURCE,
        LIBRARY_REPOSITORY_LINK,
        LIBRARY_CLASSPATH,
        LICENSE_NAME,
        LICENSE_SHORT_DESCRIPTION,
        LICENSE_DESCRIPTION,
        LICENSE_WEBSITE
    }

    /* loaded from: classes-dex2jar.jar:com/mikepenz/aboutlibraries/Libs$SpecialButton.class */
    public enum SpecialButton {
        SPECIAL1,
        SPECIAL2,
        SPECIAL3
    }

    public Libs(Context context) {
        init(context, GenericsUtil.getFields(context));
    }

    public Libs(Context context, String[] strArr) {
        init(context, strArr);
    }

    private ArrayList<Library> find(ArrayList<Library> arrayList, String str, boolean z, int i) {
        ArrayList<Library> arrayList2 = new ArrayList<>();
        Iterator<Library> it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            Library next = it.next();
            if (z) {
                if (next.getDefinedName().toLowerCase().contains(str.toLowerCase())) {
                    arrayList2.add(next);
                    int i3 = i2 + 1;
                    i2 = i3;
                    if (i != -1) {
                        i2 = i3;
                        if (i < i3) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    continue;
                }
            } else if (next.getLibraryName().toLowerCase().contains(str.toLowerCase()) || next.getDefinedName().toLowerCase().contains(str.toLowerCase())) {
                arrayList2.add(next);
                int i4 = i2 + 1;
                i2 = i4;
                if (i != -1) {
                    i2 = i4;
                    if (i < i4) {
                        break;
                    }
                } else {
                    continue;
                }
            }
        }
        return arrayList2;
    }

    private Library genLibrary(Context context, String str) {
        String replace = str.replace(HelpFormatter.DEFAULT_OPT_PREFIX, EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        try {
            Library library = new Library();
            HashMap<String, String> customVariables = getCustomVariables(context, replace);
            library.setDefinedName(replace);
            library.setAuthor(getStringResourceByName(context, "library_" + replace + "_author"));
            library.setAuthorWebsite(getStringResourceByName(context, "library_" + replace + "_authorWebsite"));
            library.setLibraryName(getStringResourceByName(context, "library_" + replace + "_libraryName"));
            library.setLibraryDescription(insertVariables(getStringResourceByName(context, "library_" + replace + "_libraryDescription"), customVariables));
            library.setLibraryVersion(getStringResourceByName(context, "library_" + replace + "_libraryVersion"));
            library.setLibraryWebsite(getStringResourceByName(context, "library_" + replace + "_libraryWebsite"));
            String stringResourceByName = getStringResourceByName(context, "library_" + replace + "_licenseId");
            if (TextUtils.isEmpty(stringResourceByName)) {
                License license = new License();
                license.setLicenseName(getStringResourceByName(context, "library_" + replace + "_licenseVersion"));
                license.setLicenseWebsite(getStringResourceByName(context, "library_" + replace + "_licenseLink"));
                license.setLicenseShortDescription(insertVariables(getStringResourceByName(context, "library_" + replace + "_licenseContent"), customVariables));
                library.setLicense(license);
            } else {
                License license2 = getLicense(stringResourceByName);
                if (license2 != null) {
                    License copy = license2.copy();
                    copy.setLicenseShortDescription(insertVariables(copy.getLicenseShortDescription(), customVariables));
                    copy.setLicenseDescription(insertVariables(copy.getLicenseDescription(), customVariables));
                    library.setLicense(copy);
                }
            }
            library.setOpenSource(Boolean.valueOf(getStringResourceByName(context, "library_" + replace + "_isOpenSource")).booleanValue());
            library.setRepositoryLink(getStringResourceByName(context, "library_" + replace + "_repositoryLink"));
            library.setClassPath(getStringResourceByName(context, "library_" + replace + "_classPath"));
            if (TextUtils.isEmpty(library.getLibraryName())) {
                if (TextUtils.isEmpty(library.getLibraryDescription())) {
                    return null;
                }
            }
            return library;
        } catch (Exception e) {
            Log.e("aboutlibraries", "Failed to generateLibrary from file: " + e.toString());
            return null;
        }
    }

    private License genLicense(Context context, String str) {
        String replace = str.replace(HelpFormatter.DEFAULT_OPT_PREFIX, EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        try {
            License license = new License();
            license.setDefinedName(replace);
            license.setLicenseName(getStringResourceByName(context, "license_" + replace + "_licenseName"));
            license.setLicenseWebsite(getStringResourceByName(context, "license_" + replace + "_licenseWebsite"));
            license.setLicenseShortDescription(getStringResourceByName(context, "license_" + replace + "_licenseShortDescription"));
            license.setLicenseDescription(getStringResourceByName(context, "license_" + replace + "_licenseDescription"));
            return license;
        } catch (Exception e) {
            Log.e("aboutlibraries", "Failed to generateLicense from file: " + e.toString());
            return null;
        }
    }

    private void init(Context context, String[] strArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        if (strArr != null) {
            for (String str : strArr) {
                if (str.startsWith(DEFINE_LICENSE)) {
                    arrayList.add(str.replace(DEFINE_LICENSE, ""));
                } else if (str.startsWith(DEFINE_INT)) {
                    arrayList2.add(str.replace(DEFINE_INT, ""));
                } else if (str.startsWith(DEFINE_EXT)) {
                    arrayList3.add(str.replace(DEFINE_EXT, ""));
                }
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            License genLicense = genLicense(context, (String) it.next());
            if (genLicense != null) {
                this.licenses.add(genLicense);
            }
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Library genLibrary = genLibrary(context, (String) it2.next());
            if (genLibrary != null) {
                genLibrary.setInternal(true);
                this.internLibraries.add(genLibrary);
            }
        }
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            Library genLibrary2 = genLibrary(context, (String) it3.next());
            if (genLibrary2 != null) {
                genLibrary2.setInternal(false);
                this.externLibraries.add(genLibrary2);
            }
        }
    }

    public static String[] toStringArray(Field[] fieldArr) {
        ArrayList arrayList = new ArrayList();
        for (Field field : fieldArr) {
            if (field.getName().contains(DEFINE_EXT)) {
                arrayList.add(field.getName());
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public ArrayList<Library> findInExternalLibrary(String str, boolean z, int i) {
        return find(getExternLibraries(), str, z, i);
    }

    public ArrayList<Library> findInInternalLibrary(String str, boolean z, int i) {
        return find(getInternLibraries(), str, z, i);
    }

    public ArrayList<Library> findLibrary(String str, int i) {
        return find(getLibraries(), str, false, i);
    }

    public ArrayList<Library> getAutoDetectedLibraries(Context context) {
        ArrayList<Library> arrayList = new ArrayList<>();
        PackageInfo packageInfo = Util.getPackageInfo(context);
        if (packageInfo != null) {
            String[] split = context.getSharedPreferences("aboutLibraries_" + packageInfo.versionCode, 0).getString("autoDetectedLibraries", "").split(";");
            if (split.length > 0) {
                for (String str : split) {
                    Library library = getLibrary(str);
                    if (library != null) {
                        arrayList.add(library);
                    }
                }
            }
        }
        if (arrayList.size() == 0) {
            String str2 = "";
            String str3 = "";
            for (Library library2 : Detect.detect(context, getLibraries())) {
                arrayList.add(library2);
                str3 = str3 + str2 + library2.getDefinedName();
                str2 = ";";
            }
            if (packageInfo != null) {
                context.getSharedPreferences("aboutLibraries_" + packageInfo.versionCode, 0).edit().putString("autoDetectedLibraries", str3).commit();
            }
        }
        return arrayList;
    }

    public HashMap<String, String> getCustomVariables(Context context, String str) {
        HashMap<String, String> hashMap = new HashMap<>();
        String stringResourceByName = getStringResourceByName(context, DEFINE_EXT + str);
        String str2 = stringResourceByName;
        if (TextUtils.isEmpty(stringResourceByName)) {
            str2 = getStringResourceByName(context, DEFINE_INT + str);
        }
        if (!TextUtils.isEmpty(str2)) {
            String[] split = str2.split(";");
            if (split.length > 0) {
                for (String str3 : split) {
                    String stringResourceByName2 = getStringResourceByName(context, "library_" + str + EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + str3);
                    if (!TextUtils.isEmpty(stringResourceByName2)) {
                        hashMap.put(str3, stringResourceByName2);
                    }
                }
            }
        }
        return hashMap;
    }

    public ArrayList<Library> getExternLibraries() {
        return new ArrayList<>(this.externLibraries);
    }

    public ArrayList<Library> getInternLibraries() {
        return new ArrayList<>(this.internLibraries);
    }

    public ArrayList<Library> getLibraries() {
        ArrayList<Library> arrayList = new ArrayList<>();
        arrayList.addAll(getInternLibraries());
        arrayList.addAll(getExternLibraries());
        return arrayList;
    }

    public Library getLibrary(String str) {
        Iterator<Library> it = getLibraries().iterator();
        while (it.hasNext()) {
            Library next = it.next();
            if (next.getLibraryName().toLowerCase().equals(str.toLowerCase())) {
                return next;
            }
            if (next.getDefinedName().toLowerCase().equals(str.toLowerCase())) {
                return next;
            }
        }
        return null;
    }

    public License getLicense(String str) {
        Iterator<License> it = getLicenses().iterator();
        while (it.hasNext()) {
            License next = it.next();
            if (next.getLicenseName().toLowerCase().equals(str.toLowerCase())) {
                return next;
            }
            if (next.getDefinedName().toLowerCase().equals(str.toLowerCase())) {
                return next;
            }
        }
        return null;
    }

    public ArrayList<License> getLicenses() {
        return new ArrayList<>(this.licenses);
    }

    public String getStringResourceByName(Context context, String str) {
        int identifier = context.getResources().getIdentifier(str, "string", context.getPackageName());
        return identifier == 0 ? "" : context.getString(identifier);
    }

    public String insertVariables(String str, HashMap<String, String> hashMap) {
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            if (!TextUtils.isEmpty(entry.getValue())) {
                str = str.replace("<<<" + entry.getKey().toUpperCase() + ">>>", entry.getValue());
            }
        }
        return str.replace("<<<", "").replace(">>>", "");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003f, code lost:
        if (r0.size() == 0) goto L_0x0042;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void modifyLibraries(java.util.HashMap<java.lang.String, java.util.HashMap<java.lang.String, java.lang.String>> r6) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mikepenz.aboutlibraries.Libs.modifyLibraries(java.util.HashMap):void");
    }

    public ArrayList<Library> prepareLibraries(Context context, String[] strArr, String[] strArr2, boolean z, boolean z2) {
        HashMap hashMap = new HashMap();
        if (z) {
            Iterator<Library> it = getAutoDetectedLibraries(context).iterator();
            while (it.hasNext()) {
                Library next = it.next();
                hashMap.put(next.getDefinedName(), next);
            }
        }
        Iterator<Library> it2 = getExternLibraries().iterator();
        while (it2.hasNext()) {
            Library next2 = it2.next();
            hashMap.put(next2.getDefinedName(), next2);
        }
        if (strArr != null) {
            for (String str : strArr) {
                Library library = getLibrary(str);
                if (library != null) {
                    hashMap.put(library.getDefinedName(), library);
                }
            }
        }
        ArrayList<Library> arrayList = new ArrayList<>(hashMap.values());
        if (strArr2 != null) {
            ArrayList<Library> arrayList2 = new ArrayList();
            for (String str2 : strArr2) {
                Iterator<Library> it3 = arrayList.iterator();
                while (true) {
                    if (it3.hasNext()) {
                        Library next3 = it3.next();
                        if (next3.getDefinedName().equals(str2)) {
                            arrayList2.add(next3);
                            break;
                        }
                    }
                }
            }
            for (Library library2 : arrayList2) {
                arrayList.remove(library2);
            }
        }
        if (z2) {
            Collections.sort(arrayList);
        }
        return arrayList;
    }
}
