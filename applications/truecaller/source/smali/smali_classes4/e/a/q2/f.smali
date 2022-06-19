.class public final Le/a/q2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/a;


# instance fields
.field public final a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/q2/d1/d;

.field public final c:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/q2/d1/d;Le/a/p5/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/q2/d1/d;",
            "Le/a/p5/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseAnalyticsWrapper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q2/f;->a:Le/a/r2/f;

    iput-object p2, p0, Le/a/q2/f;->b:Le/a/q2/d1/d;

    iput-object p3, p0, Le/a/q2/f;->c:Le/a/p5/g;

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/avro/generic/GenericRecord;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/q2/f;->a:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public b(Le/a/q2/v;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Le/a/q2/v;->a()Le/a/q2/x;

    move-result-object p1

    .line 2
    instance-of v0, p1, Le/a/q2/x$c;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    instance-of v0, p1, Le/a/q2/x$e;

    if-eqz v0, :cond_1

    check-cast p1, Le/a/q2/x$e;

    .line 4
    iget-object p1, p1, Le/a/q2/x$e;->a:Ljava/util/Set;

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/x;

    .line 6
    invoke-virtual {p0, v0}, Le/a/q2/f;->f(Le/a/q2/x;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1}, Le/a/q2/f;->f(Le/a/q2/x;)V

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "payload"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public e(Le/a/q2/g;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Le/a/q2/x;)V
    .locals 2

    .line 1
    instance-of v0, p1, Le/a/q2/x$c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Le/a/q2/x$a;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p1, Le/a/q2/x$e;

    if-eqz v0, :cond_3

    .line 4
    iget-object p1, p0, Le/a/q2/f;->c:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->i()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "MultiSpec should not contain MultiSpec."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    instance-of v0, p1, Le/a/q2/x$d;

    if-eqz v0, :cond_4

    check-cast p1, Le/a/q2/x$d;

    .line 7
    iget-object p1, p1, Le/a/q2/x$d;->a:Lorg/apache/avro/generic/GenericRecord;

    .line 8
    invoke-virtual {p0, p1}, Le/a/q2/f;->a(Lorg/apache/avro/generic/GenericRecord;)V

    goto :goto_0

    .line 9
    :cond_4
    instance-of v0, p1, Le/a/q2/x$b;

    if-eqz v0, :cond_5

    check-cast p1, Le/a/q2/x$b;

    .line 10
    iget-object v0, p1, Le/a/q2/x$b;->a:Ljava/lang/String;

    .line 11
    iget-object p1, p1, Le/a/q2/x$b;->b:Landroid/os/Bundle;

    .line 12
    iget-object v1, p0, Le/a/q2/f;->b:Le/a/q2/d1/d;

    invoke-interface {v1, v0, p1}, Le/a/q2/d1/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    :goto_0
    return-void
.end method
