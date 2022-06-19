.class public final Le/a/l/d/a/f;
.super Le/a/u2/a/b;
.source "SourceFile"


# instance fields
.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/l/d/a/f;->b:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/l/d/a/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Le/a/h0/a/v;

    .line 4
    sget-object v0, Le/a/h0/a/v$a;->i:Le/a/h0/a/v$a;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    invoke-static {p1}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/l/d/a/f;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->l()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Le/a/h0/a/v$j;->i:Le/a/h0/a/v$j;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/l/d/a/f;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->k()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Le/a/h0/a/v$i;->i:Le/a/h0/a/v$i;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    iget-object v0, p0, Le/a/l/d/a/f;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->g()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    sget-object v0, Le/a/h0/a/v$f;->i:Le/a/h0/a/v$f;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object v0, p0, Le/a/l/d/a/f;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->j()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    sget-object v0, Le/a/h0/a/v$h;->i:Le/a/h0/a/v$h;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/l/d/a/f;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->h()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    sget-object v0, Le/a/h0/a/v$k;->i:Le/a/h0/a/v$k;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    iget-object v0, p0, Le/a/l/d/a/f;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->i()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    sget-object v0, Le/a/h0/a/v$g;->i:Le/a/h0/a/v$g;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    sget-object v0, Le/a/h0/a/v$e;->i:Le/a/h0/a/v$e;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/l/d/a/e;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Le/a/l/d/a/e;->xl(Ljava/util/List;)V

    :cond_6
    return-void
.end method
