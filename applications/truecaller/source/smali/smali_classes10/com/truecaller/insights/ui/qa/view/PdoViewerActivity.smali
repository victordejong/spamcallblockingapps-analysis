.class public final Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\'B\u0007\u00a2\u0006\u0004\u00088\u0010.J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\u000c\u001a\u00020\u00078B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001d\u0010\u001d\u001a\u00020\u00198B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\t\u001a\u0004\u0008\u001b\u0010\u001cR\"\u0010%\u001a\u00020\u001e8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R(\u0010/\u001a\u00020&8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\'\u0010(\u0012\u0004\u0008-\u0010.\u001a\u0004\u0008)\u0010*\"\u0004\u0008+\u0010,R$\u00107\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00081\u00102\u001a\u0004\u00083\u00104\"\u0004\u00085\u00106\u00a8\u00069"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Le/a/c/a/g/d;",
        "g",
        "Ls1/g;",
        "pa",
        "()Le/a/c/a/g/d;",
        "binding",
        "Le/a/c/t/a;",
        "a",
        "Le/a/c/t/a;",
        "getQaManager",
        "()Le/a/c/t/a;",
        "setQaManager",
        "(Le/a/c/t/a;)V",
        "qaManager",
        "Lq3/a/y;",
        "d",
        "Lq3/a/y;",
        "job",
        "Lq3/a/i0;",
        "e",
        "getCoroutineScope",
        "()Lq3/a/i0;",
        "coroutineScope",
        "Le/a/c/w/o0/g;",
        "b",
        "Le/a/c/w/o0/g;",
        "getSmartSmsFeatureFilter",
        "()Le/a/c/w/o0/g;",
        "setSmartSmsFeatureFilter",
        "(Le/a/c/w/o0/g;)V",
        "smartSmsFeatureFilter",
        "Ls1/w/f;",
        "c",
        "Ls1/w/f;",
        "getUiContext",
        "()Ls1/w/f;",
        "setUiContext",
        "(Ls1/w/f;)V",
        "getUiContext$annotations",
        "()V",
        "uiContext",
        "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
        "f",
        "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
        "getPdo",
        "()Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
        "setPdo",
        "(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)V",
        "pdo",
        "<init>",
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
.field public static final synthetic h:I


# instance fields
.field public a:Le/a/c/t/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/c/w/o0/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final d:Lq3/a/y;

.field public final e:Ls1/g;

.field public f:Lcom/truecaller/insights/models/pdo/ParsedDataObject;

.field public final g:Ls1/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->d:Lq3/a/y;

    .line 3
    new-instance v0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$d;

    invoke-direct {v0, p0}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$d;-><init>(Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->e:Ls1/g;

    .line 4
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$b;

    invoke-direct {v1, p0}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$b;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->g:Ls1/g;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-super/range {p0 .. p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static/range {p0 .. p0}, Le/a/c/p/a;->E2(Landroid/app/Activity;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->pa()Le/a/c/a/g/d;

    move-result-object v1

    const-string v2, "binding"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, v1, Le/a/c/a/g/d;->a:Landroid/widget/ScrollView;

    .line 5
    invoke-virtual {v0, v1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 6
    const-class v1, Le/a/b0/m/b/a;

    const-class v2, Le/a/c/l/a/b;

    const-class v3, Le/a/c/h/k/a;

    const-class v4, Le/a/c/l/a/a;

    .line 7
    sget-object v5, Le/a/c/a/m/a/a$a;->a:Le/a/c/a/m/a/a;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    if-nez v5, :cond_1

    .line 8
    invoke-static/range {p0 .. p0}, Le/a/n/g0;->q(Landroid/content/Context;)Le/a/b0/c;

    move-result-object v13

    const-string v5, "EntryPointAccessors.from\u2026htsComponent::class.java)"

    .line 9
    invoke-static {v4, v5}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Le/a/c/l/a/a;

    .line 10
    new-instance v9, Le/a/c/a/c/e/a;

    invoke-direct {v9}, Le/a/c/a/c/e/a;-><init>()V

    const-string v5, "EntryPointAccessors.from\u2026onsComponent::class.java)"

    .line 11
    invoke-static {v3, v5}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Le/a/c/h/k/a;

    const-string v5, "EntryPointAccessors.from\u2026PayComponent::class.java)"

    .line 12
    invoke-static {v2, v5}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Le/a/c/l/a/b;

    const-string v5, "EntryPointAccessors.from\u2026ntsComponent::class.java)"

    .line 13
    invoke-static {v1, v5}, Le/d/c/a/a;->C1(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/b0/m/b/a;

    .line 14
    new-instance v10, Le/a/c/a/m/a/c;

    invoke-direct {v10}, Le/a/c/a/m/a/c;-><init>()V

    .line 15
    new-instance v11, Le/a/c/a/c/e/d;

    invoke-direct {v11}, Le/a/c/a/c/e/d;-><init>()V

    .line 16
    invoke-static {v12, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 17
    const-class v4, Le/a/b0/c;

    invoke-static {v13, v4}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    invoke-static {v14, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 19
    invoke-static {v15, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 20
    invoke-static {v5, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 21
    new-instance v1, Le/a/c/a/m/a/b;

    const/16 v17, 0x0

    move-object v8, v1

    move-object/from16 v16, v5

    invoke-direct/range {v8 .. v17}, Le/a/c/a/m/a/b;-><init>(Le/a/c/a/c/e/a;Le/a/c/a/m/a/c;Le/a/c/a/c/e/d;Le/a/c/l/a/a;Le/a/b0/c;Le/a/c/h/k/a;Le/a/c/l/a/b;Le/a/b0/m/b/a;Le/a/c/a/m/a/b$a;)V

    const-string v2, "DaggerBusinessInsightsQA\u2026\n                .build()"

    .line 22
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "<set-?>"

    .line 23
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sput-object v1, Le/a/c/a/m/a/a$a;->a:Le/a/c/a/m/a/a;

    .line 25
    :cond_1
    sget-object v1, Le/a/c/a/m/a/a$a;->a:Le/a/c/a/m/a/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 26
    check-cast v1, Le/a/c/a/m/a/b;

    .line 27
    iget-object v3, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->M()Le/a/c/t/a;

    move-result-object v3

    const-string v4, "Cannot return null from a non-@Nullable component method"

    .line 28
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    iput-object v3, v0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->a:Le/a/c/t/a;

    .line 30
    iget-object v3, v1, Le/a/c/a/m/a/b;->d:Le/a/c/l/a/a;

    invoke-interface {v3}, Le/a/c/l/a/a;->j5()Le/a/c/w/o0/g;

    move-result-object v3

    .line 31
    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    iput-object v3, v0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->b:Le/a/c/w/o0/g;

    .line 33
    iget-object v1, v1, Le/a/c/a/m/a/b;->f:Le/a/b0/c;

    invoke-interface {v1}, Le/a/b0/c;->g()Ls1/w/f;

    move-result-object v1

    .line 34
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    iput-object v1, v0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->c:Ls1/w/f;

    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-wide/16 v3, 0x0

    const-string v5, "msg_id"

    invoke-virtual {v1, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v1, v8, v3

    if-nez v1, :cond_2

    goto :goto_1

    .line 37
    :cond_2
    iget-object v1, v0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lq3/a/i0;

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 38
    new-instance v13, Le/a/c/a/m/c/t;

    invoke-direct {v13, v0, v8, v9, v2}, Le/a/c/a/m/c/t;-><init>(Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;JLs1/w/d;)V

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static/range {v10 .. v15}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 39
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->pa()Le/a/c/a/g/d;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/d;->c:Landroid/widget/Button;

    new-instance v2, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;

    invoke-direct {v2, v7, v0}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->pa()Le/a/c/a/g/d;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/d;->d:Landroid/widget/Button;

    new-instance v2, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;

    invoke-direct {v2, v6, v0}, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    const-string v1, "instance"

    .line 41
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final pa()Le/a/c/a/g/d;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/ui/qa/view/PdoViewerActivity;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/d;

    return-object v0
.end method
