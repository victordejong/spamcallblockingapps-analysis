.class public final Le/a/r/b0/i;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/r/b0/h;",
        ">;",
        "Le/a/r/b0/i;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/b0/e/f;

.field public final d:Le/a/r/q/h;

.field public final e:Le/a/b0/l/a;

.field public final f:Le/a/r/c/y;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Le/a/b0/e/f;Le/a/r/q/h;Le/a/b0/l/a;Le/a/r/c/y;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regionUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardTracker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "facebookInitHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardOpenUrlHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/r/b0/i;->b:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/r/b0/i;->c:Le/a/b0/e/f;

    iput-object p3, p0, Le/a/r/b0/i;->d:Le/a/r/q/h;

    iput-object p4, p0, Le/a/r/b0/i;->e:Le/a/b0/l/a;

    iput-object p5, p0, Le/a/r/b0/i;->f:Le/a/r/c/y;

    return-void
.end method


# virtual methods
.method public D(Ljava/lang/String;)V
    .locals 2

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r/b0/i;->d:Le/a/r/q/h;

    invoke-interface {v0, p1}, Le/a/r/q/h;->d(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/r/b0/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/r/b0/i;->f:Le/a/r/c/y;

    invoke-virtual {v1, v0, p1}, Le/a/r/c/y;->a(Ln3/v/b0;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Le/a/r/b0/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/r/b0/i;->b:Le/a/b0/o/a;

    const-string v1, "ppolicy_viewed"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Le/a/r/b0/i;->c:Le/a/b0/e/f;

    invoke-interface {v0}, Le/a/b0/e/f;->f()Lcom/truecaller/common/account/Region;

    move-result-object v0

    .line 6
    invoke-static {v0}, Le/a/n/g0;->N(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 7
    invoke-static {v0}, Le/a/n/g0;->U(Lcom/truecaller/common/account/Region;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 8
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v6, 0x3

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 9
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 10
    new-instance v3, Ls1/k;

    invoke-direct {v3, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_agree_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 12
    new-instance v6, Ls1/k;

    invoke-direct {v6, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_usage_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    .line 14
    new-instance v1, Ls1/k;

    invoke-direct {v1, v0, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_agree_continue_button:I

    goto/16 :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 16
    :cond_1
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    new-instance v3, Ls1/k;

    invoke-direct {v3, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_agree_text_region_br:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    new-instance v6, Ls1/k;

    invoke-direct {v6, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_usage_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    .line 21
    new-instance v1, Ls1/k;

    invoke-direct {v1, v0, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_agree_continue_button:I

    goto/16 :goto_0

    .line 23
    :cond_2
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 24
    new-instance v3, Ls1/k;

    invoke-direct {v3, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_agree_text_region_za:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 26
    new-instance v6, Ls1/k;

    invoke-direct {v6, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_usage_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    .line 28
    new-instance v1, Ls1/k;

    invoke-direct {v1, v0, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_sign_agree_continue_button:I

    goto :goto_0

    .line 30
    :cond_3
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_text_region_c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 31
    new-instance v7, Ls1/k;

    invoke-direct {v7, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_agree_text_region_c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 33
    new-instance v8, Ls1/k;

    invoke-direct {v8, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_usage_text_region_c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/String;

    const-string v6, "https://oag.ca.gov/privacy/ccpa"

    aput-object v6, v4, v5

    aput-object v1, v4, v2

    const-string v1, "https://support.google.com/google-ads/answer/9614122?hl=en"

    aput-object v1, v4, v3

    .line 35
    new-instance v1, Ls1/k;

    invoke-direct {v1, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 36
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_agree_continue_button:I

    move-object v3, v7

    move-object v6, v8

    goto :goto_0

    .line 37
    :cond_4
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 38
    new-instance v3, Ls1/k;

    invoke-direct {v3, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_agree_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 40
    new-instance v6, Ls1/k;

    invoke-direct {v6, v0, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_usage_text:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v5

    .line 42
    new-instance v1, Ls1/k;

    invoke-direct {v1, v0, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 43
    sget v0, Lcom/truecaller/wizard/R$string;->Privacy_agree_continue_button:I

    .line 44
    :goto_0
    invoke-interface {p1, v3, v6, v1}, Le/a/r/b0/h;->z3(Ls1/k;Ls1/k;Ls1/k;)V

    .line 45
    invoke-interface {p1, v0}, Le/a/r/b0/h;->u4(I)V

    return-void
.end method
