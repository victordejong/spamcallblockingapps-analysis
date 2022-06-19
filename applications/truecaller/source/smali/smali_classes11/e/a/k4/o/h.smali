.class public final Le/a/k4/o/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k4/o/g;


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/k4/o/j/a/a;

.field public final c:Le/a/k4/o/j/b/a;

.field public final d:Le/a/k4/o/f;

.field public final e:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/k4/o/j/a/a;Le/a/k4/o/j/b/a;Le/a/k4/o/f;Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "nativeGeocoderDS"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleGeocoderDS"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeGeolocationDS"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k4/o/h;->b:Le/a/k4/o/j/a/a;

    iput-object p2, p0, Le/a/k4/o/h;->c:Le/a/k4/o/j/b/a;

    iput-object p3, p0, Le/a/k4/o/h;->d:Le/a/k4/o/f;

    iput-object p4, p0, Le/a/k4/o/h;->e:Le/a/b0/o/a;

    .line 2
    new-instance p1, Le/a/k4/o/h$a;

    invoke-direct {p1, p0}, Le/a/k4/o/h$a;-><init>(Le/a/k4/o/h;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k4/o/h;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(ILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/placepicker/data/GeocodedPlace;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/k4/o/h;->b:Le/a/k4/o/j/a/a;

    .line 2
    iget-object v0, p2, Le/a/k4/o/j/a/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p2, Le/a/k4/o/j/a/a;->b:Landroid/location/Geocoder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0xa

    invoke-virtual {v0, p1, v2}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    const-string v2, "address"

    .line 6
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/location/Address;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 7
    iget-object p1, p2, Le/a/k4/o/j/a/a;->c:Le/a/k4/o/i/a;

    invoke-virtual {p1, v0}, Le/a/k4/o/i/a;->c(Landroid/location/Address;)Lcom/truecaller/placepicker/data/GeocodedPlace;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_2
    return-object v1
.end method

.method public b(DDLs1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/placepicker/data/GeocodedPlace;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    instance-of v2, v1, Le/a/k4/o/h$b;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/k4/o/h$b;

    iget v3, v2, Le/a/k4/o/h$b;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/k4/o/h$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/k4/o/h$b;

    invoke-direct {v2, v0, v1}, Le/a/k4/o/h$b;-><init>(Le/a/k4/o/h;Ls1/w/d;)V

    :goto_0
    move-object v8, v2

    iget-object v1, v8, Le/a/k4/o/h$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v8, Le/a/k4/o/h$b;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-wide v6, v8, Le/a/k4/o/h$b;->i:D

    iget-wide v9, v8, Le/a/k4/o/h$b;->h:D

    iget-object v3, v8, Le/a/k4/o/h$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/k4/o/h;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/k4/o/h;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5
    iget-object v3, v0, Le/a/k4/o/h;->c:Le/a/k4/o/j/b/a;

    iput v7, v8, Le/a/k4/o/h$b;->e:I

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Le/a/k4/o/j/b/a;->a(DDLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_5

    return-object v2

    :cond_5
    :goto_1
    check-cast v1, Lcom/truecaller/placepicker/data/GeocodedPlace;

    goto/16 :goto_7

    .line 6
    :cond_6
    iget-object v1, v0, Le/a/k4/o/h;->b:Le/a/k4/o/j/a/a;

    iput-object v0, v8, Le/a/k4/o/h$b;->g:Ljava/lang/Object;

    move-wide/from16 v14, p1

    iput-wide v14, v8, Le/a/k4/o/h$b;->h:D

    move-wide/from16 v12, p3

    iput-wide v12, v8, Le/a/k4/o/h$b;->i:D

    iput v6, v8, Le/a/k4/o/h$b;->e:I

    .line 7
    iget-object v3, v1, Le/a/k4/o/j/a/a;->a:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    .line 8
    :cond_7
    :try_start_0
    iget-object v9, v1, Le/a/k4/o/j/a/a;->b:Landroid/location/Geocoder;

    const/4 v3, 0x1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move v14, v3

    invoke-virtual/range {v9 .. v14}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 9
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    :cond_9
    :goto_2
    if-nez v7, :cond_a

    .line 10
    iget-object v1, v1, Le/a/k4/o/j/a/a;->c:Le/a/k4/o/i/a;

    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "addressList.first()"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/location/Address;

    invoke-virtual {v1, v3}, Le/a/k4/o/i/a;->c(Landroid/location/Address;)Lcom/truecaller/placepicker/data/GeocodedPlace;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    :cond_a
    :goto_3
    move-object v1, v4

    :goto_4
    if-ne v1, v2, :cond_b

    return-object v2

    :cond_b
    move-wide/from16 v9, p1

    move-wide/from16 v6, p3

    move-object v3, v0

    .line 11
    :goto_5
    check-cast v1, Lcom/truecaller/placepicker/data/GeocodedPlace;

    if-eqz v1, :cond_c

    goto :goto_7

    .line 12
    :cond_c
    iget-object v3, v3, Le/a/k4/o/h;->c:Le/a/k4/o/j/b/a;

    iput-object v4, v8, Le/a/k4/o/h$b;->g:Ljava/lang/Object;

    iput v5, v8, Le/a/k4/o/h$b;->e:I

    move-wide v4, v9

    invoke-virtual/range {v3 .. v8}, Le/a/k4/o/j/b/a;->a(DDLs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v2, :cond_d

    return-object v2

    .line 13
    :cond_d
    :goto_6
    check-cast v1, Lcom/truecaller/placepicker/data/GeocodedPlace;

    :goto_7
    return-object v1
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/k4/o/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k4/o/h;->d:Le/a/k4/o/f;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lq3/a/o;

    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 4
    invoke-virtual {v1}, Lq3/a/o;->z()V

    .line 5
    iget-object v2, v0, Le/a/k4/o/f;->a:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/location/FusedLocationProviderClient;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Le/a/k4/o/e;

    invoke-direct {v3, v1, v0}, Le/a/k4/o/e;-><init>(Lq3/a/n;Le/a/k4/o/f;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 7
    invoke-virtual {v1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    .line 8
    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_0

    const-string v1, "frame"

    .line 9
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/k4/o/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k4/o/h;->d:Le/a/k4/o/f;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/16 v2, 0x64

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->q2(I)Lcom/google/android/gms/location/LocationRequest;

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/location/LocationRequest;->p2(I)Lcom/google/android/gms/location/LocationRequest;

    .line 6
    new-instance v3, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v3}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 7
    iget-object v4, v3, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v4, v0, Le/a/k4/o/f;->b:Lcom/google/android/gms/location/SettingsClient;

    .line 9
    new-instance v5, Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-object v6, v3, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->a:Ljava/util/ArrayList;

    iget-boolean v3, v3, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->b:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZLcom/google/android/gms/location/zzae;)V

    .line 10
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/google/android/gms/location/LocationServices;->d:Lcom/google/android/gms/location/SettingsApi;

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/GoogleApi;->asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/location/SettingsApi;->checkLocationSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-direct {v4}, Lcom/google/android/gms/location/LocationSettingsResponse;-><init>()V

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/PendingResultUtil;->a(Lcom/google/android/gms/common/api/PendingResult;Lcom/google/android/gms/common/api/Response;)Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    const-string v4, "locationServicesSettings\u2026Settings(builder.build())"

    .line 11
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v4, Lq3/a/o;

    invoke-static {p1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 13
    invoke-virtual {v4}, Lq3/a/o;->z()V

    .line 14
    new-instance v2, Le/a/k4/o/c;

    invoke-direct {v2, v4, v0, v3, v1}, Le/a/k4/o/c;-><init>(Lq3/a/n;Le/a/k4/o/f;Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/location/LocationRequest;)V

    check-cast v3, Le/m/a/f/q/b0;

    .line 15
    sget-object v0, Lcom/google/android/gms/tasks/TaskExecutors;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v0, v2}, Le/m/a/f/q/b0;->i(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 16
    new-instance v1, Le/a/k4/o/d;

    invoke-direct {v1, v4}, Le/a/k4/o/d;-><init>(Lq3/a/n;)V

    .line 17
    invoke-virtual {v3, v0, v1}, Le/m/a/f/q/b0;->f(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 18
    invoke-virtual {v4}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v0

    .line 19
    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_0

    const-string v1, "frame"

    .line 20
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
