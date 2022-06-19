.class public final Le/a/k4/j;
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
    c = "com.truecaller.placepicker.PlacePickerPresenter$fetchPlaceFromLatLong$1"
    f = "PlacePickerPresenter.kt"
    l = {
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/k4/i;

.field public final synthetic h:Lcom/google/android/gms/maps/model/LatLng;


# direct methods
.method public constructor <init>(Le/a/k4/i;Lcom/google/android/gms/maps/model/LatLng;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k4/j;->g:Le/a/k4/i;

    iput-object p2, p0, Le/a/k4/j;->h:Lcom/google/android/gms/maps/model/LatLng;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance v0, Le/a/k4/j;

    iget-object v1, p0, Le/a/k4/j;->g:Le/a/k4/i;

    iget-object v2, p0, Le/a/k4/j;->h:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v1, v2, p2}, Le/a/k4/j;-><init>(Le/a/k4/i;Lcom/google/android/gms/maps/model/LatLng;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k4/j;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k4/j;

    iget-object v1, p0, Le/a/k4/j;->g:Le/a/k4/i;

    iget-object v2, p0, Le/a/k4/j;->h:Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, v1, v2, p2}, Le/a/k4/j;-><init>(Le/a/k4/i;Lcom/google/android/gms/maps/model/LatLng;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k4/j;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k4/j;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/k4/j;->f:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Le/a/k4/j;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/i0;

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

    iget-object p1, p0, Le/a/k4/j;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 4
    :try_start_1
    iget-object v2, p0, Le/a/k4/j;->g:Le/a/k4/i;

    .line 5
    iget-object v2, v2, Le/a/k4/i;->i:Ls1/w/f;

    .line 6
    new-instance v5, Le/a/k4/j$a;

    invoke-direct {v5, p0, v4}, Le/a/k4/j$a;-><init>(Le/a/k4/j;Ls1/w/d;)V

    iput-object p1, p0, Le/a/k4/j;->e:Ljava/lang/Object;

    iput v3, p0, Le/a/k4/j;->f:I

    invoke-static {v2, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/placepicker/data/GeocodedPlace;

    if-eqz p1, :cond_5

    .line 8
    iget-object v1, p0, Le/a/k4/j;->g:Le/a/k4/i;

    .line 9
    iget-object v2, v1, Le/a/k4/i;->k:Le/a/k4/o/i/a;

    .line 10
    iget-object v3, v1, Le/a/k4/i;->f:Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 11
    invoke-virtual {v2, p1, v3}, Le/a/k4/o/i/a;->d(Lcom/truecaller/placepicker/data/GeocodedPlace;Lcom/truecaller/placepicker/data/GeocodedPlace;)Lcom/truecaller/placepicker/data/GeocodedPlace;

    move-result-object p1

    .line 12
    iput-object p1, v1, Le/a/k4/i;->e:Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 13
    iget-object p1, p0, Le/a/k4/j;->g:Le/a/k4/i;

    .line 14
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/k4/h;

    if-eqz v1, :cond_4

    .line 15
    iget-object p1, p1, Le/a/k4/i;->e:Lcom/truecaller/placepicker/data/GeocodedPlace;

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p1, Lcom/truecaller/placepicker/data/GeocodedPlace;->b:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 17
    :goto_1
    invoke-interface {v1, p1}, Le/a/k4/h;->G(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_2

    :cond_4
    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_5

    goto :goto_3

    .line 18
    :cond_5
    iget-object p1, p0, Le/a/k4/j;->g:Le/a/k4/i;

    .line 19
    iput-object v4, p1, Le/a/k4/i;->e:Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_6

    .line 21
    sget v1, Lcom/truecaller/placepicker/R$string;->placepicker_error_address_unavailable:I

    invoke-interface {p1, v1}, Le/a/k4/h;->i4(I)V

    .line 22
    :cond_6
    :goto_3
    iget-object p1, p0, Le/a/k4/j;->g:Le/a/k4/i;

    .line 23
    iput-object v4, p1, Le/a/k4/i;->f:Lcom/truecaller/placepicker/data/GeocodedPlace;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 24
    iget-object v1, p0, Le/a/k4/j;->g:Le/a/k4/i;

    .line 25
    iput-object v4, v1, Le/a/k4/i;->e:Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 26
    iput-object v4, v1, Le/a/k4/i;->f:Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 27
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/k4/h;

    if-eqz v1, :cond_7

    .line 28
    sget v2, Lcom/truecaller/placepicker/R$string;->placepicker_error_address_unavailable:I

    invoke-interface {v1, v2}, Le/a/k4/h;->i4(I)V

    .line 29
    :cond_7
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_4

    :catch_1
    move-exception p1

    .line 30
    iget-object v1, p0, Le/a/k4/j;->g:Le/a/k4/i;

    .line 31
    iput-object v4, v1, Le/a/k4/i;->e:Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 32
    iput-object v4, v1, Le/a/k4/i;->f:Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 33
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/k4/h;

    if-eqz v1, :cond_8

    .line 34
    sget v2, Lcom/truecaller/placepicker/R$string;->placepicker_error_network_unavailable:I

    invoke-interface {v1, v2}, Le/a/k4/h;->i4(I)V

    .line 35
    :cond_8
    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    :goto_4
    return-object v0
.end method
