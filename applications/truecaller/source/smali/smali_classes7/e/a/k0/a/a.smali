.class public final Le/a/k0/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/a/e;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Le/a/u3/g;

.field public final i:Le/a/k0/a/j;

.field public final j:Le/a/p5/g;

.field public final k:Le/a/k0/f;

.field public final l:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/k0/a/j;Le/a/p5/g;Le/a/k0/f;Le/a/p5/a0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainModuleFacade"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/a/a;->h:Le/a/u3/g;

    iput-object p2, p0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    iput-object p3, p0, Le/a/k0/a/a;->j:Le/a/p5/g;

    iput-object p4, p0, Le/a/k0/a/a;->k:Le/a/k0/f;

    iput-object p5, p0, Le/a/k0/a/a;->l:Le/a/p5/a0;

    .line 2
    new-instance p1, Le/a/k0/a/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/k0/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/a;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/k0/a/a$a;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Le/a/k0/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/a;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/k0/a/a$a;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Le/a/k0/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/a;->c:Ls1/g;

    .line 5
    new-instance p1, Le/a/k0/a/a$a;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Le/a/k0/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/a;->d:Ls1/g;

    .line 6
    new-instance p1, Le/a/k0/a/a$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/k0/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/a;->e:Ls1/g;

    .line 7
    new-instance p1, Le/a/k0/a/a$b;

    invoke-direct {p1, p0}, Le/a/k0/a/a$b;-><init>(Le/a/k0/a/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/a;->f:Ls1/g;

    .line 8
    new-instance p1, Le/a/k0/a/a$c;

    invoke-direct {p1, p0}, Le/a/k0/a/a$c;-><init>(Le/a/k0/a/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k0/a/a;->g:Ls1/g;

    return-void
.end method

.method public static final g(Le/a/k0/a/a;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/k0/a/a;->d:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    invoke-interface {v0}, Le/a/k0/a/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/k0/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public H()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k0/a/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    invoke-interface {v0}, Le/a/k0/a/j;->i()V

    :cond_0
    return-void
.end method

.method public I()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    invoke-interface {v0}, Le/a/k0/a/j;->f()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Le/a/k0/a/a;->x()Le/a/k0/a/p;

    move-result-object v0

    .line 3
    iget-object v3, p0, Le/a/k0/a/a;->k:Le/a/k0/f;

    invoke-interface {v3}, Le/a/k0/f;->G0()I

    move-result v3

    .line 4
    instance-of v4, v0, Le/a/k0/a/p$c;

    if-nez v4, :cond_1

    .line 5
    instance-of v0, v0, Le/a/k0/a/p$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ge v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public final J(Le/a/u3/i;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0x2c

    aput-char v3, v1, v2

    const/4 v3, 0x4

    .line 2
    invoke-static {p1, v1, v0, v2, v3}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1, p2, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    :goto_1
    return v0
.end method

.method public final K()Z
    .locals 8

    .line 1
    sget-object v0, Le/a/k0/a/g;->a:[Ljava/lang/String;

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    .line 3
    iget-object v6, p0, Le/a/k0/a/a;->l:Le/a/p5/a0;

    new-array v7, v4, [Ljava/lang/String;

    aput-object v5, v7, v2

    invoke-interface {v6, v7}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v4

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_2

    move v2, v4

    :cond_2
    return v2
.end method

.method public final L(Le/a/u3/i;Le/a/u3/i;)Z
    .locals 1

    const-string v0, "deviceModelBlackList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manufacturerBlacklist"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/a/a;->j:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/k0/a/a;->J(Le/a/u3/i;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Le/a/k0/a/a;->j:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Le/a/k0/a/a;->J(Le/a/u3/i;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final M()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    invoke-interface {v0}, Le/a/k0/a/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/k0/a/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    invoke-interface {v0, p1}, Le/a/k0/a/j;->c(Z)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    invoke-interface {v0}, Le/a/k0/a/j;->d()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/a/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k0/a/a;->k:Le/a/k0/f;

    const-string v1, "callRecordingEnabled"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/k0/f;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/a/a;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/a/a;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k0/a/a;->B()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Le/a/k0/a/a;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o()Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Le/a/k0/a/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/k0/a/a;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/x2/f;

    return-object v0
.end method

.method public s()Le/a/k0/a/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k0/a/a;->x()Le/a/k0/a/p;

    move-result-object v0

    return-object v0
.end method

.method public final t(Le/a/u3/i;)Z
    .locals 2

    const-string v0, "blackListRegex"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/a/k0/a/a;->j:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/k0/a/a;->j:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, "CallRecordingFeatureHelper: Feature enabled: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/k0/a/a;->h:Le/a/u3/g;

    .line 2
    iget-object v2, v1, Le/a/u3/g;->y1:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x80

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n Legacy blacklist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Le/a/k0/a/a;->h:Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->t()Le/a/u3/i;

    move-result-object v1

    .line 5
    iget-object v2, p0, Le/a/k0/a/a;->h:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->u()Le/a/u3/i;

    move-result-object v2

    .line 6
    invoke-virtual {p0, v1, v2}, Le/a/k0/a/a;->L(Le/a/u3/i;Le/a/u3/i;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\n Legacy Does device match blacklist regex: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-object v2, p0, Le/a/k0/a/a;->h:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->s()Le/a/u3/i;

    move-result-object v2

    invoke-virtual {p0, v2}, Le/a/k0/a/a;->t(Le/a/u3/i;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n Accessibility blacklist: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget-object v2, p0, Le/a/k0/a/a;->h:Le/a/u3/g;

    invoke-virtual {v2}, Le/a/u3/g;->q()Le/a/u3/i;

    move-result-object v2

    .line 9
    iget-object v3, p0, Le/a/k0/a/a;->h:Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->r()Le/a/u3/i;

    move-result-object v3

    .line 10
    invoke-virtual {p0, v2, v3}, Le/a/k0/a/a;->L(Le/a/u3/i;Le/a/u3/i;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    invoke-interface {v0}, Le/a/k0/a/j;->h()Z

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/k0/a/a;->M()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/k0/a/a;->k:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->U1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/a/k0/a/a;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Le/a/k0/a/a;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/k0/a/a;->k:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->U1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Le/a/k0/a/a;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/k0/a/a;->i:Le/a/k0/a/j;

    invoke-interface {v0}, Le/a/k0/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final x()Le/a/k0/a/p;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k0/a/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Le/a/k0/a/p$b;->a:Le/a/k0/a/p$b;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/k0/a/a;->k:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->j0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Le/a/k0/a/p$d;->a:Le/a/k0/a/p$d;

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/a/k0/a/a;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Le/a/k0/a/p$c;->a:Le/a/k0/a/p$c;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Le/a/k0/a/p$a;->a:Le/a/k0/a/p$a;

    :goto_0
    return-object v0
.end method

.method public y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/k0/a/a;->l:Le/a/p5/a0;

    sget-object v1, Le/a/k0/a/g;->a:[Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    iget-object v0, p0, Le/a/k0/a/a;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
