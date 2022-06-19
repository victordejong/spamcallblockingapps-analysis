.class public final Le/a/a4/t;
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
    c = "com.truecaller.init.TrueAppInitManager$onAppCreate$15"
    f = "TrueAppInitManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/TrueApp;


# direct methods
.method public constructor <init>(Lcom/truecaller/TrueApp;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a4/t;->e:Lcom/truecaller/TrueApp;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a4/t;->e:Lcom/truecaller/TrueApp;

    .line 2
    invoke-interface {p1}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    sget-object v1, Le/a/b0/b/c;->b:Le/a/b0/b/c;

    invoke-virtual {v1, v0}, Le/a/b0/b/c;->a(Landroid/content/Context;)V

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance v0, Le/a/a4/t;

    iget-object v1, p0, Le/a/a4/t;->e:Lcom/truecaller/TrueApp;

    invoke-direct {v0, v1, p1}, Le/a/a4/t;-><init>(Lcom/truecaller/TrueApp;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    sget-object p1, Le/a/b0/b/c;->b:Le/a/b0/b/c;

    iget-object v0, p0, Le/a/a4/t;->e:Lcom/truecaller/TrueApp;

    invoke-virtual {p1, v0}, Le/a/b0/b/c;->a(Landroid/content/Context;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
