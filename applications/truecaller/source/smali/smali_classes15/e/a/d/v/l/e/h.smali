.class public final Le/a/d/v/l/e/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/l/e/g;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Le/a/d/v/l/d;


# direct methods
.method public constructor <init>(Lq3/a/i0;Le/a/d/v/l/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/v/l/e/h;->a:Lq3/a/i0;

    iput-object p2, p0, Le/a/d/v/l/e/h;->b:Le/a/d/v/l/d;

    return-void
.end method


# virtual methods
.method public e(Le/a/d/v/l/c$b;)Lq3/a/p1;
    .locals 8

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1, v0}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v3

    new-instance v5, Le/a/d/v/l/e/h$a;

    invoke-direct {v5, p0, p1, v0}, Le/a/d/v/l/e/h$a;-><init>(Le/a/d/v/l/e/h;Le/a/d/v/l/c$b;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/l/e/h;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
