.class public final Le/a/a/u0/f$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/u0/f;->b(ZLjava/util/List;Ljava/util/List;Ls1/z/b/l;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/u0/f;

.field public final synthetic b:Ls1/z/b/l;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/a/u0/f;Ls1/z/b/l;ZLjava/util/List;Ljava/util/List;Ls1/z/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/u0/f$e;->a:Le/a/a/u0/f;

    iput-object p2, p0, Le/a/a/u0/f$e;->b:Ls1/z/b/l;

    iput-boolean p3, p0, Le/a/a/u0/f$e;->c:Z

    iput-object p4, p0, Le/a/a/u0/f$e;->d:Ljava/util/List;

    iput-object p5, p0, Le/a/a/u0/f$e;->e:Ljava/util/List;

    iput-object p6, p0, Le/a/a/u0/f$e;->f:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 2
    iget-object v0, p0, Le/a/a/u0/f$e;->b:Ls1/z/b/l;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Le/a/a/u0/f$e;->a:Le/a/a/u0/f;

    .line 4
    iget-object p1, p1, Le/a/a/u0/f;->d:Lo3/a;

    .line 5
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/q2/i0;

    iget-boolean v1, p0, Le/a/a/u0/f$e;->c:Z

    iget-object p1, p0, Le/a/a/u0/f$e;->a:Le/a/a/u0/f;

    iget-object v2, p0, Le/a/a/u0/f$e;->d:Ljava/util/List;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "im"

    .line 10
    invoke-static {v3, v5, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :cond_0
    const-string v5, "sms"

    .line 11
    invoke-static {v3, v5, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const-string v5, "mms"

    .line 12
    invoke-static {v3, v5, v4}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x3

    .line 13
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    iget-object v2, p0, Le/a/a/u0/f$e;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    const-string v4, "important"

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Le/a/q2/i0;->t(ZLjava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/a/u0/f$e;->f:Ls1/z/b/a;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_5
    :goto_2
    return-void
.end method
