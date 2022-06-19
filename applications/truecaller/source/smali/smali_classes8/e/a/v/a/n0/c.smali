.class public final Le/a/v/a/n0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/n0/a;


# instance fields
.field public final a:Le/a/p5/u0/a;

.field public final b:Le/a/p5/u0/a;

.field public final c:Le/a/p5/u0/b;


# direct methods
.method public constructor <init>(Le/a/p5/u0/a;Le/a/p5/u0/a;Le/a/p5/u0/b;)V
    .locals 1
    .param p1    # Le/a/p5/u0/a;
        .annotation runtime Ljavax/inject/Named;
            value = "voip_showcase"
        .end annotation
    .end param
    .param p2    # Le/a/p5/u0/a;
        .annotation runtime Ljavax/inject/Named;
            value = "context_call_showcase"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "voipShowcase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextCallShowcase"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresShowcaseUtilsImpl"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v/a/n0/c;->a:Le/a/p5/u0/a;

    iput-object p2, p0, Le/a/v/a/n0/c;->b:Le/a/p5/u0/a;

    iput-object p3, p0, Le/a/v/a/n0/c;->c:Le/a/p5/u0/b;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/details_view/ui/showcase/DetailsShowcases;Landroid/view/View;Landroid/app/Activity;)Le/a/p5/u0/d;
    .locals 15

    move-object/from16 v0, p3

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    .line 2
    new-instance v1, Le/a/p5/u0/d;

    const/4 v5, 0x2

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 4
    sget v2, Lcom/truecaller/details_view/R$string;->context_call_showcase_title:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v2, "activity.getString(R.str\u2026text_call_showcase_title)"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget v2, Lcom/truecaller/details_view/R$string;->context_call_showcase_message:I

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "activity.getString(R.str\u2026xt_call_showcase_message)"

    invoke-static {v7, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget v11, Lcom/truecaller/details_view/R$color;->tcx_brandBackgroundBlue_light:I

    .line 7
    sget v13, Lcom/truecaller/details_view/R$color;->tcx_backgroundPrimary_light:I

    .line 8
    sget v12, Lcom/truecaller/details_view/R$color;->context_call_transparent:I

    .line 9
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v9, 0x18

    const/16 v10, 0x10

    move-object v3, v1

    move-object/from16 v4, p2

    .line 10
    invoke-direct/range {v3 .. v14}, Le/a/p5/u0/d;-><init>(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 11
    :cond_1
    new-instance v14, Le/a/p5/u0/d;

    const/4 v3, 0x1

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 13
    sget v1, Lcom/truecaller/details_view/R$string;->voip_showcase_title:I

    new-array v4, v2, [Ljava/lang/Object;

    sget v5, Lcom/truecaller/details_view/R$string;->voip_text:I

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "activity.getString(R.str\u2026ring(R.string.voip_text))"

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget v7, Lcom/truecaller/details_view/R$string;->voip_showcase_message:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-virtual {v0, v7, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget v10, Lcom/truecaller/details_view/R$color;->voip_showcase_color:I

    .line 16
    sget v11, Lcom/truecaller/details_view/R$color;->voip_showcase_text_color:I

    const/16 v7, 0x10

    const/16 v8, 0xe

    const/4 v12, 0x0

    const/16 v13, 0x400

    move-object v1, v14

    move-object/from16 v2, p2

    move v9, v10

    .line 17
    invoke-direct/range {v1 .. v13}, Le/a/p5/u0/d;-><init>(Landroid/view/View;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/lang/Integer;I)V

    :goto_0
    return-object v1
.end method
