package com.privacystar.core.p011ui.report;

import android.content.Context;
import android.support.p001v4.content.ContextCompat;
import android.support.p004v7.widget.AppCompatEditText;
import android.support.p004v7.widget.CardView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.report.GenericReportContract;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0010H\u0016J;\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u00192!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u00110\u0010¢\u0006\f\b\u001c\u0012\b\b\u001d\u0012\u0004\b\b(\u001e\u0012\u0004\u0012\u00020\u00130\u001bH\u0016R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082.¢\u0006\u0002\n��R\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082.¢\u0006\u0002\n��R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0004X\u0082.¢\u0006\u0002\n��R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0004X\u0082.¢\u0006\u0002\n��R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\u001f"}, m254d2 = {"Lcom/privacystar/core/ui/report/ReportScammerEndBuilder;", "Lcom/privacystar/core/ui/report/IReportBuilder;", "()V", "bundle", "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/report/ReportBuilderBundle;", "checkBoxes", "Ljava/util/ArrayList;", "Landroid/widget/CheckBox;", "editText", "Landroid/support/v7/widget/AppCompatEditText;", "submitButton", "Landroid/support/v7/widget/CardView;", "submitNextButton", "Landroid/widget/Button;", "hasNextPage", "", "isAnyChecked", "onActionButton", "", "setButtonEnabled", "enabled", "setupView", "data", "actionButtonOption", "Lcom/privacystar/core/ui/report/GenericReportContract$ButtonDisplayOption;", "onOptionSelectedListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "isReady", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportScammerEndBuilder */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportScammerEndBuilder.class */
public final class ReportScammerEndBuilder implements IReportBuilder {
    public static final ReportScammerEndBuilder INSTANCE = new ReportScammerEndBuilder();
    private static WeakReference<ReportBuilderBundle> bundle;
    private static ArrayList<CheckBox> checkBoxes;
    private static WeakReference<AppCompatEditText> editText;
    private static WeakReference<CardView> submitButton;
    private static WeakReference<Button> submitNextButton;

    private ReportScammerEndBuilder() {
    }

    @NotNull
    public static final /* synthetic */ WeakReference access$getSubmitButton$p(ReportScammerEndBuilder reportScammerEndBuilder) {
        WeakReference<CardView> weakReference = submitButton;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitButton");
        }
        return weakReference;
    }

    @NotNull
    public static final /* synthetic */ WeakReference access$getSubmitNextButton$p(ReportScammerEndBuilder reportScammerEndBuilder) {
        WeakReference<Button> weakReference = submitNextButton;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("submitNextButton");
        }
        return weakReference;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isAnyChecked() {
        boolean z;
        ArrayList<CheckBox> arrayList = checkBoxes;
        if (arrayList == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxes");
        }
        ArrayList<CheckBox> arrayList2 = arrayList;
        if (!(arrayList2 instanceof Collection) || !arrayList2.isEmpty()) {
            Iterator<T> it = arrayList2.iterator();
            while (true) {
                z = false;
                if (it.hasNext()) {
                    if (((CheckBox) it.next()).isChecked()) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
        } else {
            z = false;
        }
        return z;
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public boolean hasNextPage() {
        return false;
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void onActionButton() {
        WeakReference<ReportBuilderBundle> weakReference = bundle;
        if (weakReference == null) {
            Intrinsics.throwUninitializedPropertyAccessException("bundle");
        }
        ReportBuilderBundle reportBuilderBundle = weakReference.get();
        if (reportBuilderBundle != null) {
            HashMap<Integer, String> reportItems = reportBuilderBundle.getReportItems();
            WeakReference<AppCompatEditText> weakReference2 = editText;
            if (weakReference2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("editText");
            }
            AppCompatEditText appCompatEditText = weakReference2.get();
            reportItems.put(43, String.valueOf(appCompatEditText != null ? appCompatEditText.getText() : null));
            ReportFormItemCreators reportFormItemCreators = ReportFormItemCreators.INSTANCE;
            ArrayList<CheckBox> arrayList = checkBoxes;
            if (arrayList == null) {
                Intrinsics.throwUninitializedPropertyAccessException("checkBoxes");
            }
            reportFormItemCreators.determineReportItems(arrayList, reportBuilderBundle.getReportItems(), reportBuilderBundle.getQuestionMap());
            reportBuilderBundle.getListener().onNavigation(GenericReportContract.ReportNavigation.THANK_YOU);
        }
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void setButtonEnabled(boolean z) {
        if (submitButton != null) {
            Context context = null;
            Context context2 = null;
            if (z) {
                WeakReference<CardView> weakReference = submitButton;
                if (weakReference == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("submitButton");
                }
                CardView cardView = weakReference.get();
                if (cardView != null) {
                    WeakReference<ReportBuilderBundle> weakReference2 = bundle;
                    if (weakReference2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("bundle");
                    }
                    ReportBuilderBundle reportBuilderBundle = weakReference2.get();
                    if (reportBuilderBundle != null) {
                        context2 = reportBuilderBundle.getContext();
                    }
                    if (context2 == null) {
                        Intrinsics.throwNpe();
                    }
                    cardView.setCardBackgroundColor(ContextCompat.getColor(context2, C1566R.color.general_button_background_color));
                }
            } else {
                WeakReference<CardView> weakReference3 = submitButton;
                if (weakReference3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("submitButton");
                }
                CardView cardView2 = weakReference3.get();
                if (cardView2 != null) {
                    WeakReference<ReportBuilderBundle> weakReference4 = bundle;
                    if (weakReference4 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("bundle");
                    }
                    ReportBuilderBundle reportBuilderBundle2 = weakReference4.get();
                    if (reportBuilderBundle2 != null) {
                        context = reportBuilderBundle2.getContext();
                    }
                    if (context == null) {
                        Intrinsics.throwNpe();
                    }
                    cardView2.setCardBackgroundColor(ContextCompat.getColor(context, C1566R.color.general_button_background_color_disabled));
                }
            }
            WeakReference<CardView> weakReference5 = submitButton;
            if (weakReference5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("submitButton");
            }
            CardView cardView3 = weakReference5.get();
            if (cardView3 != null) {
                cardView3.setClickable(z);
            }
        } else if (submitNextButton != null) {
            if (z) {
                WeakReference<Button> weakReference6 = submitNextButton;
                if (weakReference6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("submitNextButton");
                }
                Button button = weakReference6.get();
                if (button != null) {
                    button.setBackgroundResource(C1566R.color.general_button_background_color);
                }
            } else {
                WeakReference<Button> weakReference7 = submitNextButton;
                if (weakReference7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("submitNextButton");
                }
                Button button2 = weakReference7.get();
                if (button2 != null) {
                    button2.setBackgroundResource(C1566R.color.general_button_background_color_disabled);
                }
            }
            WeakReference<Button> weakReference8 = submitNextButton;
            if (weakReference8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("submitNextButton");
            }
            Button button3 = weakReference8.get();
            if (button3 != null) {
                button3.setClickable(z);
            }
        }
    }

    @Override // com.privacystar.core.p011ui.report.IReportBuilder
    public void setupView(@NotNull ReportBuilderBundle data, @NotNull GenericReportContract.ButtonDisplayOption actionButtonOption, @NotNull final Function1<? super Boolean, Unit> onOptionSelectedListener) {
        Intrinsics.checkParameterIsNotNull(data, "data");
        Intrinsics.checkParameterIsNotNull(actionButtonOption, "actionButtonOption");
        Intrinsics.checkParameterIsNotNull(onOptionSelectedListener, "onOptionSelectedListener");
        bundle = new WeakReference<>(data);
        ReportFormItemCreators.INSTANCE.addTitle(data.getReportContainer(), C1566R.string.report_please_select_all, data.getContext());
        String[] strArr = {data.getContext().getString(C1566R.string.report_question_36), data.getContext().getString(C1566R.string.report_question_49), data.getContext().getString(C1566R.string.report_question_50), data.getContext().getString(C1566R.string.report_question_51), data.getContext().getString(C1566R.string.report_question_52)};
        ArrayList<CheckBox> arrayList = new ArrayList<>();
        for (String it : strArr) {
            ReportFormItemCreators reportFormItemCreators = ReportFormItemCreators.INSTANCE;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(reportFormItemCreators.addCheckBox(it, data.getContext(), data.getReportContainer(), data.getColorStateList()));
        }
        checkBoxes = arrayList;
        ArrayList<CheckBox> arrayList2 = checkBoxes;
        if (arrayList2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("checkBoxes");
        }
        Iterator<CheckBox> it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            it2.next().setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.privacystar.core.ui.report.ReportScammerEndBuilder$setupView$2
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    boolean isAnyChecked;
                    Function1 function1 = Function1.this;
                    isAnyChecked = ReportScammerEndBuilder.INSTANCE.isAnyChecked();
                    function1.invoke(Boolean.valueOf(isAnyChecked));
                }
            });
        }
        ReportFormItemCreators.INSTANCE.addDivider(data.getContext(), data.getReportContainer(), 20, 0);
        ReportFormItemCreators.INSTANCE.addTitle(data.getReportContainer(), C1566R.string.report_text_field_title, data.getContext());
        ReportFormItemCreators.INSTANCE.addSubtitle(C1566R.string.report_text_field_subtitle, data.getContext(), data.getReportContainer());
        editText = new WeakReference<>(ReportFormItemCreators.addEditText$default(ReportFormItemCreators.INSTANCE, data.getContext(), (int) C1566R.string.report_text_field_hint, data.getReportContainer(), 0, 8, (Object) null));
        if (actionButtonOption == GenericReportContract.ButtonDisplayOption.ACTION_AND_BACK_BUTTON) {
            submitNextButton = new WeakReference<>(ReportFormItemCreators.INSTANCE.addNextBackButton(data.getReportContainer(), data.getContext(), true, ReportScammerEndBuilder$setupView$bt$1.INSTANCE, new ReportScammerEndBuilder$setupView$bt$2(data)));
        } else if (actionButtonOption == GenericReportContract.ButtonDisplayOption.ACTION_BUTTON_ONLY) {
            submitButton = new WeakReference<>(ReportFormItemCreators.INSTANCE.addSubmitButton(data.getReportContainer(), data.getContext(), ReportScammerEndBuilder$setupView$cv$1.INSTANCE));
        }
        ReportFormItemCreators.INSTANCE.addTextView(data.getContext(), C1566R.string.report_final_disclaimer, 12, C1566R.color.ps3_grey_250, data.getReportContainer());
    }
}
