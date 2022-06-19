.class public final Le/a/b0/a/b/a$c;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "[",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/b0/a/b/a$c;->b:I

    iput-object p2, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Le/a/b0/a/b/a$c;->b:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v8, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v5, :cond_1

    if-ne v0, v4, :cond_0

    new-array v0, v3, [Ljava/lang/Integer;

    .line 1
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 2
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 3
    sget v9, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextBlue:I

    invoke-interface {v3, v9}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    .line 4
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 5
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 6
    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextGreen:I

    invoke-interface {v3, v6}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    .line 7
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 8
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 9
    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextViolet:I

    invoke-interface {v3, v6}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    .line 10
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 11
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 12
    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextPurple:I

    invoke-interface {v3, v6}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    .line 13
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 14
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 15
    sget v5, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextYellow:I

    invoke-interface {v3, v5}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    .line 16
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 17
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 18
    sget v4, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextAqua:I

    invoke-interface {v3, v4}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 19
    iget-object v2, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/b0/a/b/a;

    .line 20
    iget-object v2, v2, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 21
    sget v3, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextTeal:I

    invoke-interface {v2, v3}, Le/a/p5/h0;->l(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 22
    throw v0

    :cond_1
    new-array v0, v7, [Ljava/lang/Integer;

    .line 23
    iget-object v1, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/b/a;

    .line 24
    iget-object v1, v1, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 25
    sget v2, Lcom/truecaller/common/ui/R$color;->tcx_premiumGradientStart_all:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 26
    iget-object v1, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/b/a;

    .line 27
    iget-object v1, v1, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 28
    sget v2, Lcom/truecaller/common/ui/R$color;->tcx_premiumGradientEnd_all:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    return-object v0

    :cond_2
    new-array v0, v4, [Ljava/lang/Integer;

    .line 29
    iget-object v1, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/b/a;

    .line 30
    iget-object v1, v1, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 31
    sget v2, Lcom/truecaller/common/ui/R$color;->tcx_goldGradientStep1:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 32
    iget-object v1, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/b/a;

    .line 33
    iget-object v1, v1, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 34
    sget v2, Lcom/truecaller/common/ui/R$color;->tcx_goldGradientStep2:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    .line 35
    iget-object v1, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/b/a;

    .line 36
    iget-object v1, v1, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 37
    sget v2, Lcom/truecaller/common/ui/R$color;->tcx_goldGradientStep4:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v7

    .line 38
    iget-object v1, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/b/a;

    .line 39
    iget-object v1, v1, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 40
    sget v2, Lcom/truecaller/common/ui/R$color;->tcx_goldGradientStep5:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    return-object v0

    :cond_3
    new-array v0, v7, [Ljava/lang/Integer;

    .line 41
    iget-object v1, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/b/a;

    .line 42
    iget-object v1, v1, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 43
    sget v2, Lcom/truecaller/common/ui/R$color;->shadeCredGradient1:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    .line 44
    iget-object v1, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v1, Le/a/b0/a/b/a;

    .line 45
    iget-object v1, v1, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 46
    sget v2, Lcom/truecaller/common/ui/R$color;->shadeCredGradient2:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    return-object v0

    :cond_4
    new-array v0, v3, [Ljava/lang/Integer;

    .line 47
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 48
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 49
    sget v9, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundBlue:I

    invoke-interface {v3, v9}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    .line 50
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 51
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 52
    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundGreen:I

    invoke-interface {v3, v6}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v8

    .line 53
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 54
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 55
    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundViolet:I

    invoke-interface {v3, v6}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v7

    .line 56
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 57
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 58
    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundPurple:I

    invoke-interface {v3, v6}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    .line 59
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 60
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 61
    sget v5, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundYellow:I

    invoke-interface {v3, v5}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    .line 62
    iget-object v3, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/b/a;

    .line 63
    iget-object v3, v3, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 64
    sget v4, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundAqua:I

    invoke-interface {v3, v4}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 65
    iget-object v2, p0, Le/a/b0/a/b/a$c;->c:Ljava/lang/Object;

    check-cast v2, Le/a/b0/a/b/a;

    .line 66
    iget-object v2, v2, Le/a/b0/a/b/a;->U:Le/a/p5/h0;

    .line 67
    sget v3, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundTeal:I

    invoke-interface {v2, v3}, Le/a/p5/h0;->l(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
