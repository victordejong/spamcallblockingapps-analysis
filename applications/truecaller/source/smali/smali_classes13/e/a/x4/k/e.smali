.class public final Le/a/x4/k/e;
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
        "Le/a/x4/k/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.searchwarnings.supernova.SupernovaSettingRepositoryImpl$setStatus$2"
    f = "SupernovaSettingRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/x4/k/f;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Le/a/x4/k/f;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/x4/k/e;->e:Le/a/x4/k/f;

    iput-boolean p2, p0, Le/a/x4/k/e;->f:Z

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

    new-instance p1, Le/a/x4/k/e;

    iget-object v0, p0, Le/a/x4/k/e;->e:Le/a/x4/k/f;

    iget-boolean v1, p0, Le/a/x4/k/e;->f:Z

    invoke-direct {p1, v0, v1, p2}, Le/a/x4/k/e;-><init>(Le/a/x4/k/f;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/x4/k/e;->e:Le/a/x4/k/f;

    iget-boolean v0, p0, Le/a/x4/k/e;->f:Z

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    iget-object p1, p1, Le/a/x4/k/f;->a:Le/a/x4/j/c/c;

    const/4 p2, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v1}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/h/a/g$a;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 7
    sget-object p2, Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;->OPTED_IN:Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;->OPTED_OUT:Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;

    .line 8
    :goto_0
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;->newBuilder()Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest$b;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 10
    iget-object v1, v0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;

    invoke-static {v1, p2}, Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;->access$200(Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;

    .line 12
    invoke-virtual {p1, p2}, Le/a/t2/a/h/a/g$a;->d(Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;)Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutResponse;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "supernova set = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    sget-object p1, Le/a/x4/k/b$c;->a:Le/a/x4/k/b$c;

    goto :goto_1

    .line 15
    :cond_1
    sget-object p1, Le/a/x4/k/b$a;->a:Le/a/x4/k/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 16
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    new-instance p2, Le/a/x4/k/b$b;

    invoke-direct {p2, p1}, Le/a/x4/k/b$b;-><init>(Ljava/lang/Exception;)V

    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/x4/k/e;->e:Le/a/x4/k/f;

    iget-boolean v0, p0, Le/a/x4/k/e;->f:Z

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :try_start_0
    iget-object p1, p1, Le/a/x4/k/f;->a:Le/a/x4/j/c/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object p1

    check-cast p1, Le/a/t2/a/h/a/g$a;

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;->OPTED_IN:Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;->OPTED_OUT:Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;

    .line 6
    :goto_0
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;->newBuilder()Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest$b;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 8
    iget-object v2, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;

    invoke-static {v2, v0}, Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;->access$200(Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;)V

    .line 9
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;

    .line 10
    invoke-virtual {p1, v0}, Le/a/t2/a/h/a/g$a;->d(Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutRequest;)Lcom/truecaller/api/services/searchwarnings/v1/SetSupernovaOptOutResponse;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supernova set = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    sget-object p1, Le/a/x4/k/b$c;->a:Le/a/x4/k/b$c;

    goto :goto_1

    .line 13
    :cond_1
    sget-object p1, Le/a/x4/k/b$a;->a:Le/a/x4/k/b$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    new-instance v0, Le/a/x4/k/b$b;

    invoke-direct {v0, p1}, Le/a/x4/k/b$b;-><init>(Ljava/lang/Exception;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method
