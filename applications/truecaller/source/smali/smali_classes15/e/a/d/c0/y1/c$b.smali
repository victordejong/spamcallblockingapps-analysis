.class public final Le/a/d/c0/y1/c$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/y1/c;->j(Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.availability.VoipAvailabilityUtilImpl$getVoipCapableNumbers$2"
    f = "VoipAvailabilityUtil.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Le/a/d/c0/y1/c;


# direct methods
.method public constructor <init>(Le/a/d/c0/y1/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/y1/c$b;->k:Le/a/d/c0/y1/c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/d/c0/y1/c$b;

    iget-object v0, p0, Le/a/d/c0/y1/c$b;->k:Le/a/d/c0/y1/c;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/y1/c$b;-><init>(Le/a/d/c0/y1/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/y1/c$b;

    iget-object v0, p0, Le/a/d/c0/y1/c$b;->k:Le/a/d/c0/y1/c;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/y1/c$b;-><init>(Le/a/d/c0/y1/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/y1/c$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/c0/y1/c$b;->j:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/d/c0/y1/c$b;->i:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/voip/db/VoipAvailability;

    iget-object v3, p0, Le/a/d/c0/y1/c$b;->h:Ljava/lang/Object;

    iget-object v4, p0, Le/a/d/c0/y1/c$b;->g:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v5, p0, Le/a/d/c0/y1/c$b;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, p0, Le/a/d/c0/y1/c$b;->e:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/c0/y1/c$b;->k:Le/a/d/c0/y1/c;

    invoke-static {p1}, Le/a/d/c0/y1/c;->e(Le/a/d/c0/y1/c;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "+"

    invoke-static {p1, v1}, Ls1/f0/v;->P(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Le/a/d/c0/y1/c$b;->k:Le/a/d/c0/y1/c;

    .line 6
    iget-object v1, v1, Le/a/d/c0/y1/c;->c:Le/a/d/t/a;

    .line 7
    invoke-interface {v1}, Le/a/d/t/a;->h()Ljava/util/List;

    move-result-object v1

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v6, p1

    move-object v4, v1

    move-object v5, v3

    move-object p1, p0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/truecaller/voip/db/VoipAvailability;

    .line 10
    iget-object v7, p1, Le/a/d/c0/y1/c$b;->k:Le/a/d/c0/y1/c;

    iput-object v6, p1, Le/a/d/c0/y1/c$b;->e:Ljava/lang/Object;

    iput-object v5, p1, Le/a/d/c0/y1/c$b;->f:Ljava/lang/Object;

    iput-object v4, p1, Le/a/d/c0/y1/c$b;->g:Ljava/lang/Object;

    iput-object v3, p1, Le/a/d/c0/y1/c$b;->h:Ljava/lang/Object;

    iput-object v1, p1, Le/a/d/c0/y1/c$b;->i:Ljava/lang/Object;

    iput v2, p1, Le/a/d/c0/y1/c$b;->j:I

    invoke-virtual {v7, v1, p1}, Le/a/d/c0/y1/c;->i(Lcom/truecaller/voip/db/VoipAvailability;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_3

    return-object v0

    :cond_3
    move-object v8, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move-object v3, v1

    move-object v1, v8

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v0, Le/a/d/c0/y1/c$b;->k:Le/a/d/c0/y1/c;

    invoke-virtual {v3}, Lcom/truecaller/voip/db/VoipAvailability;->getPhone()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v7, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    move p1, v2

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 13
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object p1, v0

    move-object v0, v1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 15
    :cond_6
    check-cast v5, Ljava/util/List;

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v5, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 18
    check-cast v1, Lcom/truecaller/voip/db/VoipAvailability;

    .line 19
    invoke-virtual {v1}, Lcom/truecaller/voip/db/VoipAvailability;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 20
    :cond_7
    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
