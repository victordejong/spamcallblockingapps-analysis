.class public final Le/a/k4/o/j/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Le/a/k4/o/j/b/b;

.field public final c:Le/a/k4/o/i/a;

.field public final d:Le/a/b0/o/a;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/k4/o/j/b/b;Le/a/k4/o/i/a;Le/a/b0/o/a;Le/a/p5/c0;Le/a/u3/g;)V
    .locals 1
    .param p5    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "placesApi"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placesMapper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k4/o/j/b/a;->b:Le/a/k4/o/j/b/b;

    iput-object p2, p0, Le/a/k4/o/j/b/a;->c:Le/a/k4/o/i/a;

    iput-object p3, p0, Le/a/k4/o/j/b/a;->d:Le/a/b0/o/a;

    iput-object p4, p0, Le/a/k4/o/j/b/a;->e:Le/a/p5/c0;

    iput-object p5, p0, Le/a/k4/o/j/b/a;->f:Le/a/u3/g;

    .line 2
    new-instance p1, Le/a/k4/o/j/b/a$a;

    invoke-direct {p1, p0}, Le/a/k4/o/j/b/a$a;-><init>(Le/a/k4/o/j/b/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k4/o/j/b/a;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(DDLs1/w/d;)Ljava/lang/Object;
    .locals 24
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

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    instance-of v6, v5, Le/a/k4/o/j/b/a$b;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Le/a/k4/o/j/b/a$b;

    iget v7, v6, Le/a/k4/o/j/b/a$b;->e:I

    const/high16 v8, -0x80000000

    and-int v9, v7, v8

    if-eqz v9, :cond_0

    sub-int/2addr v7, v8

    iput v7, v6, Le/a/k4/o/j/b/a$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v6, Le/a/k4/o/j/b/a$b;

    invoke-direct {v6, v0, v5}, Le/a/k4/o/j/b/a$b;-><init>(Le/a/k4/o/j/b/a;Ls1/w/d;)V

    :goto_0
    iget-object v5, v6, Le/a/k4/o/j/b/a$b;->d:Ljava/lang/Object;

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v8, v6, Le/a/k4/o/j/b/a$b;->e:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v8, :cond_2

    if-ne v8, v11, :cond_1

    iget-wide v1, v6, Le/a/k4/o/j/b/a$b;->i:D

    iget-wide v3, v6, Le/a/k4/o/j/b/a$b;->h:D

    iget-object v6, v6, Le/a/k4/o/j/b/a$b;->g:Ljava/lang/Object;

    check-cast v6, Le/a/k4/o/j/b/a;

    invoke-static {v5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide/from16 v22, v1

    move-wide v1, v3

    move-wide/from16 v3, v22

    goto :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v5, v0, Le/a/k4/o/j/b/a;->a:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    return-object v10

    .line 5
    :cond_3
    iget-object v5, v0, Le/a/k4/o/j/b/a;->d:Le/a/b0/o/a;

    const-string v8, "forceTestApiKeys"

    invoke-interface {v5, v8}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6
    iget-object v5, v0, Le/a/k4/o/j/b/a;->e:Le/a/p5/c0;

    sget v8, Lcom/truecaller/placepicker/R$string;->google_api_debug_key:I

    new-array v12, v9, [Ljava/lang/Object;

    invoke-interface {v5, v8, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 7
    :cond_4
    sget-object v5, Le/a/k4/c;->a:Ljava/lang/String;

    :goto_1
    const-string v8, "if (coreSettings.getBool\u2026se PlacePicker.currApiKey"

    .line 8
    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v8, v0, Le/a/k4/o/j/b/a;->b:Le/a/k4/o/j/b/b;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v13, 0x2c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v0, v6, Le/a/k4/o/j/b/a$b;->g:Ljava/lang/Object;

    iput-wide v1, v6, Le/a/k4/o/j/b/a$b;->h:D

    iput-wide v3, v6, Le/a/k4/o/j/b/a$b;->i:D

    iput v11, v6, Le/a/k4/o/j/b/a$b;->e:I

    invoke-interface {v8, v12, v5, v6}, Le/a/k4/o/j/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v7, :cond_5

    return-object v7

    :cond_5
    move-object v6, v0

    .line 10
    :goto_2
    check-cast v5, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodingResult;

    .line 11
    invoke-virtual {v5}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodingResult;->getStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v12, 0x9dc

    if-eq v8, v12, :cond_6

    goto/16 :goto_8

    :cond_6
    const-string v8, "OK"

    .line 12
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v6, v6, Le/a/k4/o/j/b/a;->c:Le/a/k4/o/i/a;

    .line 13
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "result"

    invoke-static {v5, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v5}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodingResult;->getResults()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    move v7, v9

    goto :goto_4

    :cond_8
    :goto_3
    move v7, v11

    :goto_4
    if-nez v7, :cond_e

    .line 15
    invoke-virtual {v5}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodingResult;->getResults()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;

    invoke-virtual {v7}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;->getFormatted_address()Ljava/lang/String;

    move-result-object v14

    .line 16
    new-instance v10, Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 17
    invoke-virtual {v5}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodingResult;->getResults()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;

    invoke-virtual {v7}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;->getAddress_components()Ljava/util/List;

    move-result-object v7

    .line 18
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_9

    move v9, v11

    :cond_9
    if-eqz v9, :cond_d

    .line 19
    invoke-static {v14}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "sublocality_level_2"

    .line 20
    invoke-virtual {v6, v7, v9}, Le/a/k4/o/i/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, ""

    const-string v12, "address"

    if-nez v9, :cond_b

    const-string v9, "sublocality_level_3"

    .line 21
    invoke-virtual {v6, v7, v9}, Le/a/k4/o/i/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_b

    const-string v9, "route"

    .line 22
    invoke-virtual {v6, v7, v9}, Le/a/k4/o/i/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    goto :goto_5

    :cond_a
    const-string v9, "administrative_area_level_1"

    .line 23
    invoke-virtual {v6, v7, v9}, Le/a/k4/o/i/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 24
    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v6, v8, v7, v9, v11}, Le/a/k4/o/i/a;->e(Ljava/lang/StringBuilder;IILjava/lang/String;)Z

    goto :goto_6

    :cond_b
    :goto_5
    const-string v9, "locality"

    .line 25
    invoke-virtual {v6, v7, v9}, Le/a/k4/o/i/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 26
    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v6, v8, v7, v9, v11}, Le/a/k4/o/i/a;->e(Ljava/lang/StringBuilder;IILjava/lang/String;)Z

    .line 27
    :cond_c
    :goto_6
    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Ls1/f0/h;

    const-string v9, "[ ]*,$"

    invoke-direct {v8, v9}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7, v11}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    goto :goto_7

    :cond_d
    move-object v13, v14

    .line 28
    :goto_7
    invoke-virtual {v5}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodingResult;->getResults()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;

    invoke-virtual {v7}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;->getPlace_id()Ljava/lang/String;

    move-result-object v15

    .line 29
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 30
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 31
    invoke-virtual {v5}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodingResult;->getResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;

    invoke-virtual {v1}, Lcom/truecaller/placepicker/data/sources/remote/ReverseGeocodedPlace;->getAddress_components()Ljava/util/List;

    move-result-object v1

    const-string v2, "postal_code"

    invoke-virtual {v6, v1, v2}, Le/a/k4/o/i/a;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x60

    move-object v12, v10

    .line 32
    invoke-direct/range {v12 .. v21}, Lcom/truecaller/placepicker/data/GeocodedPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_e
    :goto_8
    return-object v10
.end method
