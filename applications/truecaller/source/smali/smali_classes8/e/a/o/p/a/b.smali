.class public final Le/a/o/p/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/p/a/a;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/o/p/a/b;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/o/p/a/b$a;

    invoke-direct {v0, p0, p1}, Le/a/o/p/a/b$a;-><init>(Le/a/o/p/a/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/o/p/a/b;->b:Ln3/c0/k;

    .line 4
    new-instance v0, Le/a/o/p/a/b$b;

    invoke-direct {v0, p0, p1}, Le/a/o/p/a/b$b;-><init>(Le/a/o/p/a/b;Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM context_call_availability WHERE phone=?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 4
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object v1, p0, Le/a/o/p/a/b;->a:Ln3/c0/q;

    const/4 v2, 0x0

    new-instance v3, Le/a/o/p/a/b$d;

    invoke-direct {v3, p0, v0}, Le/a/o/p/a/b$d;-><init>(Le/a/o/p/a/b;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/o/p/a/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/o/p/a/b$c;

    invoke-direct {v1, p0, p1}, Le/a/o/p/a/b$c;-><init>(Le/a/o/p/a/b;Lcom/truecaller/contextcall/db/availability/ContextCallAvailability;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
