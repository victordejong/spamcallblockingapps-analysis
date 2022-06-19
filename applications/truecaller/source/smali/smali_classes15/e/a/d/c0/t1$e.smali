.class public final Le/a/d/c0/t1$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/t1;->d(Landroid/content/Intent;)V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.VoipUtilImpl$onPresenceUpdated$1"
    f = "VoipUtilImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/c0/t1;

.field public final synthetic f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Le/a/d/c0/t1;Ljava/util/ArrayList;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/t1$e;->e:Le/a/d/c0/t1;

    iput-object p2, p0, Le/a/d/c0/t1$e;->f:Ljava/util/ArrayList;

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

    new-instance p1, Le/a/d/c0/t1$e;

    iget-object v0, p0, Le/a/d/c0/t1$e;->e:Le/a/d/c0/t1;

    iget-object v1, p0, Le/a/d/c0/t1$e;->f:Ljava/util/ArrayList;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/c0/t1$e;-><init>(Le/a/d/c0/t1;Ljava/util/ArrayList;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/c0/t1$e;->e:Le/a/d/c0/t1;

    iget-object v1, p0, Le/a/d/c0/t1$e;->f:Ljava/util/ArrayList;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/d/c0/t1;->e:Le/a/d/t/c;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Le/a/l4/e;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v5, v3, Le/a/l4/e;->f:Lcom/truecaller/api/services/presence/v1/models/Voip;

    if-eqz v5, :cond_1

    .line 10
    new-instance v4, Lcom/truecaller/voip/db/VoipAvailability;

    .line 11
    iget-object v3, v3, Le/a/l4/e;->a:Ljava/lang/String;

    .line 12
    invoke-static {v3}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {v5}, Lcom/truecaller/api/services/presence/v1/models/Voip;->getDisabled()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 14
    invoke-virtual {v5}, Lcom/truecaller/api/services/presence/v1/models/Voip;->getVersion()I

    move-result v5

    .line 15
    invoke-direct {v4, v3, v6, v5}, Lcom/truecaller/voip/db/VoipAvailability;-><init>(Ljava/lang/String;II)V

    :cond_1
    if-eqz v4, :cond_0

    .line 16
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "availabilities"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/truecaller/voip/db/VoipDatabase;->c:Lcom/truecaller/voip/db/VoipDatabase$b;

    iget-object p2, p2, Le/a/d/t/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Lcom/truecaller/voip/db/VoipDatabase$b;->a(Landroid/content/Context;)Lcom/truecaller/voip/db/VoipDatabase;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/truecaller/voip/db/VoipDatabase;->a()Le/a/d/t/a;

    move-result-object v4

    :cond_3
    if-eqz v4, :cond_4

    .line 19
    invoke-interface {v4, v2}, Le/a/d/t/a;->d(Ljava/util/List;)V

    :cond_4
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/c0/t1$e;->e:Le/a/d/c0/t1;

    .line 3
    iget-object p1, p1, Le/a/d/c0/t1;->e:Le/a/d/t/c;

    .line 4
    iget-object v0, p0, Le/a/d/c0/t1$e;->f:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Le/a/l4/e;

    .line 8
    iget-object v4, p0, Le/a/d/c0/t1$e;->e:Le/a/d/c0/t1;

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v4, v2, Le/a/l4/e;->f:Lcom/truecaller/api/services/presence/v1/models/Voip;

    if-eqz v4, :cond_1

    .line 11
    new-instance v3, Lcom/truecaller/voip/db/VoipAvailability;

    .line 12
    iget-object v2, v2, Le/a/l4/e;->a:Ljava/lang/String;

    .line 13
    invoke-static {v2}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v4}, Lcom/truecaller/api/services/presence/v1/models/Voip;->getDisabled()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 15
    invoke-virtual {v4}, Lcom/truecaller/api/services/presence/v1/models/Voip;->getVersion()I

    move-result v4

    .line 16
    invoke-direct {v3, v2, v5, v4}, Lcom/truecaller/voip/db/VoipAvailability;-><init>(Ljava/lang/String;II)V

    :cond_1
    if-eqz v3, :cond_0

    .line 17
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "availabilities"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/truecaller/voip/db/VoipDatabase;->c:Lcom/truecaller/voip/db/VoipDatabase$b;

    iget-object p1, p1, Le/a/d/t/c;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Lcom/truecaller/voip/db/VoipDatabase$b;->a(Landroid/content/Context;)Lcom/truecaller/voip/db/VoipDatabase;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/truecaller/voip/db/VoipDatabase;->a()Le/a/d/t/a;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    .line 20
    invoke-interface {v3, v1}, Le/a/d/t/a;->d(Ljava/util/List;)V

    .line 21
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
