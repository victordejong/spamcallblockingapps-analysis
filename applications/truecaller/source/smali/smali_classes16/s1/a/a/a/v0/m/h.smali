.class public abstract Ls1/a/a/a/v0/m/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/n1/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/m/h$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ls1/a/a/a/v0/m/n1/i;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ls1/a/a/a/v0/m/n1/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C(Ls1/a/a/a/v0/m/n1/h;Ls1/a/a/a/v0/m/n1/h;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "subType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "superType"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final D()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/h;->c:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/m/h;->d:Ljava/util/Set;

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ls1/a/a/a/v0/m/h;->b:Z

    return-void
.end method

.method public abstract E(Ls1/a/a/a/v0/m/n1/i;Ls1/a/a/a/v0/m/n1/l;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/n1/i;",
            "Ls1/a/a/a/v0/m/n1/l;",
            ")",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/n1/i;",
            ">;"
        }
    .end annotation
.end method

.method public abstract F(Ls1/a/a/a/v0/m/n1/j;I)Ls1/a/a/a/v0/m/n1/k;
.end method

.method public abstract G(Ls1/a/a/a/v0/m/n1/i;I)Ls1/a/a/a/v0/m/n1/k;
.end method

.method public abstract H(Ls1/a/a/a/v0/m/n1/h;)Z
.end method

.method public final I()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ls1/a/a/a/v0/m/h;->b:Z

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/m/h;->c:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Ls1/a/a/a/v0/m/h;->c:Ljava/util/ArrayDeque;

    .line 4
    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/m/h;->d:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Ls1/a/a/a/v0/o/m$b;->a()Ls1/a/a/a/v0/o/m;

    move-result-object v0

    iput-object v0, p0, Ls1/a/a/a/v0/m/h;->d:Ljava/util/Set;

    :cond_1
    return-void
.end method

.method public abstract J(Ls1/a/a/a/v0/m/n1/i;)Z
.end method

.method public abstract K(Ls1/a/a/a/v0/m/n1/h;)Z
.end method

.method public abstract L(Ls1/a/a/a/v0/m/n1/h;)Z
.end method

.method public abstract M()Z
.end method

.method public abstract N(Ls1/a/a/a/v0/m/n1/i;)Z
.end method

.method public abstract O(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;
.end method

.method public abstract P(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/h;
.end method

.method public abstract Q(Ls1/a/a/a/v0/m/n1/i;)Ls1/a/a/a/v0/m/h$a;
.end method

.method public abstract d(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
.end method

.method public abstract i(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/l;
.end method

.method public abstract k(Ls1/a/a/a/v0/m/n1/h;)Ls1/a/a/a/v0/m/n1/i;
.end method
