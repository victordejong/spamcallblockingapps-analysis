.class public final Le/a/w3/g$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/w3/g;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/List<",
        "+",
        "Le/a/y/g/d;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.flash.FlashStatusManagerImpl$onPresenceUpdated$1$1"
    f = "FlashStatusManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/w3/g;

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Le/a/w3/g;Ljava/util/ArrayList;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/w3/g$a;->e:Le/a/w3/g;

    iput-object p2, p0, Le/a/w3/g$a;->f:Ljava/util/ArrayList;

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

    new-instance p1, Le/a/w3/g$a;

    iget-object v0, p0, Le/a/w3/g$a;->e:Le/a/w3/g;

    iget-object v1, p0, Le/a/w3/g$a;->f:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1, p2}, Le/a/w3/g$a;-><init>(Le/a/w3/g;Ljava/util/ArrayList;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/w3/g$a;->e:Le/a/w3/g;

    iget-object v0, p0, Le/a/w3/g$a;->f:Ljava/util/ArrayList;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Le/a/l4/e;

    .line 8
    iget-object v2, p1, Le/a/w3/g;->g:Le/a/w3/h;

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, v1, Le/a/l4/e;->c:Lcom/truecaller/api/services/presence/v1/models/Flash;

    if-eqz v2, :cond_1

    .line 11
    new-instance v3, Le/a/y/g/d;

    .line 12
    iget-object v1, v1, Le/a/l4/e;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v6, "+"

    const-string v7, ""

    .line 13
    invoke-static {v1, v6, v7, v4, v5}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/truecaller/api/services/presence/v1/models/Flash;->getVersion()Lcom/google/protobuf/Int32Value;

    move-result-object v4

    const-string v5, "flash.version"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/protobuf/Int32Value;->getValue()I

    move-result v4

    invoke-virtual {v2}, Lcom/truecaller/api/services/presence/v1/models/Flash;->getEnabled()Z

    move-result v2

    invoke-direct {v3, v1, v4, v2}, Le/a/y/g/d;-><init>(Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 14
    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/w3/g$a;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Le/a/l4/e;

    .line 6
    iget-object v2, p0, Le/a/w3/g$a;->e:Le/a/w3/g;

    iget-object v2, v2, Le/a/w3/g;->g:Le/a/w3/h;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, v1, Le/a/l4/e;->c:Lcom/truecaller/api/services/presence/v1/models/Flash;

    if-eqz v2, :cond_1

    .line 9
    new-instance v3, Le/a/y/g/d;

    .line 10
    iget-object v1, v1, Le/a/l4/e;->a:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v6, "+"

    const-string v7, ""

    .line 11
    invoke-static {v1, v6, v7, v4, v5}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/truecaller/api/services/presence/v1/models/Flash;->getVersion()Lcom/google/protobuf/Int32Value;

    move-result-object v4

    const-string v5, "flash.version"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/google/protobuf/Int32Value;->getValue()I

    move-result v4

    invoke-virtual {v2}, Lcom/truecaller/api/services/presence/v1/models/Flash;->getEnabled()Z

    move-result v2

    invoke-direct {v3, v1, v4, v2}, Le/a/y/g/d;-><init>(Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 12
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method
