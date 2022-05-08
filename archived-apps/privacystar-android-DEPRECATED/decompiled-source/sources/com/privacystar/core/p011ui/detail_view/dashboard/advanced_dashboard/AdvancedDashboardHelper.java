package com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.p001v4.content.ContextCompat;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.AxisBase;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.YAxis;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;
import com.github.mikephil.charting.formatter.IAxisValueFormatter;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��V\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001:\u0002\"#B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u001e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\bJ\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\t\u001a\u00020\u0004J\u001c\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eJ$\u0010\u0015\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u000eJ\u000e\u0010\u0017\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004J\u0016\u0010\u0018\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u0019\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\bJ\u001c\u0010\u001a\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\b0\u000eJ&\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020!¨\u0006$"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper;", "", "()V", "createDashboardData", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardFragment$DashboardData;", "realm", "Lio/realm/Realm;", "getCategoryBlocksInMonth", "", "dashboardData", "monthYear", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;", "categoryId", "getEntriesFromDashboardData", "", "Lcom/github/mikephil/charting/data/Entry;", "getLineChartData", "Lcom/github/mikephil/charting/data/LineData;", "context", "Landroid/content/Context;", "entries", "getOtherBlocksInMonth", "excludedIDs", "getTotalBlocks", "getTotalBlocksInMonth", "getTotalCategoryBlocks", "getTotalOtherBlocks", "setupLineChartView", "", "chart", "Lcom/github/mikephil/charting/charts/LineChart;", "lastEntry", "yAxisMax", "", "MonthYear", "YAxisValueFormatter", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper.class */
public final class AdvancedDashboardHelper {
    public static final AdvancedDashboardHelper INSTANCE = new AdvancedDashboardHelper();

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018��2\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\u0018\u0010\u0013\u001a\u00020��2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0086\u0002¢\u0006\u0002\u0010\u0015J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0019"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;", "", "month", "Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear$Month;", "year", "", "(Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear$Month;I)V", "getMonth", "()Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear$Month;", "setMonth", "(Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear$Month;)V", "getYear", "()I", "setYear", "(I)V", "equals", "", "other", "hashCode", "plus", "operand", "(Ljava/lang/Integer;)Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear;", "toString", "", "Month", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardHelper$MonthYear */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear.class */
    public static final class MonthYear {
        @NotNull
        private Month month;
        private int year;

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u000e\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear$Month;", "", "(Ljava/lang/String;I)V", "JANUARY", "FEBRUARY", "MARCH", "APRIL", "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER", "NOVEMBER", "DECEMBER", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardHelper$MonthYear$Month */
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$MonthYear$Month.class */
        public enum Month {
            JANUARY,
            FEBRUARY,
            MARCH,
            APRIL,
            MAY,
            JUNE,
            JULY,
            AUGUST,
            SEPTEMBER,
            OCTOBER,
            NOVEMBER,
            DECEMBER
        }

        public MonthYear(@NotNull Month month, int i) {
            Intrinsics.checkParameterIsNotNull(month, "month");
            this.month = month;
            this.year = i;
        }

        public boolean equals(@Nullable Object obj) {
            Timber.m37d("MonthYear#equals this=" + this + ", other=" + obj, new Object[0]);
            if (!(obj instanceof MonthYear)) {
                return super.equals(obj);
            }
            MonthYear monthYear = (MonthYear) obj;
            boolean z = false;
            if (this.month == monthYear.month) {
                z = false;
                if (this.year == monthYear.year) {
                    z = true;
                }
            }
            return z;
        }

        @NotNull
        public final Month getMonth() {
            return this.month;
        }

        public final int getYear() {
            return this.year;
        }

        public int hashCode() {
            return (this.month.hashCode() * 31) + this.year;
        }

        @NotNull
        public final MonthYear plus(@Nullable Integer num) {
            Timber.m37d("MonthYear#plus entering -> MonthYear=" + this + ", operand=" + num, new Object[0]);
            Month month = this.month;
            int i = this.year;
            if (num == null) {
                return new MonthYear(month, i);
            }
            int intValue = num.intValue();
            Month month2 = month;
            int i2 = i;
            if (1 <= intValue) {
                int i3 = 1;
                Month month3 = month;
                while (true) {
                    if (month3 == Month.DECEMBER) {
                        month3 = Month.JANUARY;
                        i++;
                    } else {
                        month3 = Month.values()[month3.ordinal() + 1];
                    }
                    month2 = month3;
                    i2 = i;
                    if (i3 == intValue) {
                        break;
                    }
                    i3++;
                }
            }
            Timber.m37d("MonthYear#plus leaving -> MonthYear=" + this, new Object[0]);
            return new MonthYear(month2, i2);
        }

        public final void setMonth(@NotNull Month month) {
            Intrinsics.checkParameterIsNotNull(month, "<set-?>");
            this.month = month;
        }

        public final void setYear(int i) {
            this.year = i;
        }

        @NotNull
        public String toString() {
            return this.month.name() + ' ' + this.year;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$YAxisValueFormatter;", "Lcom/github/mikephil/charting/formatter/IAxisValueFormatter;", "maxVal", "", "(F)V", "maxValue", "getFormattedValue", "", FirebaseAnalytics.Param.VALUE, "axis", "Lcom/github/mikephil/charting/components/AxisBase;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardHelper$YAxisValueFormatter */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/dashboard/advanced_dashboard/AdvancedDashboardHelper$YAxisValueFormatter.class */
    public static final class YAxisValueFormatter implements IAxisValueFormatter {
        private final float maxValue;

        public YAxisValueFormatter(float f) {
            this.maxValue = f;
        }

        @Override // com.github.mikephil.charting.formatter.IAxisValueFormatter
        @NotNull
        public String getFormattedValue(float f, @NotNull AxisBase axis) {
            Intrinsics.checkParameterIsNotNull(axis, "axis");
            float f2 = this.maxValue / 2;
            Timber.m37d("max:" + this.maxValue + ", mid:" + f2 + ", val: " + f, new Object[0]);
            return (f == this.maxValue || f == f2) ? String.valueOf((int) f) : "";
        }
    }

    private AdvancedDashboardHelper() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment.DashboardData createDashboardData(@org.jetbrains.annotations.NotNull io.realm.Realm r9) {
        /*
            Method dump skipped, instructions count: 381
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardHelper.createDashboardData(io.realm.Realm):com.privacystar.core.ui.detail_view.dashboard.advanced_dashboard.AdvancedDashboardFragment$DashboardData");
    }

    public final int getCategoryBlocksInMonth(@NotNull AdvancedDashboardFragment.DashboardData dashboardData, @NotNull MonthYear monthYear, int i) {
        Intrinsics.checkParameterIsNotNull(dashboardData, "dashboardData");
        Intrinsics.checkParameterIsNotNull(monthYear, "monthYear");
        return SequencesKt.count(SequencesKt.filter(CollectionsKt.asSequence(dashboardData.getData()), new AdvancedDashboardHelper$getCategoryBlocksInMonth$1(monthYear, i)));
    }

    @NotNull
    public final List<Entry> getEntriesFromDashboardData(@NotNull AdvancedDashboardFragment.DashboardData dashboardData) {
        Intrinsics.checkParameterIsNotNull(dashboardData, "dashboardData");
        ArrayList arrayList = new ArrayList(6);
        MonthYear first = dashboardData.getData().get(0).getFirst();
        int i = 0;
        for (Pair<MonthYear, Integer> pair : dashboardData.getData()) {
            if (Intrinsics.areEqual(pair.getFirst(), first)) {
                i++;
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("Adding to entries -> (");
                sb.append(arrayList.size());
                sb.append(", ");
                float f = i;
                sb.append(f);
                sb.append(')');
                Timber.m37d(sb.toString(), new Object[0]);
                arrayList.add(new Entry(arrayList.size(), f));
                first = pair.getFirst();
                i = 1;
            }
        }
        if (i != 0) {
            arrayList.add(new Entry(arrayList.size(), i));
        }
        if (arrayList.size() > 7) {
            arrayList.add(new Entry(arrayList.size(), ((Entry) CollectionsKt.last((List<? extends Object>) arrayList)).getY()));
        }
        return arrayList;
    }

    @NotNull
    public final LineData getLineChartData(@NotNull Context context, @NotNull List<? extends Entry> entries) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(entries, "entries");
        Drawable drawable = ContextCompat.getDrawable(context, C1566R.C1568drawable.fade_blue);
        LineDataSet lineDataSet = new LineDataSet(entries, "Blocked Calls");
        lineDataSet.setColor(ContextCompat.getColor(context, C1566R.color.ps3_white));
        lineDataSet.setCircleColor(ContextCompat.getColor(context, C1566R.color.ps3_white));
        lineDataSet.setCircleColorHole(ContextCompat.getColor(context, C1566R.color.ps3_blue_400));
        lineDataSet.setDrawCircleHole(true);
        lineDataSet.setCircleRadius(6.0f);
        lineDataSet.setDrawFilled(true);
        lineDataSet.setDrawValues(false);
        lineDataSet.setLineWidth(3.0f);
        lineDataSet.setHighLightColor(ContextCompat.getColor(context, C1566R.color.ps3_white));
        lineDataSet.setDrawHighlightIndicators(false);
        lineDataSet.setFillDrawable(drawable);
        return new LineData(lineDataSet);
    }

    public final int getOtherBlocksInMonth(@NotNull AdvancedDashboardFragment.DashboardData dashboardData, @NotNull MonthYear monthYear, @NotNull List<Integer> excludedIDs) {
        Intrinsics.checkParameterIsNotNull(dashboardData, "dashboardData");
        Intrinsics.checkParameterIsNotNull(monthYear, "monthYear");
        Intrinsics.checkParameterIsNotNull(excludedIDs, "excludedIDs");
        return SequencesKt.count(SequencesKt.filter(CollectionsKt.asSequence(dashboardData.getData()), new AdvancedDashboardHelper$getOtherBlocksInMonth$1(monthYear, excludedIDs)));
    }

    public final int getTotalBlocks(@NotNull AdvancedDashboardFragment.DashboardData dashboardData) {
        Intrinsics.checkParameterIsNotNull(dashboardData, "dashboardData");
        return dashboardData.getData().size();
    }

    public final int getTotalBlocksInMonth(@NotNull AdvancedDashboardFragment.DashboardData dashboardData, @NotNull MonthYear monthYear) {
        Intrinsics.checkParameterIsNotNull(dashboardData, "dashboardData");
        Intrinsics.checkParameterIsNotNull(monthYear, "monthYear");
        return SequencesKt.count(SequencesKt.filter(CollectionsKt.asSequence(dashboardData.getData()), new AdvancedDashboardHelper$getTotalBlocksInMonth$1(monthYear)));
    }

    public final int getTotalCategoryBlocks(@NotNull AdvancedDashboardFragment.DashboardData dashboardData, int i) {
        Intrinsics.checkParameterIsNotNull(dashboardData, "dashboardData");
        return SequencesKt.count(SequencesKt.filter(CollectionsKt.asSequence(dashboardData.getData()), new AdvancedDashboardHelper$getTotalCategoryBlocks$1(i)));
    }

    public final int getTotalOtherBlocks(@NotNull AdvancedDashboardFragment.DashboardData dashboardData, @NotNull List<Integer> excludedIDs) {
        Intrinsics.checkParameterIsNotNull(dashboardData, "dashboardData");
        Intrinsics.checkParameterIsNotNull(excludedIDs, "excludedIDs");
        return SequencesKt.count(SequencesKt.filter(CollectionsKt.asSequence(dashboardData.getData()), new AdvancedDashboardHelper$getTotalOtherBlocks$1(excludedIDs)));
    }

    public final void setupLineChartView(@NotNull Context context, @NotNull LineChart chart, int i, float f) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(chart, "chart");
        CustomMarkerView customMarkerView = new CustomMarkerView(context, C1566R.C1571layout.custom_marker_view, i);
        chart.setMarker(customMarkerView);
        chart.setViewPortOffsets(0.0f, 0.0f, 0.0f, 0.0f);
        YAxis axisRight = chart.getAxisRight();
        Intrinsics.checkExpressionValueIsNotNull(axisRight, "axisRight");
        axisRight.setEnabled(false);
        YAxis axisRight2 = chart.getAxisRight();
        Intrinsics.checkExpressionValueIsNotNull(axisRight2, "axisRight");
        axisRight2.setAxisMaximum(0.0f);
        YAxis axisLeft = chart.getAxisLeft();
        Intrinsics.checkExpressionValueIsNotNull(axisLeft, "axisLeft");
        axisLeft.setEnabled(false);
        YAxis axisLeft2 = chart.getAxisLeft();
        Intrinsics.checkExpressionValueIsNotNull(axisLeft2, "axisLeft");
        axisLeft2.setTextColor(ContextCompat.getColor(context, C1566R.color.ps3_white));
        YAxis axisLeft3 = chart.getAxisLeft();
        Intrinsics.checkExpressionValueIsNotNull(axisLeft3, "axisLeft");
        axisLeft3.setAxisLineColor(ContextCompat.getColor(context, C1566R.color.ps3_blue_600));
        chart.getAxisLeft().setDrawGridLines(false);
        YAxis axisLeft4 = chart.getAxisLeft();
        Intrinsics.checkExpressionValueIsNotNull(axisLeft4, "axisLeft");
        axisLeft4.setAxisMaximum(0.0f);
        chart.getAxisLeft().mAxisMaximum = f;
        chart.getXAxis().setDrawAxisLine(false);
        chart.getXAxis().setDrawGridLines(false);
        chart.setDrawBorders(false);
        chart.setDrawGridBackground(false);
        Description description = chart.getDescription();
        Intrinsics.checkExpressionValueIsNotNull(description, "description");
        description.setEnabled(false);
        chart.setVisibleXRangeMaximum(7.0f);
        chart.setTouchEnabled(true);
        chart.setDragEnabled(true);
        chart.setScaleEnabled(false);
        chart.setPinchZoom(false);
        Legend legend = chart.getLegend();
        Intrinsics.checkExpressionValueIsNotNull(legend, "legend");
        legend.setEnabled(false);
        chart.setVisibleXRange(7.0f, 7.0f);
        chart.setVisibleYRange(0.0f, f, YAxis.AxisDependency.LEFT);
        customMarkerView.setChartView(chart);
    }
}
