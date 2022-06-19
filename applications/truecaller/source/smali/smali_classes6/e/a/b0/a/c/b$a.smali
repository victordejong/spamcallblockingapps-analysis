.class public final Le/a/b0/a/c/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/c/b;-><init>(Ls1/w/f;Le/a/p5/h0;)V
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

    iput p1, p0, Le/a/b0/a/c/b$a;->b:I

    iput-object p2, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Le/a/b0/a/c/b$a;->b:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v8, :cond_0

    new-array v0, v7, [Ljava/lang/Integer;

    .line 1
    iget-object v7, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v7, Le/a/b0/a/c/b;

    .line 2
    iget-object v7, v7, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 3
    sget v9, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextBlue:I

    invoke-interface {v7, v9}, Le/a/p5/h0;->l(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 4
    iget-object v6, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v6, Le/a/b0/a/c/b;

    .line 5
    iget-object v6, v6, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 6
    sget v7, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextGreen:I

    invoke-interface {v6, v7}, Le/a/p5/h0;->l(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v8

    .line 7
    iget-object v6, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v6, Le/a/b0/a/c/b;

    .line 8
    iget-object v6, v6, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 9
    sget v7, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextViolet:I

    invoke-interface {v6, v7}, Le/a/p5/h0;->l(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 10
    iget-object v5, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v5, Le/a/b0/a/c/b;

    .line 11
    iget-object v5, v5, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 12
    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextPurple:I

    invoke-interface {v5, v6}, Le/a/p5/h0;->l(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 13
    iget-object v4, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v4, Le/a/b0/a/c/b;

    .line 14
    iget-object v4, v4, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 15
    sget v5, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextYellow:I

    invoke-interface {v4, v5}, Le/a/p5/h0;->l(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 16
    iget-object v3, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/c/b;

    .line 17
    iget-object v3, v3, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 18
    sget v4, Lcom/truecaller/common/ui/R$attr;->tcx_avatarTextAqua:I

    invoke-interface {v3, v4}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 19
    iget-object v2, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v2, Le/a/b0/a/c/b;

    .line 20
    iget-object v2, v2, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

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
    iget-object v7, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v7, Le/a/b0/a/c/b;

    .line 24
    iget-object v7, v7, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 25
    sget v9, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundBlue:I

    invoke-interface {v7, v9}, Le/a/p5/h0;->l(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 26
    iget-object v6, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v6, Le/a/b0/a/c/b;

    .line 27
    iget-object v6, v6, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 28
    sget v7, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundGreen:I

    invoke-interface {v6, v7}, Le/a/p5/h0;->l(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v8

    .line 29
    iget-object v6, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v6, Le/a/b0/a/c/b;

    .line 30
    iget-object v6, v6, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 31
    sget v7, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundViolet:I

    invoke-interface {v6, v7}, Le/a/p5/h0;->l(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    .line 32
    iget-object v5, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v5, Le/a/b0/a/c/b;

    .line 33
    iget-object v5, v5, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 34
    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundPurple:I

    invoke-interface {v5, v6}, Le/a/p5/h0;->l(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    .line 35
    iget-object v4, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v4, Le/a/b0/a/c/b;

    .line 36
    iget-object v4, v4, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 37
    sget v5, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundYellow:I

    invoke-interface {v4, v5}, Le/a/p5/h0;->l(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 38
    iget-object v3, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v3, Le/a/b0/a/c/b;

    .line 39
    iget-object v3, v3, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 40
    sget v4, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundAqua:I

    invoke-interface {v3, v4}, Le/a/p5/h0;->l(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 41
    iget-object v2, p0, Le/a/b0/a/c/b$a;->c:Ljava/lang/Object;

    check-cast v2, Le/a/b0/a/c/b;

    .line 42
    iget-object v2, v2, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    .line 43
    sget v3, Lcom/truecaller/common/ui/R$attr;->tcx_avatarBackgroundTeal:I

    invoke-interface {v2, v3}, Le/a/p5/h0;->l(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
