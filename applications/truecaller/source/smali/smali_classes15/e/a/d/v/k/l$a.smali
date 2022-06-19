.class public final Le/a/d/v/k/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/l;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/c0<",
        "Le/a/d/v/l/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/v/k/l;


# direct methods
.method public constructor <init>(Le/a/d/v/k/l;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/l$a;->a:Le/a/d/v/k/l;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Le/a/d/c0/c0;

    .line 2
    instance-of p2, p1, Le/a/d/c0/c0$b;

    if-eqz p2, :cond_5

    iget-object p2, p0, Le/a/d/v/k/l$a;->a:Le/a/d/v/k/l;

    iget-object p2, p2, Le/a/d/v/k/l;->f:Le/a/d/v/k/k;

    .line 3
    iget-object p2, p2, Le/a/d/v/k/k;->d:Le/a/d/v/g;

    .line 4
    invoke-virtual {p2}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 5
    check-cast p1, Le/a/d/c0/c0$b;

    .line 6
    iget-object p2, p1, Le/a/d/c0/c0$b;->a:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Le/a/d/v/l/a;

    .line 9
    invoke-interface {v2}, Le/a/d/v/l/a;->getState()Lq3/a/x2/i1;

    move-result-object v2

    invoke-interface {v2}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Le/a/d/v/l/c$b$a;

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 13
    iget-object p1, p1, Le/a/d/c0/c0$b;->a:Ljava/util/Set;

    .line 14
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne p2, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 15
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 17
    sget-object p1, Le/a/d/v/h$b$f;->b:Le/a/d/v/h$b$f;

    goto :goto_3

    .line 18
    :cond_4
    sget-object p1, Le/a/d/v/h$b$g;->b:Le/a/d/v/h$b$g;

    .line 19
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ending call with reason = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    iget-object p2, p0, Le/a/d/v/k/l$a;->a:Le/a/d/v/k/l;

    iget-object p2, p2, Le/a/d/v/k/l;->f:Le/a/d/v/k/k;

    .line 21
    iget-object p2, p2, Le/a/d/v/k/k;->f:Le/a/d/v/k/p;

    .line 22
    invoke-interface {p2, p1}, Le/a/d/v/k/p;->k(Le/a/d/v/h$b;)Lq3/a/p1;

    .line 23
    :cond_5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
