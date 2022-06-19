.class public final Le/a/v2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/h/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/m/a/h/a/h/a<",
        "Le/m/a/h/a/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/w/d;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/v2/k;->a:Ls1/w/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/m/a/h/a/h/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/h/r<",
            "Le/m/a/h/a/c/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Le/m/a/h/a/h/r;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/v2/k;->a:Ls1/w/d;

    new-instance v1, Le/a/v2/o$b;

    invoke-virtual {p1}, Le/m/a/h/a/h/r;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/a/h/a/c/d;

    invoke-virtual {p1}, Le/m/a/h/a/c/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v2, "it.result.token()"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Le/a/v2/o$b;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/a/h/a/h/r;->c()Ljava/lang/Exception;

    move-result-object p1

    .line 4
    instance-of v0, p1, Le/m/a/h/a/c/b;

    if-eqz v0, :cond_1

    check-cast p1, Le/m/a/h/a/c/b;

    .line 5
    iget p1, p1, Le/m/a/h/a/c/b;->a:I

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Le/a/v2/k;->a:Ls1/w/d;

    new-instance v1, Le/a/v2/o$a;

    new-instance v2, Le/a/v2/l$a$d;

    invoke-direct {v2, p1}, Le/a/v2/l$a$d;-><init>(Ljava/lang/Integer;)V

    invoke-direct {v1, v2}, Le/a/v2/o$a;-><init>(Le/a/v2/l$a;)V

    invoke-interface {v0, v1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
