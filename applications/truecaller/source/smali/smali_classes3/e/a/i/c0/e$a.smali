.class public final synthetic Le/a/i/c0/e$a;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c0/e;->Hj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Le/a/i/c0/m;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/c0/e;)V
    .locals 7

    const-class v3, Le/a/i/c0/e;

    const/4 v1, 0x1

    const-string v4, "onSubmitResults"

    const-string v5, "onSubmitResults(Lcom/truecaller/ads/leadgen/LeadgenSubmitState;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Le/a/i/c0/m;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/i/c0/e;

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Le/a/i/c0/e;->c:Le/a/r2/a;

    .line 4
    sget-object v1, Le/a/i/c0/m$d;->c:Le/a/i/c0/m$d;

    invoke-static {p1, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Le/a/i/c0/e;->f:Z

    .line 6
    iget-object p1, v0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->c()Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v1, v0, Le/a/i/c0/e;->k:Le/a/i/c0/b;

    invoke-interface {v1, p1}, Le/a/i/c0/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/i/c0/n;

    if-eqz v1, :cond_3

    .line 8
    sget-object v2, Le/a/i/c0/m$a;->c:Le/a/i/c0/m$a;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object p1, v0, Le/a/i/c0/e;->j:Le/a/p5/c0;

    const v2, 0x7f120328

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    sget-object v2, Le/a/i/c0/m$c;->c:Le/a/i/c0/m$c;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, v0, Le/a/i/c0/e;->j:Le/a/p5/c0;

    const v2, 0x7f12032a

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, v0, Le/a/i/c0/e;->j:Le/a/p5/c0;

    const v2, 0x7f120329

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v2, "when (result) {\n        \u2026eneric)\n                }"

    .line 11
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v1, p1}, Le/a/i/c0/n;->G4(Ljava/lang/String;)V

    .line 13
    :cond_3
    :goto_1
    invoke-virtual {v0}, Le/a/i/c0/e;->Mj()V

    .line 14
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
