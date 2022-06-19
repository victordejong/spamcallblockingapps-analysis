.class public final Le/a/b/l/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/l/b;->b(DDLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.bizmon.data.BusinessAddressRepositoryImpl$geocodeTarget$2"
    f = "BusinessAddressRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/b/l/b;

.field public final synthetic f:D

.field public final synthetic g:D


# direct methods
.method public constructor <init>(Le/a/b/l/b;DDLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/b/l/b$a;->e:Le/a/b/l/b;

    iput-wide p2, p0, Le/a/b/l/b$a;->f:D

    iput-wide p4, p0, Le/a/b/l/b$a;->g:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/l/b$a;

    iget-object v1, p0, Le/a/b/l/b$a;->e:Le/a/b/l/b;

    iget-wide v2, p0, Le/a/b/l/b$a;->f:D

    iget-wide v4, p0, Le/a/b/l/b$a;->g:D

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/b/l/b$a;-><init>(Le/a/b/l/b;DDLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v6, p2

    check-cast v6, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {v6, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/b/l/b$a;

    iget-object v1, p0, Le/a/b/l/b$a;->e:Le/a/b/l/b;

    iget-wide v2, p0, Le/a/b/l/b$a;->f:D

    iget-wide v4, p0, Le/a/b/l/b$a;->g:D

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Le/a/b/l/b$a;-><init>(Le/a/b/l/b;DDLs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/b/l/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/b/l/b$a;->e:Le/a/b/l/b;

    .line 3
    iget-object v0, p1, Le/a/b/l/b;->b:Landroid/location/Geocoder;

    .line 4
    iget-wide v1, p0, Le/a/b/l/b$a;->f:D

    iget-wide v3, p0, Le/a/b/l/b$a;->g:D

    const/16 v5, 0xa

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 6
    new-instance v1, Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;

    .line 7
    iget-object v3, p0, Le/a/b/l/b$a;->e:Le/a/b/l/b;

    .line 8
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v3

    .line 10
    sget-object v4, Le/a/b/l/d;->b:Le/a/b/l/d;

    invoke-static {v3, v4}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v3

    .line 11
    check-cast v3, Ls1/e0/c0;

    .line 12
    iget-object v4, v3, Ls1/e0/c0;->a:Ls1/e0/k;

    .line 13
    invoke-interface {v4}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 14
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 15
    iget-object v5, v3, Ls1/e0/c0;->b:Ls1/z/b/l;

    .line 16
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 17
    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 18
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move v7, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v7, v2

    :goto_1
    xor-int/2addr v7, v2

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_3
    move-object v5, v0

    .line 19
    :goto_2
    move-object v4, v5

    check-cast v4, Ljava/lang/String;

    .line 20
    iget-object v3, p0, Le/a/b/l/b$a;->e:Le/a/b/l/b;

    .line 21
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v3

    .line 23
    sget-object v5, Le/a/b/l/e;->b:Le/a/b/l/e;

    invoke-static {v3, v5}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v3

    .line 24
    check-cast v3, Ls1/e0/c0;

    .line 25
    iget-object v5, v3, Ls1/e0/c0;->a:Ls1/e0/k;

    .line 26
    invoke-interface {v5}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 27
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 28
    iget-object v7, v3, Ls1/e0/c0;->b:Ls1/z/b/l;

    .line 29
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 30
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 31
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    move v8, v6

    goto :goto_4

    :cond_6
    :goto_3
    move v8, v2

    :goto_4
    xor-int/2addr v8, v2

    if-eqz v8, :cond_4

    goto :goto_5

    :cond_7
    move-object v7, v0

    .line 32
    :goto_5
    move-object v5, v7

    check-cast v5, Ljava/lang/String;

    .line 33
    iget-object v3, p0, Le/a/b/l/b$a;->e:Le/a/b/l/b;

    .line 34
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v3

    .line 36
    sget-object v7, Le/a/b/l/c;->b:Le/a/b/l/c;

    invoke-static {v3, v7}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v3

    .line 37
    check-cast v3, Ls1/e0/c0;

    .line 38
    iget-object v7, v3, Ls1/e0/c0;->a:Ls1/e0/k;

    .line 39
    invoke-interface {v7}, Ls1/e0/k;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 40
    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 41
    iget-object v8, v3, Ls1/e0/c0;->b:Ls1/z/b/l;

    .line 42
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 43
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 44
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_9

    goto :goto_6

    :cond_9
    move v9, v6

    goto :goto_7

    :cond_a
    :goto_6
    move v9, v2

    :goto_7
    xor-int/2addr v9, v2

    if-eqz v9, :cond_8

    goto :goto_8

    :cond_b
    move-object v8, v0

    .line 45
    :goto_8
    move-object v6, v8

    check-cast v6, Ljava/lang/String;

    .line 46
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "addresses.first()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "Locale.ENGLISH"

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    move-object v7, v0

    .line 47
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/location/Address;

    invoke-virtual {v0}, Landroid/location/Address;->getLatitude()D

    move-result-wide v8

    .line 48
    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/location/Address;

    invoke-virtual {p1}, Landroid/location/Address;->getLongitude()D

    move-result-wide v10

    move-object v3, v1

    .line 49
    invoke-direct/range {v3 .. v11}, Lcom/truecaller/bizmon/ui/address/GeocodedBusinessAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)V

    move-object v0, v1

    :cond_d
    return-object v0
.end method
