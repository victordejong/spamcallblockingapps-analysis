.class public final Le/a/l/p2/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/b0;->a:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/l/p2/z;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [Le/a/l/p2/z;

    .line 1
    new-instance v1, Le/a/l/p2/z;

    const/4 v2, 0x1

    const v3, 0x7f120484

    invoke-direct {v1, v2, v3}, Le/a/l/p2/z;-><init>(ZI)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 2
    new-instance v1, Le/a/l/p2/z;

    const v3, 0x7f12048d

    invoke-direct {v1, v2, v3}, Le/a/l/p2/z;-><init>(ZI)V

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Le/a/l/p2/z;

    .line 4
    iget-object v2, p0, Le/a/l/p2/b0;->a:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->l()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    const v3, 0x7f12048b

    .line 5
    invoke-direct {v1, v2, v3}, Le/a/l/p2/z;-><init>(ZI)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6
    new-instance v1, Le/a/l/p2/z;

    .line 7
    iget-object v2, p0, Le/a/l/p2/b0;->a:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->k()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    const v3, 0x7f12048a

    .line 8
    invoke-direct {v1, v2, v3}, Le/a/l/p2/z;-><init>(ZI)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 9
    new-instance v1, Le/a/l/p2/z;

    .line 10
    iget-object v2, p0, Le/a/l/p2/b0;->a:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->g()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    const v3, 0x7f120486

    .line 11
    invoke-direct {v1, v2, v3}, Le/a/l/p2/z;-><init>(ZI)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 12
    new-instance v1, Le/a/l/p2/z;

    .line 13
    iget-object v2, p0, Le/a/l/p2/b0;->a:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->h()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    const v3, 0x7f120487

    .line 14
    invoke-direct {v1, v2, v3}, Le/a/l/p2/z;-><init>(ZI)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 15
    new-instance v1, Le/a/l/p2/z;

    .line 16
    iget-object v2, p0, Le/a/l/p2/b0;->a:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->j()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    const v3, 0x7f120489

    .line 17
    invoke-direct {v1, v2, v3}, Le/a/l/p2/z;-><init>(ZI)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 18
    new-instance v1, Le/a/l/p2/z;

    .line 19
    iget-object v2, p0, Le/a/l/p2/b0;->a:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->i()Le/a/u3/b;

    move-result-object v2

    invoke-interface {v2}, Le/a/u3/b;->isEnabled()Z

    move-result v2

    const v3, 0x7f120488

    .line 20
    invoke-direct {v1, v2, v3}, Le/a/l/p2/z;-><init>(ZI)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 21
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/l/p2/z;

    .line 24
    iget-boolean v3, v3, Le/a/l/p2/z;->a:Z

    if-eqz v3, :cond_0

    .line 25
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method
