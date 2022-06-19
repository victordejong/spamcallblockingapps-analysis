.class public final Le/a/a/k/a/g2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/g2/a;


# instance fields
.field public final a:Le/a/a/k/a/g2/c;


# direct methods
.method public constructor <init>(Le/a/a/k/a/g2/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "stubManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/g2/b;->a:Le/a/a/k/a/g2/c;

    return-void
.end method


# virtual methods
.method public a(DDLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p5, p0, Le/a/a/k/a/g2/b;->a:Le/a/a/k/a/g2/c;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p5, v0, v1, v0}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p5

    check-cast p5, Le/a/t2/a/g/a/b$a;

    if-eqz p5, :cond_1

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request;->newBuilder()Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request$a;

    move-result-object v1

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/previews/v1/models/Location;->newBuilder()Lcom/truecaller/api/services/previews/v1/models/Location$b;

    move-result-object v2

    double-to-float p1, p1

    .line 4
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object p2, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/truecaller/api/services/previews/v1/models/Location;

    invoke-static {p2, p1}, Lcom/truecaller/api/services/previews/v1/models/Location;->access$300(Lcom/truecaller/api/services/previews/v1/models/Location;F)V

    double-to-float p1, p3

    .line 6
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object p2, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/truecaller/api/services/previews/v1/models/Location;

    invoke-static {p2, p1}, Lcom/truecaller/api/services/previews/v1/models/Location;->access$100(Lcom/truecaller/api/services/previews/v1/models/Location;F)V

    .line 8
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/previews/v1/models/Location;

    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object p2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request;

    invoke-static {p2, p1}, Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request;->access$100(Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request;Lcom/truecaller/api/services/previews/v1/models/Location;)V

    .line 11
    sget-object p1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/truecaller/api/services/previews/v1/models/MapStyle;->NIGHT:Lcom/truecaller/api/services/previews/v1/models/MapStyle;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/truecaller/api/services/previews/v1/models/MapStyle;->DAY:Lcom/truecaller/api/services/previews/v1/models/MapStyle;

    .line 12
    :goto_0
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 13
    iget-object p2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p2, Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request;

    invoke-static {p2, p1}, Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request;->access$500(Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request;Lcom/truecaller/api/services/previews/v1/models/MapStyle;)V

    .line 14
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    .line 15
    check-cast p1, Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request;

    .line 16
    :try_start_0
    invoke-virtual {p5, p1}, Le/a/t2/a/g/a/b$a;->c(Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Request;)Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Response;

    move-result-object p1

    const-string p2, "stub.getLocationPreview(request)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/previews/v1/GetLocationPreview$Response;->getLocationPreview()Lcom/truecaller/api/services/previews/v1/models/LocationPreview;

    move-result-object p1

    const-string p2, "stub.getLocationPreview(request).locationPreview"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/previews/v1/models/LocationPreview;->getMapUri()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lp3/a/i1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :catch_2
    :cond_1
    :goto_1
    return-object v0
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/api/services/previews/v1/models/MediaPreview;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/a/a/k/a/g2/b;->a:Le/a/a/k/a/g2/c;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v0}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p2

    check-cast p2, Le/a/t2/a/g/a/b$a;

    if-eqz p2, :cond_0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/previews/v1/GetMediaPreview$Request;->newBuilder()Lcom/truecaller/api/services/previews/v1/GetMediaPreview$Request$a;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 4
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/previews/v1/GetMediaPreview$Request;

    invoke-static {v2, p1}, Lcom/truecaller/api/services/previews/v1/GetMediaPreview$Request;->access$100(Lcom/truecaller/api/services/previews/v1/GetMediaPreview$Request;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/previews/v1/GetMediaPreview$Request;

    .line 6
    :try_start_0
    invoke-virtual {p2, p1}, Le/a/t2/a/g/a/b$a;->d(Lcom/truecaller/api/services/previews/v1/GetMediaPreview$Request;)Lcom/truecaller/api/services/previews/v1/GetMediaPreview$Response;

    move-result-object p1

    const-string p2, "stub.getMediaPreview(request)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/previews/v1/GetMediaPreview$Response;->getMediaPreview()Lcom/truecaller/api/services/previews/v1/models/MediaPreview;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lp3/a/i1; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :catch_2
    :cond_0
    :goto_0
    return-object v0
.end method
