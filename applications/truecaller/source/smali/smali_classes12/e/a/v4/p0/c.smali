.class public final Le/a/v4/p0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v4/p0/b;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/v4/l;

.field public final c:Le/a/v4/p0/b$a;


# direct methods
.method public constructor <init>(Le/a/v4/l;Le/a/v4/p0/b$a;)V
    .locals 1

    const-string v0, "eventsTrackerHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventInfoHolder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v4/p0/c;->b:Le/a/v4/l;

    iput-object p2, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    const-string p1, "UUID.randomUUID().toString()"

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/v4/p0/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 1
    new-instance v11, Le/a/v4/p0/d/b;

    .line 2
    iget-object v1, p0, Le/a/v4/p0/c;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v0}, Le/a/v4/p0/b$a;->getPlatform()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v0, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v0}, Le/a/v4/p0/b$a;->b()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v0, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v0}, Le/a/v4/p0/b$a;->f()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v0, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v0}, Le/a/v4/p0/b$a;->d()Ljava/lang/String;

    move-result-object v5

    .line 7
    iget-object v0, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v0}, Le/a/v4/p0/b$a;->i()Ljava/lang/String;

    move-result-object v6

    .line 8
    iget-object v0, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v0}, Le/a/v4/p0/b$a;->t()Ljava/lang/String;

    move-result-object v7

    .line 9
    iget-object v0, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v0}, Le/a/v4/p0/b$a;->r()Ljava/lang/String;

    move-result-object v8

    .line 10
    iget-object v0, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v0}, Le/a/v4/p0/b$a;->k()Ljava/util/List;

    move-result-object v9

    .line 11
    iget-object v0, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v0}, Le/a/v4/p0/b$a;->p()Ljava/util/Map;

    move-result-object v10

    move-object v0, v11

    .line 12
    invoke-direct/range {v0 .. v10}, Le/a/v4/p0/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    .line 13
    iget-object v0, p0, Le/a/v4/p0/c;->b:Le/a/v4/l;

    invoke-interface {v0}, Le/a/v4/l;->a()Le/a/q2/a;

    move-result-object v0

    invoke-interface {v0, v11}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "interactionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/v4/p0/d/a;

    .line 2
    iget-object v1, p0, Le/a/v4/p0/c;->a:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v2}, Le/a/v4/p0/b$a;->l()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2, p1}, Le/a/v4/p0/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Le/a/v4/p0/c;->b:Le/a/v4/l;

    invoke-interface {p1}, Le/a/v4/l;->a()Le/a/q2/a;

    move-result-object p1

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "screenState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/v4/p0/d/c;

    .line 2
    iget-object v2, p0, Le/a/v4/p0/c;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v1}, Le/a/v4/p0/b$a;->m()Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v1, p0, Le/a/v4/p0/c;->c:Le/a/v4/p0/b$a;

    invoke-interface {v1}, Le/a/v4/p0/b$a;->l()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    move-object v3, p1

    move-object v6, p4

    move-object v7, p2

    move-object v8, p3

    .line 5
    invoke-direct/range {v1 .. v8}, Le/a/v4/p0/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Le/a/v4/p0/c;->b:Le/a/v4/l;

    invoke-interface {p1}, Le/a/v4/l;->a()Le/a/q2/a;

    move-result-object p1

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method
