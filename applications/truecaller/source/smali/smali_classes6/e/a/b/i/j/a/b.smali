.class public final Le/a/b/i/j/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b/i/j/a/a;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/b/i/j/a/b;->a:Ln3/c0/q;

    .line 3
    new-instance v0, Le/a/b/i/j/a/b$a;

    invoke-direct {v0, p0, p1}, Le/a/b/i/j/a/b$a;-><init>(Le/a/b/i/j/a/b;Ln3/c0/q;)V

    .line 4
    new-instance v0, Le/a/b/i/j/a/b$b;

    invoke-direct {v0, p0, p1}, Le/a/b/i/j/a/b$b;-><init>(Le/a/b/i/j/a/b;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/b/i/j/a/b;->b:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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

    .line 1
    iget-object v0, p0, Le/a/b/i/j/a/b;->a:Ln3/c0/q;

    new-instance v1, Le/a/b/i/j/a/b$c;

    invoke-direct {v1, p0}, Le/a/b/i/j/a/b$c;-><init>(Le/a/b/i/j/a/b;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
