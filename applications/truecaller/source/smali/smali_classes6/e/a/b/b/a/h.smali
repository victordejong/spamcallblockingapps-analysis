.class public final Le/a/b/b/a/h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.ui.address.BusinessAddressGeolocationPresenter$onGeocodeTarget$1"
    f = "BusinessAddressGeolocationPresenter.kt"
    l = {
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/b/b/a/i;

.field public final synthetic h:D

.field public final synthetic i:D


# direct methods
.method public constructor <init>(Le/a/b/b/a/i;DDLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/a/h;->g:Le/a/b/b/a/i;

    iput-wide p2, p0, Le/a/b/b/a/h;->h:D

    iput-wide p4, p0, Le/a/b/b/a/h;->i:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/b/b/a/h;

    iget-object v2, p0, Le/a/b/b/a/h;->g:Le/a/b/b/a/i;

    iget-wide v3, p0, Le/a/b/b/a/h;->h:D

    iget-wide v5, p0, Le/a/b/b/a/h;->i:D

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Le/a/b/b/a/h;-><init>(Le/a/b/b/a/i;DDLs1/w/d;)V

    iput-object p1, v0, Le/a/b/b/a/h;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/b/b/a/h;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/b/b/a/h;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/b/a/h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/b/b/a/h;->f:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/b/b/a/h;->e:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/b/b/a/h;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    :try_start_1
    iget-object v1, p0, Le/a/b/b/a/h;->g:Le/a/b/b/a/i;

    .line 5
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/b/a/g;

    if-eqz v1, :cond_2

    .line 6
    invoke-interface {v1}, Le/a/b/b/a/g;->a0()V

    .line 7
    :cond_2
    iget-object v1, p0, Le/a/b/b/a/h;->g:Le/a/b/b/a/i;

    .line 8
    iget-object v4, v1, Le/a/b/b/a/i;->f:Le/a/b/l/a;

    .line 9
    iget-wide v5, p0, Le/a/b/b/a/h;->h:D

    iget-wide v7, p0, Le/a/b/b/a/h;->i:D

    iput-object p1, p0, Le/a/b/b/a/h;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/b/b/a/h;->f:I

    move-object v9, p0

    invoke-interface/range {v4 .. v9}, Le/a/b/l/a;->b(DDLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;

    if-eqz p1, :cond_4

    .line 10
    iget-object v0, p0, Le/a/b/b/a/h;->g:Le/a/b/b/a/i;

    invoke-static {v0, p1}, Le/a/b/b/a/i;->Ij(Le/a/b/b/a/i;Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;)V

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Le/a/b/b/a/h;->g:Le/a/b/b/a/i;

    .line 12
    iput-object v3, p1, Le/a/b/b/a/i;->e:Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;

    .line 13
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/a/g;

    if-eqz p1, :cond_5

    .line 14
    sget v0, Lcom/truecaller/bizmon/R$string;->BusinessProfile_GeocodeErrorNoResult:I

    invoke-interface {p1, v0}, Le/a/b/b/a/g;->Eo(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 15
    :catch_0
    iget-object p1, p0, Le/a/b/b/a/h;->g:Le/a/b/b/a/i;

    .line 16
    iput-object v3, p1, Le/a/b/b/a/i;->e:Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;

    .line 17
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/a/g;

    if-eqz p1, :cond_5

    .line 18
    sget v0, Lcom/truecaller/bizmon/R$string;->BusinessProfile_GeocodeErrorBadPosition:I

    invoke-interface {p1, v0}, Le/a/b/b/a/g;->Eo(I)V

    goto :goto_1

    .line 19
    :catch_1
    iget-object p1, p0, Le/a/b/b/a/h;->g:Le/a/b/b/a/i;

    .line 20
    iput-object v3, p1, Le/a/b/b/a/i;->e:Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;

    .line 21
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/a/g;

    if-eqz p1, :cond_5

    .line 22
    sget v0, Lcom/truecaller/bizmon/R$string;->BusinessProfile_GeocodeErrorNetwork:I

    invoke-interface {p1, v0}, Le/a/b/b/a/g;->Eo(I)V

    .line 23
    :cond_5
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
