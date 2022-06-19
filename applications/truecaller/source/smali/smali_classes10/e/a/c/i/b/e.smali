.class public abstract Le/a/c/i/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/i/b/c;


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Lq3/a/i0;

.field public final c:Lq3/a/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/n0<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 7

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v1

    iput-object v1, p0, Le/a/c/i/b/e;->a:Lq3/a/y;

    .line 3
    invoke-interface {p1, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    iput-object v1, p0, Le/a/c/i/b/e;->b:Lq3/a/i0;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/c/i/b/e;->d:Lq3/a/x2/a1;

    .line 5
    new-instance v4, Le/a/c/i/b/e$a;

    invoke-direct {v4, p0, v0}, Le/a/c/i/b/e$a;-><init>(Le/a/c/i/b/e;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/i/b/e;->c:Lq3/a/n0;

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    .line 1
    new-instance v0, Le/a/c/i/b/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/c/i/b/e$b;-><init>(Le/a/c/i/b/e;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract B(Ls1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/i/b/e;->d:Lq3/a/x2/a1;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
