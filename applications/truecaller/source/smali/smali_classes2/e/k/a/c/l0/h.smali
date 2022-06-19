.class public abstract Le/k/a/c/l0/h;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/l0/t/q0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/k/a/c/i;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Le/k/a/c/l0/t/q0;-><init>(Le/k/a/c/i;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/h<",
            "*>;)V"
        }
    .end annotation

    .line 4
    iget-object p1, p1, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public abstract p(Le/k/a/c/j0/h;)Le/k/a/c/l0/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j0/h;",
            ")",
            "Le/k/a/c/l0/h<",
            "*>;"
        }
    .end annotation
.end method
