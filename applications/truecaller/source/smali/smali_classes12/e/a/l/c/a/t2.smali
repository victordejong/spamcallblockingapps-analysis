.class public final Le/a/l/c/a/t2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/h0/m;

.field public final c:Le/a/l/p2/v0;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/h0/m;Le/a/l/p2/v0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/c/a/t2;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/l/c/a/t2;->b:Le/a/h0/m;

    iput-object p3, p0, Le/a/l/c/a/t2;->c:Le/a/l/p2/v0;

    return-void
.end method


# virtual methods
.method public final a()Le/a/l/c/a/t$k;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Le/a/l/c/a/j;

    sget-object v2, Le/a/h0/a/v$a;->i:Le/a/h0/a/v$a;

    .line 3
    iget-object v3, p0, Le/a/l/c/a/t2;->c:Le/a/l/p2/v0;

    invoke-interface {v3}, Le/a/l/p2/v0;->H()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v3, p0, Le/a/l/c/a/t2;->b:Le/a/h0/m;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Le/a/h0/m;->t(Ljava/lang/Boolean;)V

    const/4 v3, 0x0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Le/a/l/c/a/t2;->b:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->h()Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v3

    .line 6
    :goto_0
    invoke-direct {v1, v2, v3}, Le/a/l/c/a/j;-><init>(Le/a/h0/a/v;Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Le/a/l/c/a/j;

    sget-object v2, Le/a/h0/a/v$e;->i:Le/a/h0/a/v$e;

    iget-object v3, p0, Le/a/l/c/a/t2;->c:Le/a/l/p2/v0;

    invoke-interface {v3}, Le/a/l/p2/v0;->H()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Le/a/l/c/a/j;-><init>(Le/a/h0/a/v;Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Le/a/l/c/a/t2;->a:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->l()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v1, Le/a/l/c/a/j;

    sget-object v2, Le/a/h0/a/v$j;->i:Le/a/h0/a/v$j;

    iget-object v3, p0, Le/a/l/c/a/t2;->b:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->u()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Le/a/l/c/a/j;-><init>(Le/a/h0/a/v;Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    iget-object v1, p0, Le/a/l/c/a/t2;->a:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->k()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    new-instance v1, Le/a/l/c/a/j;

    sget-object v2, Le/a/h0/a/v$i;->i:Le/a/h0/a/v$i;

    iget-object v3, p0, Le/a/l/c/a/t2;->b:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->b()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Le/a/l/c/a/j;-><init>(Le/a/h0/a/v;Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_2
    iget-object v1, p0, Le/a/l/c/a/t2;->a:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->g()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    new-instance v1, Le/a/l/c/a/j;

    sget-object v2, Le/a/h0/a/v$f;->i:Le/a/h0/a/v$f;

    iget-object v3, p0, Le/a/l/c/a/t2;->b:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->x()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Le/a/l/c/a/j;-><init>(Le/a/h0/a/v;Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    iget-object v1, p0, Le/a/l/c/a/t2;->a:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->j()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    new-instance v1, Le/a/l/c/a/j;

    sget-object v2, Le/a/h0/a/v$h;->i:Le/a/h0/a/v$h;

    iget-object v3, p0, Le/a/l/c/a/t2;->b:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->f()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Le/a/l/c/a/j;-><init>(Le/a/h0/a/v;Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_4
    iget-object v1, p0, Le/a/l/c/a/t2;->a:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->h()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 17
    new-instance v1, Le/a/l/c/a/j;

    sget-object v2, Le/a/h0/a/v$k;->i:Le/a/h0/a/v$k;

    iget-object v3, p0, Le/a/l/c/a/t2;->b:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->r()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Le/a/l/c/a/j;-><init>(Le/a/h0/a/v;Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_5
    iget-object v1, p0, Le/a/l/c/a/t2;->a:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->i()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 19
    new-instance v1, Le/a/l/c/a/j;

    sget-object v2, Le/a/h0/a/v$g;->i:Le/a/h0/a/v$g;

    iget-object v3, p0, Le/a/l/c/a/t2;->b:Le/a/h0/m;

    invoke-interface {v3}, Le/a/h0/m;->s()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Le/a/l/c/a/j;-><init>(Le/a/h0/a/v;Z)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_6
    new-instance v1, Le/a/l/c/a/t$k;

    invoke-direct {v1, v0}, Le/a/l/c/a/t$k;-><init>(Ljava/util/List;)V

    return-object v1
.end method
