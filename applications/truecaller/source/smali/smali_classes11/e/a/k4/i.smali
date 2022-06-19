.class public final Le/a/k4/i;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/k4/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/k4/h;",
        ">;",
        "Le/a/k4/g;"
    }
.end annotation


# instance fields
.field public final d:Ljava/text/DecimalFormat;

.field public e:Lcom/truecaller/placepicker/data/GeocodedPlace;

.field public f:Lcom/truecaller/placepicker/data/GeocodedPlace;

.field public g:I

.field public final h:Ls1/w/f;

.field public final i:Ls1/w/f;

.field public final j:Le/a/k4/o/g;

.field public final k:Le/a/k4/o/i/a;

.field public final l:Le/a/h5/y;

.field public final m:Le/a/h5/w;

.field public final n:Le/a/k4/n/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/k4/o/g;Le/a/k4/o/i/a;Le/a/h5/y;Le/a/h5/w;Le/a/k4/n/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placesRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeMapper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsView"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsLogger"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/k4/i;->h:Ls1/w/f;

    iput-object p2, p0, Le/a/k4/i;->i:Ls1/w/f;

    iput-object p3, p0, Le/a/k4/i;->j:Le/a/k4/o/g;

    iput-object p4, p0, Le/a/k4/i;->k:Le/a/k4/o/i/a;

    iput-object p5, p0, Le/a/k4/i;->l:Le/a/h5/y;

    iput-object p6, p0, Le/a/k4/i;->m:Le/a/h5/w;

    iput-object p7, p0, Le/a/k4/i;->n:Le/a/k4/n/a;

    .line 2
    new-instance p1, Ljava/text/DecimalFormat;

    const-string p2, "#.######"

    invoke-direct {p1, p2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le/a/k4/i;->d:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public final Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/k4/i$a;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/k4/i$a;

    iget v2, v1, Le/a/k4/i$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k4/i$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k4/i$a;

    invoke-direct {v1, p0, p1}, Le/a/k4/i$a;-><init>(Le/a/k4/i;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/k4/i$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/k4/i$a;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v1, v1, Le/a/k4/i$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/k4/i;

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ResolvableApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_3

    invoke-interface {p1, v5}, Le/a/k4/h;->t2(Z)V

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/k4/i;->i:Ls1/w/f;

    new-instance v3, Le/a/k4/i$b;

    invoke-direct {v3, p0, v4}, Le/a/k4/i$b;-><init>(Le/a/k4/i;Ls1/w/d;)V

    iput-object p0, v1, Le/a/k4/i$a;->g:Ljava/lang/Object;

    iput v5, v1, Le/a/k4/i$a;->e:I

    invoke-static {p1, v3, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Lcom/google/android/gms/common/api/ResolvableApiException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, p0

    .line 6
    :goto_1
    :try_start_2
    check-cast p1, Le/a/k4/o/a;

    if-eqz p1, :cond_6

    .line 7
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/k4/h;

    if-eqz v2, :cond_5

    .line 8
    iget-wide v3, p1, Le/a/k4/o/a;->a:D

    .line 9
    iget-wide v7, p1, Le/a/k4/o/a;->b:D

    .line 10
    invoke-interface {v2, v3, v4, v7, v8}, Le/a/k4/h;->S3(DD)V

    move-object v4, v0

    :cond_5
    if-eqz v4, :cond_6

    goto :goto_2

    .line 11
    :cond_6
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Le/a/k4/h;->Z6()V
    :try_end_2
    .catch Lcom/google/android/gms/common/api/ResolvableApiException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :cond_7
    :goto_2
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_a

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v1, p0

    goto :goto_5

    :catch_1
    move-object v1, p0

    .line 13
    :catch_2
    :try_start_3
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/k4/h;->Z6()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :cond_8
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_a

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v1, p0

    .line 15
    :goto_3
    :try_start_4
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/k4/h;

    if-eqz v2, :cond_9

    invoke-interface {v2, p1}, Le/a/k4/h;->j7(Lcom/google/android/gms/common/api/ResolvableApiException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    :cond_9
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_a

    :goto_4
    invoke-interface {p1, v6}, Le/a/k4/h;->t2(Z)V

    :cond_a
    return-object v0

    :goto_5
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k4/h;

    if-eqz v0, :cond_b

    invoke-interface {v0, v6}, Le/a/k4/h;->t2(Z)V

    :cond_b
    throw p1
.end method

.method public final Jj(Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p1, Le/a/k4/i$c;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/k4/i$c;

    iget v2, v1, Le/a/k4/i$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/k4/i$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/k4/i$c;

    invoke-direct {v1, p0, p1}, Le/a/k4/i$c;-><init>(Le/a/k4/i;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/k4/i$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/k4/i$c;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v3, v1, Le/a/k4/i$c;->g:Ljava/lang/Object;

    check-cast v3, Le/a/k4/i;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k4/i;->i:Ls1/w/f;

    new-instance v3, Le/a/k4/i$d;

    invoke-direct {v3, p0, v6}, Le/a/k4/i$d;-><init>(Le/a/k4/i;Ls1/w/d;)V

    iput-object p0, v1, Le/a/k4/i$c;->g:Ljava/lang/Object;

    iput v5, v1, Le/a/k4/i$c;->e:I

    invoke-static {p1, v3, v1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v3, p0

    .line 5
    :goto_1
    check-cast p1, Le/a/k4/o/a;

    if-eqz p1, :cond_6

    .line 6
    iget-object v5, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v5, Le/a/k4/h;

    if-eqz v5, :cond_5

    .line 7
    iget-wide v7, p1, Le/a/k4/o/a;->a:D

    .line 8
    iget-wide v9, p1, Le/a/k4/o/a;->b:D

    .line 9
    invoke-interface {v5, v7, v8, v9, v10}, Le/a/k4/h;->S3(DD)V

    move-object p1, v0

    goto :goto_2

    :cond_5
    move-object p1, v6

    :goto_2
    if-eqz p1, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    iput-object v6, v1, Le/a/k4/i$c;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/k4/i$c;->e:I

    invoke-virtual {v3, v1}, Le/a/k4/i;->Ij(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_7

    return-object v2

    :cond_7
    :goto_3
    return-object v0
.end method

.method public final Kj(Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k4/i$e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k4/i$e;

    iget v1, v0, Le/a/k4/i$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k4/i$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k4/i$e;

    invoke-direct {v0, p0, p1}, Le/a/k4/i$e;-><init>(Le/a/k4/i;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k4/i$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k4/i$e;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Le/a/k4/i$e;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k4/i;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k4/i;->m:Le/a/h5/w;

    invoke-interface {p1}, Le/a/h5/w;->d()Z

    move-result p1

    if-nez p1, :cond_7

    .line 5
    iget-object p1, p0, Le/a/k4/i;->l:Le/a/h5/y;

    .line 6
    new-instance v2, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    const/4 v4, 0x5

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v3, v4}, Lcom/truecaller/tcpermissions/PermissionRequestOptions;-><init>(ZZLjava/lang/Integer;I)V

    .line 7
    iget-object v4, p0, Le/a/k4/i;->m:Le/a/h5/w;

    invoke-interface {v4}, Le/a/h5/w;->o()[Ljava/lang/String;

    move-result-object v4

    array-length v7, v4

    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object p0, v0, Le/a/k4/i$e;->g:Ljava/lang/Object;

    iput v6, v0, Le/a/k4/i$e;->e:I

    .line 8
    invoke-interface {p1, v2, v4, v0}, Le/a/h5/y;->b(Lcom/truecaller/tcpermissions/PermissionRequestOptions;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 9
    :goto_2
    check-cast p1, Le/a/h5/l;

    .line 10
    iget-boolean p1, p1, Le/a/h5/l;->a:Z

    if-eqz p1, :cond_6

    .line 11
    iput-object v3, v0, Le/a/k4/i$e;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/k4/i$e;->e:I

    invoke-virtual {v2, v0}, Le/a/k4/i;->Jj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 12
    :cond_6
    iget-object p1, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k4/h;

    if-eqz p1, :cond_8

    invoke-interface {p1}, Le/a/k4/h;->D1()V

    goto :goto_3

    .line 13
    :cond_7
    iput v4, v0, Le/a/k4/i$e;->e:I

    invoke-virtual {p0, v0}, Le/a/k4/i;->Jj(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    return-object v1

    .line 14
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public Lj(Lcom/google/android/libraries/places/api/model/Place;)V
    .locals 12

    const-string v0, "googlePlace"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/k4/i;->k:Le/a/k4/o/i/a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/4 v3, 0x0

    if-nez v2, :cond_a

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/AddressComponents;->asList()Ljava/util/List;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    const-string v5, "sublocality_level_2"

    invoke-virtual {v1, v4, v5}, Le/a/k4/o/i/a;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "address"

    if-nez v4, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/AddressComponents;->asList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v3

    :goto_3
    const-string v7, "sublocality_level_3"

    invoke-virtual {v1, v4, v7}, Le/a/k4/o/i/a;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    .line 9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/AddressComponents;->asList()Ljava/util/List;

    move-result-object v4

    goto :goto_4

    :cond_4
    move-object v4, v3

    :goto_4
    const-string v7, "route"

    invoke-virtual {v1, v4, v7}, Le/a/k4/o/i/a;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_6

    .line 10
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/AddressComponents;->asList()Ljava/util/List;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v3

    :goto_5
    const-string v7, "administrative_area_level_1"

    invoke-virtual {v1, v4, v7}, Le/a/k4/o/i/a;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 11
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v4, v7, v5}, Le/a/k4/o/i/a;->e(Ljava/lang/StringBuilder;IILjava/lang/String;)Z

    goto :goto_8

    .line 12
    :cond_7
    :goto_6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/AddressComponents;->asList()Ljava/util/List;

    move-result-object v4

    goto :goto_7

    :cond_8
    move-object v4, v3

    :goto_7
    const-string v7, "locality"

    invoke-virtual {v1, v4, v7}, Le/a/k4/o/i/a;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 13
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v1, v2, v4, v7, v5}, Le/a/k4/o/i/a;->e(Ljava/lang/StringBuilder;IILjava/lang/String;)Z

    .line 14
    :cond_9
    :goto_8
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ls1/f0/h;

    const-string v4, "[ ]*,$"

    invoke-direct {v2, v4}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v5}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 15
    :cond_a
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 16
    :goto_9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getId()Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_b

    iget-wide v6, v2, Lcom/google/android/gms/maps/model/LatLng;->a:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v6, v2

    goto :goto_a

    :cond_b
    move-object v6, v3

    .line 19
    :goto_a
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v7, v2

    goto :goto_b

    :cond_c
    move-object v7, v3

    :goto_b
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe0

    move-object v2, v0

    move-object v3, v1

    .line 20
    invoke-direct/range {v2 .. v11}, Lcom/truecaller/placepicker/data/GeocodedPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 21
    iput-object v0, p0, Le/a/k4/i;->f:Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 22
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k4/h;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/k4/h;->G(Ljava/lang/String;)V

    .line 23
    :cond_d
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k4/h;

    if-eqz v0, :cond_10

    .line 24
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_e

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->a:D

    goto :goto_c

    :cond_e
    move-wide v4, v2

    .line 25
    :goto_c
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 26
    :cond_f
    invoke-interface {v0, v4, v5, v2, v3}, Le/a/k4/h;->S3(DD)V

    :cond_10
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/k4/h;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/k4/i;->n:Le/a/k4/n/a;

    sget-object v0, Le/a/k4/n/f$c;->a:Le/a/k4/n/f$c;

    invoke-interface {p1, v0}, Le/a/k4/n/a;->a(Le/a/k4/n/f;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    .line 2
    iget-object v0, p0, Le/a/k4/i;->n:Le/a/k4/n/a;

    new-instance v1, Le/a/k4/n/f$b;

    iget v2, p0, Le/a/k4/i;->g:I

    invoke-direct {v1, v2}, Le/a/k4/n/f$b;-><init>(I)V

    invoke-interface {v0, v1}, Le/a/k4/n/a;->a(Le/a/k4/n/f;)V

    return-void
.end method
