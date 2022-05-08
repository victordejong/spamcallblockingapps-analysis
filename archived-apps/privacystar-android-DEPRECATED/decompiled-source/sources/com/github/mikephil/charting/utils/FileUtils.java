package com.github.mikephil.charting.utils;

import android.content.res.AssetManager;
import android.os.Environment;
import android.util.Log;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.data.Entry;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/utils/FileUtils.class */
public class FileUtils {
    private static final String LOG = "MPChart-FileUtils";

    public static List<BarEntry> loadBarEntriesFromAssets(AssetManager assetManager, String str) {
        IOException e;
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader = null;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                try {
                    bufferedReader2 = null;
                    bufferedReader2 = new BufferedReader(new InputStreamReader(assetManager.open(str), "UTF-8"));
                } catch (Throwable th) {
                    th = th;
                }
            } catch (IOException e2) {
                e = e2;
            }
        } catch (IOException e3) {
            Log.e(LOG, e3.toString());
        }
        try {
            for (String readLine = bufferedReader2.readLine(); readLine != null; readLine = bufferedReader2.readLine()) {
                String[] split = readLine.split("#");
                arrayList.add(new BarEntry(Float.parseFloat(split[1]), Float.parseFloat(split[0])));
            }
        } catch (IOException e4) {
            e = e4;
            bufferedReader = bufferedReader2;
            bufferedReader2 = bufferedReader;
            Log.e(LOG, e.toString());
            if (bufferedReader != null) {
                bufferedReader.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedReader2 != null) {
                try {
                    bufferedReader2.close();
                } catch (IOException e5) {
                    Log.e(LOG, e5.toString());
                }
            }
            throw th;
        }
        if (bufferedReader2 != null) {
            bufferedReader2.close();
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static List<Entry> loadEntriesFromAssets(AssetManager assetManager, String str) {
        IOException e;
        BufferedReader bufferedReader;
        ArrayList arrayList = new ArrayList();
        BufferedReader bufferedReader2 = null;
        BufferedReader bufferedReader3 = null;
        try {
            try {
                try {
                    bufferedReader3 = null;
                    bufferedReader3 = new BufferedReader(new InputStreamReader(assetManager.open(str), "UTF-8"));
                } catch (IOException e2) {
                    Log.e(LOG, e2.toString());
                }
            } catch (IOException e3) {
                e = e3;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            String readLine = bufferedReader3.readLine();
            while (readLine != null) {
                String[] split = readLine.split("#");
                if (split.length <= 2) {
                    arrayList.add(new Entry(Float.parseFloat(split[1]), Float.parseFloat(split[0])));
                    bufferedReader = bufferedReader3;
                } else {
                    float[] fArr = new float[split.length - 1];
                    for (int i = 0; i < fArr.length; i++) {
                        fArr[i] = Float.parseFloat(split[i]);
                    }
                    arrayList.add(new BarEntry(Integer.parseInt(split[split.length - 1]), fArr));
                    bufferedReader = fArr;
                }
                readLine = bufferedReader3.readLine();
                bufferedReader3 = bufferedReader;
            }
        } catch (IOException e4) {
            e = e4;
            bufferedReader2 = bufferedReader3;
            bufferedReader3 = bufferedReader2;
            Log.e(LOG, e.toString());
            if (bufferedReader2 != null) {
                bufferedReader2.close();
                bufferedReader3 = bufferedReader3;
            }
            return arrayList;
        } catch (Throwable th2) {
            th = th2;
            if (bufferedReader3 != null) {
                try {
                    bufferedReader3.close();
                } catch (IOException e5) {
                    Log.e(LOG, e5.toString());
                }
            }
            throw th;
        }
        if (bufferedReader3 != null) {
            bufferedReader3.close();
            bufferedReader3 = bufferedReader3;
        }
        return arrayList;
    }

    public static List<Entry> loadEntriesFromFile(String str) {
        File file = new File(Environment.getExternalStorageDirectory(), str);
        ArrayList arrayList = new ArrayList();
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                String[] split = readLine.split("#");
                if (split.length <= 2) {
                    arrayList.add(new Entry(Float.parseFloat(split[0]), Integer.parseInt(split[1])));
                } else {
                    float[] fArr = new float[split.length - 1];
                    for (int i = 0; i < fArr.length; i++) {
                        fArr[i] = Float.parseFloat(split[i]);
                    }
                    arrayList.add(new BarEntry(Integer.parseInt(split[split.length - 1]), fArr));
                }
            }
        } catch (IOException e) {
            Log.e(LOG, e.toString());
        }
        return arrayList;
    }

    public static void saveToSdCard(List<Entry> list, String str) {
        File file = new File(Environment.getExternalStorageDirectory(), str);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                Log.e(LOG, e.toString());
            }
        }
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(file, true));
            for (Entry entry : list) {
                bufferedWriter.append((CharSequence) (entry.getY() + "#" + entry.getX()));
                bufferedWriter.newLine();
            }
            bufferedWriter.close();
        } catch (IOException e2) {
            Log.e(LOG, e2.toString());
        }
    }
}
