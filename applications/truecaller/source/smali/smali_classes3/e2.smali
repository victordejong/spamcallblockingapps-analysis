.class public final Le2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le2;->b:I

    iput-object p2, p0, Le2;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Le2;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    const/4 v3, 0x0

    if-ne v0, v2, :cond_8

    .line 1
    iget-object v0, p0, Le2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/o;

    .line 2
    iget-object v0, v0, Le/a/f/y/o;->y:Le/a/p5/g;

    .line 3
    invoke-interface {v0}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 5
    iget-object v4, p0, Le2;->c:Ljava/lang/Object;

    check-cast v4, Le/a/f/y/o;

    .line 6
    iget-object v4, v4, Le/a/f/y/o;->C:Le/a/u3/g;

    .line 7
    iget-object v5, v4, Le/a/u3/g;->p1:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v7, 0x77

    aget-object v6, v6, v7

    invoke-virtual {v5, v4, v6}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v4

    check-cast v4, Le/a/u3/i;

    .line 8
    invoke-interface {v4}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_4

    const-string v5, ","

    .line 10
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v4, v5, v1, v1, v6}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v4

    .line 11
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v0, v6, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    :cond_3
    check-cast v3, Ljava/lang/String;

    :cond_4
    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 13
    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 14
    :cond_8
    throw v3

    .line 15
    :cond_9
    iget-object v0, p0, Le2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/o;

    .line 16
    iget-object v0, v0, Le/a/f/y/o;->B:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 17
    invoke-interface {v0}, Le/a/k0/a/e;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Le2;->c:Ljava/lang/Object;

    check-cast v0, Le/a/f/y/o;

    .line 18
    iget-object v0, v0, Le/a/f/y/o;->B:Lcom/truecaller/callrecording/CallRecordingManager;

    .line 19
    invoke-interface {v0}, Le/a/k0/a/e;->s()Le/a/k0/a/p;

    move-result-object v0

    sget-object v3, Le/a/k0/a/p$c;->a:Le/a/k0/a/p$c;

    invoke-static {v0, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v1, v2

    .line 20
    :cond_a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
