.class public abstract Le/a/c/a/i/c;
.super Le/a/c/a/i/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/c/a/i/l<",
        "TS;",
        "Lq3/a/x2/f<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 1

    const-string v0, "coroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/c/a/i/l;-><init>()V

    iput-object p1, p0, Le/a/c/a/i/c;->a:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lq3/a/x2/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/a/c/a/i/c;->b(Ljava/lang/Object;)Lq3/a/x2/f;

    move-result-object p1

    .line 2
    new-instance v0, Le/a/c/a/i/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/c/a/i/c$a;-><init>(Le/a/c/a/i/c;Ls1/w/d;)V

    .line 3
    new-instance v1, Lq3/a/x2/u;

    invoke-direct {v1, p1, v0}, Lq3/a/x2/u;-><init>(Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/i/c;->a:Ls1/w/f;

    invoke-static {v1, p1}, Ls1/a/a/a/v0/f/d;->X0(Lq3/a/x2/f;Ls1/w/f;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
