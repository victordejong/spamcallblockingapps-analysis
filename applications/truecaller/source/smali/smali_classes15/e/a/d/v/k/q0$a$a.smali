.class public final Le/a/d/v/k/q0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/v/k/q0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/x1/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/v/k/q0$a;


# direct methods
.method public constructor <init>(Le/a/d/v/k/q0$a;)V
    .locals 0

    iput-object p1, p0, Le/a/d/v/k/q0$a$a;->a:Le/a/d/v/k/q0$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Le/a/d/v/k/q0$a$a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/v/k/q0$a$a$a;

    iget v1, v0, Le/a/d/v/k/q0$a$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/q0$a$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/q0$a$a$a;

    invoke-direct {v0, p0, p2}, Le/a/d/v/k/q0$a$a$a;-><init>(Le/a/d/v/k/q0$a$a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/v/k/q0$a$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/q0$a$a$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/d/v/k/q0$a$a$a;->i:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v1, v0, Le/a/d/v/k/q0$a$a$a;->h:Ljava/lang/Object;

    check-cast v1, Le/a/d/c0/r;

    iget-object v0, v0, Le/a/d/v/k/q0$a$a$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/x1/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    check-cast p1, Le/a/d/c0/x1/b;

    .line 5
    iget-object p2, p0, Le/a/d/v/k/q0$a$a;->a:Le/a/d/v/k/q0$a;

    iget-object p2, p2, Le/a/d/v/k/q0$a;->f:Le/a/d/v/k/q0;

    .line 6
    iget-object p2, p2, Le/a/d/v/k/q0;->b:Le/a/d/c0/r;

    .line 7
    iget-object v2, p2, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 8
    iput-object p1, v0, Le/a/d/v/k/q0$a$a$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/v/k/q0$a$a$a;->h:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/v/k/q0$a$a$a;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/d/v/k/q0$a$a$a;->e:I

    invoke-interface {v2, v3, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p1

    move-object v1, p2

    move-object p1, v2

    .line 9
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p2

    .line 10
    invoke-interface {p2, v0}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    sget-object p2, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-interface {p1, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-interface {p1, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2
.end method
