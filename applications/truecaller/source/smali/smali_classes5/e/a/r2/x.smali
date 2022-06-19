.class public abstract Le/a/r2/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static h(Ljava/lang/Object;)Le/a/r2/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;)",
            "Le/a/r2/x<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/r2/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/r2/y;-><init>(Ljava/lang/Object;Le/a/r2/c0;)V

    return-object v0
.end method


# virtual methods
.method public abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Le/a/r2/d0<",
            "TR;>;)",
            "Le/a/r2/a;"
        }
    .end annotation
.end method

.method public abstract f(Le/a/r2/d0;)Le/a/r2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/d0<",
            "TR;>;)",
            "Le/a/r2/a;"
        }
    .end annotation
.end method

.method public abstract g()V
.end method
