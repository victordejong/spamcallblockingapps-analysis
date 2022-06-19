.class public final Ln3/z/e2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ln3/z/q;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Ln3/z/f2;

.field public final synthetic c:Ln3/z/c2;


# direct methods
.method public constructor <init>(Ln3/z/f2;Ln3/z/c2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/c2;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/e2;->b:Ln3/z/f2;

    iput-object p2, p0, Ln3/z/e2;->c:Ln3/z/c2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/z/e2;->a:Z

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ln3/z/q;

    const-string v0, "loadStates"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Ln3/z/e2;->a:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Ln3/z/e2;->a:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p1, Ln3/z/q;->d:Ln3/z/s0;

    .line 6
    iget-object p1, p1, Ln3/z/s0;->a:Ln3/z/r0;

    .line 7
    instance-of p1, p1, Ln3/z/r0$c;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Ln3/z/e2;->c:Ln3/z/c2;

    invoke-virtual {p1}, Ln3/z/c2;->a()V

    .line 9
    iget-object p1, p0, Ln3/z/e2;->b:Ln3/z/f2;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "listener"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Ln3/z/f2;->b:Ln3/z/g;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object p1, p1, Ln3/z/g;->c:Ln3/z/g$a;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p1, p1, Ln3/z/g2;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
