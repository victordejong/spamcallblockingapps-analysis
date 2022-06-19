.class public final Le/a/k/c/m1;
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
        "Le/a/k/c/q0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.VideoCallerIdStubManagerImpl$getUploadLinks$2"
    f = "VideoCallerIdStubManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k/c/n1;

.field public final synthetic f:Le/a/k/c/r1;


# direct methods
.method public constructor <init>(Le/a/k/c/n1;Le/a/k/c/r1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/m1;->e:Le/a/k/c/n1;

    iput-object p2, p0, Le/a/k/c/m1;->f:Le/a/k/c/r1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/k/c/m1;

    iget-object v0, p0, Le/a/k/c/m1;->e:Le/a/k/c/n1;

    iget-object v1, p0, Le/a/k/c/m1;->f:Le/a/k/c/r1;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/m1;-><init>(Le/a/k/c/n1;Le/a/k/c/r1;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/m1;

    iget-object v0, p0, Le/a/k/c/m1;->e:Le/a/k/c/n1;

    iget-object v1, p0, Le/a/k/c/m1;->f:Le/a/k/c/r1;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/m1;-><init>(Le/a/k/c/n1;Le/a/k/c/r1;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/k/c/m1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/k/c/m1;->e:Le/a/k/c/n1;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/j/a/b$a;

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request;->newBuilder()Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request$a;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/k/c/m1;->f:Le/a/k/c/r1;

    .line 5
    iget-object v1, v1, Le/a/k/c/r1;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 7
    iget-object v2, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request;

    invoke-static {v2, v1}, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request;->access$300(Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Le/a/k/c/m1;->f:Le/a/k/c/r1;

    .line 9
    iget-wide v1, v1, Le/a/k/c/r1;->c:J

    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 11
    iget-object v3, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request;

    invoke-static {v3, v1, v2}, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request;->access$100(Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request;J)V

    .line 12
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 13
    check-cast v0, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request;

    .line 14
    invoke-virtual {p1, v0}, Le/a/t2/a/j/a/b$a;->c(Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Request;)Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Response;

    move-result-object p1

    .line 15
    new-instance v0, Le/a/k/c/q0$b;

    .line 16
    new-instance v1, Le/a/k/c/p0;

    const-string v2, "result"

    .line 17
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Response;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "result.id"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Response;->getUploadUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "result.uploadUrl"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Response;->getDownloadUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "result.downloadUrl"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Lcom/truecaller/api/services/videocallerid/v1/GetUploadLinks$Response;->getFormFieldsMap()Ljava/util/Map;

    move-result-object p1

    const-string v5, "result.formFieldsMap"

    invoke-static {p1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {v1, v2, v3, v4, p1}, Le/a/k/c/p0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    invoke-direct {v0, v1}, Le/a/k/c/q0$b;-><init>(Le/a/k/c/p0;)V

    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Le/a/k/c/q0$a;

    .line 24
    invoke-direct {p1, v1}, Le/a/k/c/q0$a;-><init>(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Le/a/k/c/q0$a;

    invoke-direct {v0, p1}, Le/a/k/c/q0$a;-><init>(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 26
    new-instance v0, Le/a/k/c/q0$a;

    invoke-direct {v0, p1}, Le/a/k/c/q0$a;-><init>(Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method
