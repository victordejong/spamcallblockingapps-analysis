.class public final Le/a/b/a/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/c/a/c/a<",
        "Le/a/b/l/q<",
        "Ls1/s;",
        ">;",
        "Le/a/b/l/l<",
        "+",
        "Le/a/b/l/q<",
        "Ls1/s;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/a/d/b$a;


# direct methods
.method public constructor <init>(Le/a/b/a/a/d/b$a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/d/a;->a:Le/a/b/a/a/d/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b/l/q<",
            "Ls1/s;",
            ">;)",
            "Le/a/b/l/l<",
            "+",
            "Le/a/b/l/q<",
            "Ls1/s;",
            ">;>;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/b/l/q;

    .line 2
    iget-object v0, p0, Le/a/b/a/a/d/a;->a:Le/a/b/a/a/d/b$a;

    iget-object v0, v0, Le/a/b/a/a/d/b$a;->a:Le/a/b/a/a/d/b;

    .line 3
    iget-object v0, v0, Le/a/b/a/a/d/b;->c:Ln3/v/k0;

    .line 4
    instance-of v1, p1, Le/a/b/l/q$b;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Le/a/b/l/l;

    invoke-direct {v0, p1}, Le/a/b/l/l;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
