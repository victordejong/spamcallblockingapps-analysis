.class public final Le/a/k0/a/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/a/a;-><init>(Le/a/u3/g;Le/a/k0/a/j;Le/a/p5/g;Le/a/k0/f;Le/a/p5/a0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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

    iput p1, p0, Le/a/k0/a/a$a;->b:I

    iput-object p2, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Le/a/k0/a/a$a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 1
    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    invoke-static {v0}, Le/a/k0/a/a;->g(Le/a/k0/a/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    .line 2
    iget-object v3, v0, Le/a/k0/a/a;->h:Le/a/u3/g;

    .line 3
    invoke-virtual {v3}, Le/a/u3/g;->t()Le/a/u3/i;

    move-result-object v3

    iget-object v4, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v4, Le/a/k0/a/a;

    .line 4
    iget-object v4, v4, Le/a/k0/a/a;->h:Le/a/u3/g;

    .line 5
    invoke-virtual {v4}, Le/a/u3/g;->u()Le/a/u3/i;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Le/a/k0/a/a;->L(Le/a/u3/i;Le/a/u3/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    .line 6
    iget-object v3, v0, Le/a/k0/a/a;->h:Le/a/u3/g;

    .line 7
    invoke-virtual {v3}, Le/a/u3/g;->s()Le/a/u3/i;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/a/k0/a/a;->t(Le/a/u3/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    .line 9
    iget-object v0, v0, Le/a/k0/a/a;->j:Le/a/p5/g;

    .line 10
    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v3, 0x1b

    if-gt v0, v3, :cond_0

    move v1, v2

    .line 11
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 12
    throw v0

    .line 13
    :cond_2
    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    .line 14
    iget-object v0, v0, Le/a/k0/a/a;->h:Le/a/u3/g;

    .line 15
    iget-object v1, v0, Le/a/u3/g;->y1:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x80

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 18
    :cond_3
    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    invoke-virtual {v0}, Le/a/k0/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    invoke-static {v0}, Le/a/k0/a/a;->g(Le/a/k0/a/a;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    .line 19
    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    .line 20
    iget-object v0, v0, Le/a/k0/a/a;->k:Le/a/k0/f;

    .line 21
    invoke-interface {v0}, Le/a/k0/f;->f3()V

    .line 22
    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 23
    :cond_6
    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    .line 24
    iget-object v0, v0, Le/a/k0/a/a;->h:Le/a/u3/g;

    .line 25
    iget-object v3, v0, Le/a/u3/g;->A1:Le/a/u3/g$a;

    sget-object v4, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0x82

    aget-object v4, v4, v5

    invoke-virtual {v3, v0, v4}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    invoke-virtual {v0}, Le/a/k0/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_7

    move v1, v2

    .line 27
    :cond_7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 28
    :cond_8
    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    .line 29
    iget-object v3, v0, Le/a/k0/a/a;->h:Le/a/u3/g;

    .line 30
    invoke-virtual {v3}, Le/a/u3/g;->q()Le/a/u3/i;

    move-result-object v3

    .line 31
    iget-object v4, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v4, Le/a/k0/a/a;

    .line 32
    iget-object v4, v4, Le/a/k0/a/a;->h:Le/a/u3/g;

    .line 33
    invoke-virtual {v4}, Le/a/u3/g;->r()Le/a/u3/i;

    move-result-object v4

    .line 34
    invoke-virtual {v0, v3, v4}, Le/a/k0/a/a;->L(Le/a/u3/i;Le/a/u3/i;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    iget-object v3, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v3, Le/a/k0/a/a;

    .line 36
    iget-object v3, v3, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    invoke-interface {v3, v1}, Le/a/k0/a/j;->c(Z)V

    .line 37
    :cond_9
    iget-object v3, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v3, Le/a/k0/a/a;

    invoke-static {v3}, Le/a/k0/a/a;->g(Le/a/k0/a/a;)Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez v0, :cond_b

    iget-object v0, p0, Le/a/k0/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/k0/a/a;

    .line 38
    iget-object v0, v0, Le/a/k0/a/a;->j:Le/a/p5/g;

    const-string v3, "$this$shouldRecordThroughAccessibility"

    .line 39
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_a

    move v0, v2

    goto :goto_0

    :cond_a
    move v0, v1

    :goto_0
    if-eqz v0, :cond_b

    move v1, v2

    .line 41
    :cond_b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
