.class public final synthetic Le/a/i/c0/e$b;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c0/e;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/ads/leadgen/dto/LeadgenDto;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/c0/e;)V
    .locals 7

    const-class v3, Le/a/i/c0/e;

    const/4 v1, 0x1

    const-string v4, "onLeadgenResult"

    const-string v5, "onLeadgenResult(Lcom/truecaller/ads/leadgen/dto/LeadgenDto;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/i/c0/e;

    .line 3
    iput-object p1, v0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Le/a/i/c0/e;->b:Le/a/r2/a;

    if-nez p1, :cond_0

    .line 5
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/i/c0/n;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Le/a/i/c0/n;->finish()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->d()Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/i/c0/n;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;->d()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;->f()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;->a()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenTheme;->c()Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-interface {v1, v2, v3, v4, p1}, Le/a/i/c0/n;->D4(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    invoke-virtual {v0}, Le/a/i/c0/e;->Mj()V

    .line 15
    iget-object p1, v0, Le/a/i/c0/e;->d:Lcom/truecaller/ads/leadgen/dto/LeadgenDto;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenDto;->c()Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenPixel;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, v0, Le/a/i/c0/e;->k:Le/a/i/c0/b;

    invoke-interface {v0, p1}, Le/a/i/c0/b;->a(Ljava/lang/String;)V

    .line 16
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
