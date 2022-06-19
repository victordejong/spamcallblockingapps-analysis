.class public final Le/a/c/a/h/a;
.super Le/a/c/a/h/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/h/a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001(B\u0007\u00a2\u0006\u0004\u0008%\u0010&J-\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\"\u0010\u001c\u001a\u00020\u00158\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\"\u0010$\u001a\u00020\u001d8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#\u00a8\u0006)"
    }
    d2 = {
        "Le/a/c/a/h/a;",
        "Le/m/a/g/e/e;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Le/a/c/a/g/i;",
        "g",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "QA",
        "()Le/a/c/a/g/i;",
        "binding",
        "Le/a/c/e/c;",
        "f",
        "Le/a/c/e/c;",
        "getInsightsAnalyticsManager",
        "()Le/a/c/e/c;",
        "setInsightsAnalyticsManager",
        "(Le/a/c/e/c;)V",
        "insightsAnalyticsManager",
        "Le/a/c/c0/o;",
        "e",
        "Le/a/c/c0/o;",
        "getInsightConfig",
        "()Le/a/c/c0/o;",
        "setInsightConfig",
        "(Le/a/c/c0/o;)V",
        "insightConfig",
        "<init>",
        "()V",
        "j",
        "b",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic h:[Ls1/a/l;

.field public static final i:Ljava/lang/String;

.field public static final j:Le/a/c/a/h/a$b;


# instance fields
.field public e:Le/a/c/c0/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/c/e/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final g:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/c/a/h/a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetAutoHideTransactionsBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/c/a/h/a;->h:[Ls1/a/l;

    new-instance v0, Le/a/c/a/h/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/c/a/h/a$b;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/c/a/h/a;->j:Le/a/c/a/h/a$b;

    .line 1
    const-class v0, Le/a/c/a/h/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoHideTransactionsDialog::class.java.simpleName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Le/a/c/a/h/a;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/c/a/h/f;-><init>()V

    .line 2
    sget-object v0, Lcom/truecaller/insights/utils/FeedbackConsentState;->NOT_STARTED:Lcom/truecaller/insights/utils/FeedbackConsentState;

    .line 3
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/c/a/h/a$a;

    invoke-direct {v1}, Le/a/c/a/h/a$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/c/a/h/a;->g:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    return-void
.end method


# virtual methods
.method public final QA()Le/a/c/a/g/i;
    .locals 3

    iget-object v0, p0, Le/a/c/a/h/a;->g:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/c/a/h/a;->h:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/i;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 2
    sget p3, Lcom/truecaller/insights/ui/R$layout;->bottomsheet_auto_hide_transactions:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object v1, v0, Le/a/c/a/h/a;->f:Le/a/c/e/c;

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    const-string v10, ""

    .line 3
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "feature"

    .line 4
    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventCategory"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventInfo"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionType"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "actionInfo"

    invoke-static {v10, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "propertyMap"

    invoke-static {v15, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "hide_transactions"

    const-string v4, "<set-?>"

    .line 5
    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "auto_hide_bottom_sheet"

    .line 6
    invoke-static {v6, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "view"

    .line 7
    invoke-static {v9, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "insights_smart_feed"

    .line 8
    invoke-static {v8, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 10
    new-instance v3, Le/a/c/r/d/b;

    .line 11
    new-instance v14, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1c0

    const/16 v18, 0x0

    move-object v4, v14

    move-object v7, v10

    move-object v2, v14

    move/from16 v14, v16

    move-object/from16 v19, v15

    move/from16 v15, v17

    move-object/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Date;ZILs1/z/c/f;)V

    .line 12
    invoke-static/range {v19 .. v19}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 13
    invoke-direct {v3, v2, v4}, Le/a/c/r/d/b;-><init>(Lcom/truecaller/insights/models/analytics/SimpleAnalyticsModel;Ljava/util/Map;)V

    .line 14
    invoke-interface {v1, v3}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 15
    iget-object v1, v0, Le/a/c/a/h/a;->e:Le/a/c/c0/o;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Le/a/c/c0/o;->k0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual/range {p0 .. p0}, Le/a/c/a/h/a;->QA()Le/a/c/a/g/i;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/i;->b:Landroid/widget/RadioGroup;

    sget v2, Lcom/truecaller/insights/ui/R$id;->autoHideYes:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual/range {p0 .. p0}, Le/a/c/a/h/a;->QA()Le/a/c/a/g/i;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/i;->b:Landroid/widget/RadioGroup;

    sget v2, Lcom/truecaller/insights/ui/R$id;->autoHideNo:I

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 18
    :goto_1
    invoke-virtual/range {p0 .. p0}, Le/a/c/a/h/a;->QA()Le/a/c/a/g/i;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/i;->a:Landroid/widget/Button;

    new-instance v2, Le/a/c/a/h/a$c;

    invoke-direct {v2, v0}, Le/a/c/a/h/a$c;-><init>(Le/a/c/a/h/a;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    const-string v1, "insightConfig"

    .line 19
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 20
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Failed requirement."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v1, 0x0

    const-string v2, "insightsAnalyticsManager"

    .line 21
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
