.class public final Le/a/b/a/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/a/f/f;


# instance fields
.field public final a:Le/a/b/a/f/h;


# direct methods
.method public constructor <init>(Le/a/b/a/f/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "geolocationStubManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b/a/f/g;->a:Le/a/b/a/f/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/truecaller/placepicker/data/GeocodedPlace;
    .locals 12

    const-string v0, "pincode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/geolocation/v1/GeoLocationRequest;->newBuilder()Lcom/truecaller/api/services/geolocation/v1/GeoLocationRequest$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 3
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/geolocation/v1/GeoLocationRequest;

    invoke-static {v1, p1}, Lcom/truecaller/api/services/geolocation/v1/GeoLocationRequest;->access$100(Lcom/truecaller/api/services/geolocation/v1/GeoLocationRequest;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    .line 5
    check-cast p1, Lcom/truecaller/api/services/geolocation/v1/GeoLocationRequest;

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iget-object v1, p0, Le/a/b/a/f/g;->a:Le/a/b/a/f/h;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/d/a/b$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Le/a/t2/a/d/a/b$a;->c(Lcom/truecaller/api/services/geolocation/v1/GeoLocationRequest;)Lcom/truecaller/api/services/geolocation/v1/GeoLocationResponse;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    new-instance v11, Lcom/truecaller/placepicker/data/GeocodedPlace;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/truecaller/api/services/geolocation/v1/GeoLocationResponse;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/truecaller/api/services/geolocation/v1/GeoLocationResponse;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/api/services/geolocation/v1/GeoLocationResponse;->getCity()Ljava/lang/String;

    move-result-object v8

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/api/services/geolocation/v1/GeoLocationResponse;->getState()Ljava/lang/String;

    move-result-object v7

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/api/services/geolocation/v1/GeoLocationResponse;->getPincode()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1e

    move-object v1, v11

    .line 12
    invoke-direct/range {v1 .. v10}, Lcom/truecaller/placepicker/data/GeocodedPlace;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lp3/a/i1; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v11

    :catch_0
    :goto_1
    return-object v0
.end method
