.class public abstract Le/k/a/c/l0/s/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/l0/s/l$c;,
        Le/k/a/c/l0/s/l$a;,
        Le/k/a/c/l0/s/l$e;,
        Le/k/a/c/l0/s/l$b;,
        Le/k/a/c/l0/s/l$f;,
        Le/k/a/c/l0/s/l$d;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Le/k/a/c/l0/s/l;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-boolean p1, p1, Le/k/a/c/l0/s/l;->a:Z

    iput-boolean p1, p0, Le/k/a/c/l0/s/l;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Le/k/a/c/l0/s/l;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Le/k/a/c/i;Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/l0/s/l$d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1, p3}, Le/k/a/c/a0;->u(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p2

    .line 2
    new-instance p3, Le/k/a/c/l0/s/l$d;

    .line 3
    iget-object p1, p1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/s/l;->b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Le/k/a/c/l0/s/l$d;-><init>(Le/k/a/c/n;Le/k/a/c/l0/s/l;)V

    return-object p3
.end method

.method public abstract b(Ljava/lang/Class;Le/k/a/c/n;)Le/k/a/c/l0/s/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;)",
            "Le/k/a/c/l0/s/l;"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/Class;)Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
