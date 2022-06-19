.class public final Le/a/d/c0/y1/c$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/y1/c;->d(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.voip.util.availability.VoipAvailabilityUtilImpl$getVoipGroupCapableNumbers$2"
    f = "VoipAvailabilityUtil.kt"
    l = {
        0x7f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/d/c0/y1/c;


# direct methods
.method public constructor <init>(Le/a/d/c0/y1/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/y1/c$c;->i:Le/a/d/c0/y1/c;

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

    new-instance p1, Le/a/d/c0/y1/c$c;

    iget-object v0, p0, Le/a/d/c0/y1/c$c;->i:Le/a/d/c0/y1/c;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/y1/c$c;-><init>(Le/a/d/c0/y1/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/c0/y1/c$c;

    iget-object v0, p0, Le/a/d/c0/y1/c$c;->i:Le/a/d/c0/y1/c;

    invoke-direct {p1, v0, p2}, Le/a/d/c0/y1/c$c;-><init>(Le/a/d/c0/y1/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/c0/y1/c$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/d/c0/y1/c$c;->h:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, p0, Le/a/d/c0/y1/c$c;->g:Ljava/lang/Object;

    iget-object v2, p0, Le/a/d/c0/y1/c$c;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/Iterator;

    iget-object v4, p0, Le/a/d/c0/y1/c$c;->e:Ljava/lang/Object;

    check-cast v4, Ljava/util/Collection;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, p0

    goto :goto_1

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
    iget-object p1, p0, Le/a/d/c0/y1/c$c;->i:Le/a/d/c0/y1/c;

    .line 5
    iget-object p1, p1, Le/a/d/c0/y1/c;->d:Le/a/d/g;

    .line 6
    check-cast p1, Le/a/d/e;

    invoke-virtual {p1}, Le/a/d/e;->b()Z

    move-result p1

    if-nez p1, :cond_2

    return-object v0

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/d/c0/y1/c$c;->i:Le/a/d/c0/y1/c;

    invoke-static {p1}, Le/a/d/c0/y1/c;->e(Le/a/d/c0/y1/c;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string v0, "+"

    invoke-static {p1, v0}, Ls1/f0/v;->P(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object v0, p0, Le/a/d/c0/y1/c$c;->i:Le/a/d/c0/y1/c;

    .line 9
    iget-object v0, v0, Le/a/d/c0/y1/c;->c:Le/a/d/t/a;

    .line 10
    invoke-interface {v0, p1}, Le/a/d/t/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v2, p1

    move-object v4, v0

    move-object p1, p0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/truecaller/voip/db/VoipAvailability;

    .line 13
    iget-object v6, p1, Le/a/d/c0/y1/c$c;->i:Le/a/d/c0/y1/c;

    iput-object v4, p1, Le/a/d/c0/y1/c$c;->e:Ljava/lang/Object;

    iput-object v2, p1, Le/a/d/c0/y1/c$c;->f:Ljava/lang/Object;

    iput-object v0, p1, Le/a/d/c0/y1/c$c;->g:Ljava/lang/Object;

    iput v3, p1, Le/a/d/c0/y1/c$c;->h:I

    invoke-virtual {v6, v5, p1}, Le/a/d/c0/y1/c;->f(Lcom/truecaller/voip/db/VoipAvailability;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    return-object v1

    :cond_3
    move-object v7, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v1

    move-object v1, v7

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v5, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object p1, v0

    move-object v1, v2

    move-object v2, v4

    move-object v4, v5

    goto :goto_0

    .line 16
    :cond_5
    check-cast v4, Ljava/util/List;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v4, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 19
    check-cast v1, Lcom/truecaller/voip/db/VoipAvailability;

    .line 20
    invoke-virtual {v1}, Lcom/truecaller/voip/db/VoipAvailability;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_6
    invoke-static {p1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method
