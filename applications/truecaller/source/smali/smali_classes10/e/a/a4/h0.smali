.class public final Le/a/a4/h0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.init.TrueAppInitManager$onAppCreate$5"
    f = "TrueAppInitManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p1}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Le/a/l5/a/j1;->f:Lorg/apache/avro/Schema;

    new-instance v0, Le/a/l5/a/j1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/l5/a/j1$b;-><init>(Le/a/l5/a/j1$a;)V

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/a4/h0;

    invoke-direct {v0, p1}, Le/a/a4/h0;-><init>(Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Le/a/l5/a/j1;->f:Lorg/apache/avro/Schema;

    new-instance p1, Le/a/l5/a/j1$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Le/a/l5/a/j1$b;-><init>(Le/a/l5/a/j1$a;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
