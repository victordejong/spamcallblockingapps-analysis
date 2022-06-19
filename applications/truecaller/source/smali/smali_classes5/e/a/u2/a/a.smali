.class public abstract Le/a/u2/a/a;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PV:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/u2/a/b<",
        "TPV;>;",
        "Lq3/a/i0;"
    }
.end annotation


# instance fields
.field public final b:Ls1/g;

.field public final c:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 1

    const-string v0, "baseContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/u2/a/a;->c:Ls1/w/f;

    .line 2
    sget-object p1, Le/a/u2/a/a$a;->b:Le/a/u2/a/a$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/u2/a/a;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public final Hj()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/u2/a/a;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/p1;

    return-object v0
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Le/a/u2/a/a;->Hj()Lq3/a/p1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/u2/a/a;->c:Ls1/w/f;

    invoke-virtual {p0}, Le/a/u2/a/a;->Hj()Lq3/a/p1;

    move-result-object v1

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
