.class public final Le/a/l4/d;
.super Le/a/b0/a/s/a;
.source "SourceFile"

# interfaces
.implements Le/a/l4/c$b;


# instance fields
.field public e:Le/a/l4/c$a;

.field public final f:Le/a/p5/h0;

.field public final g:Le/a/l4/c;

.field public final h:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V
    .locals 1

    const-string v0, "themedResourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/b0/a/s/a;-><init>(Le/a/p5/h0;)V

    iput-object p1, p0, Le/a/l4/d;->f:Le/a/p5/h0;

    iput-object p2, p0, Le/a/l4/d;->g:Le/a/l4/c;

    iput-object p3, p0, Le/a/l4/d;->h:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public Jj(Le/a/b0/a/s/d;)V
    .locals 1

    const-string v0, "presenterView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Le/a/b0/a/s/a;->b:Le/a/b0/a/s/b;

    invoke-virtual {p0, p1}, Le/a/b0/a/s/a;->Ij(Le/a/b0/a/s/b;)V

    .line 4
    iget-object p1, p0, Le/a/l4/d;->e:Le/a/l4/c$a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/l4/c$a;->isAttached()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Le/a/l4/c$a;->b(Le/a/l4/c$b;)V

    :cond_1
    return-void
.end method

.method public final Kj(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    invoke-virtual {p0, p1}, Le/a/l4/d;->Lj(Ljava/util/Set;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/l4/d;->Lj(Ljava/util/Set;)V

    :goto_0
    return-void
.end method

.method public final Lj(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "identifierSet"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/a/l4/d;->ki(Le/a/l4/e;)V

    .line 2
    iget-object v1, p0, Le/a/l4/d;->e:Le/a/l4/c$a;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/l4/c$a;->a()V

    .line 3
    :cond_0
    iput-object v0, p0, Le/a/l4/d;->e:Le/a/l4/c$a;

    .line 4
    iget-object v0, p0, Le/a/l4/d;->g:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/l4/d;->g:Le/a/l4/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 7
    invoke-interface {v0, p1}, Le/a/l4/c;->c([Ljava/lang/String;)Le/a/l4/c$a;

    move-result-object p1

    iput-object p1, p0, Le/a/l4/d;->e:Le/a/l4/c$a;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1, p0}, Le/a/l4/c$a;->b(Le/a/l4/c$b;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic Y0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/b0/a/s/d;

    invoke-virtual {p0, p1}, Le/a/l4/d;->Jj(Le/a/b0/a/s/d;)V

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Le/a/l4/d;->e:Le/a/l4/c$a;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/l4/c$a;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/l4/c$a;->a()V

    :cond_1
    return-void
.end method

.method public ki(Le/a/l4/e;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 1
    :cond_0
    new-instance v1, Le/a/b0/a/s/b;

    .line 2
    iget-object v2, p1, Le/a/l4/e;->d:Lw3/b/a/b;

    if-eqz v2, :cond_6

    .line 3
    iget-wide v2, v2, Lw3/b/a/e0/e;->a:J

    .line 4
    new-instance v4, Lw3/b/a/u;

    iget-object v5, p0, Le/a/l4/d;->h:Le/a/p5/c;

    invoke-interface {v5}, Le/a/p5/c;->c()J

    move-result-wide v5

    invoke-direct {v4, v2, v3, v5, v6}, Lw3/b/a/u;-><init>(JJ)V

    .line 5
    invoke-virtual {v4}, Lw3/b/a/u;->v()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4}, Lw3/b/a/u;->w()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v4}, Lw3/b/a/u;->s()I

    move-result v2

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lw3/b/a/u;->s()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 8
    :cond_3
    invoke-virtual {v4}, Lw3/b/a/u;->t()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lw3/b/a/u;->t()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {v4}, Lw3/b/a/u;->u()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lw3/b/a/u;->u()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    const-string v2, "1m"

    goto :goto_1

    :cond_6
    :goto_0
    move-object v2, v0

    .line 10
    :goto_1
    iget-object v3, p1, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v3, :cond_7

    .line 11
    invoke-virtual {v3}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getContext()Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    move-result-object v3

    goto :goto_2

    :cond_7
    move-object v3, v0

    :goto_2
    sget-object v4, Lcom/truecaller/api/services/presence/v1/models/Availability$Context;->SLEEP:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_8

    move v3, v5

    goto :goto_3

    :cond_8
    move v3, v6

    .line 12
    :goto_3
    iget-object p1, p1, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz p1, :cond_9

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getContext()Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    move-result-object v0

    :cond_9
    sget-object p1, Lcom/truecaller/api/services/presence/v1/models/Availability$Context;->CALL:Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    if-ne v0, p1, :cond_a

    goto :goto_4

    :cond_a
    move v5, v6

    .line 14
    :goto_4
    invoke-direct {v1, v2, v3, v5}, Le/a/b0/a/s/b;-><init>(Ljava/lang/String;ZZ)V

    move-object v0, v1

    .line 15
    :goto_5
    invoke-virtual {p0, v0}, Le/a/b0/a/s/a;->Ij(Le/a/b0/a/s/b;)V

    return-void
.end method
