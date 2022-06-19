.class public Le/a/r2/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r2/q$b;,
        Le/a/r2/q$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Le/a/r2/a0;

.field public final c:Le/a/r2/n;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Le/a/r2/a0;Le/a/r2/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/r2/q;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Le/a/r2/q;->b:Le/a/r2/a0;

    .line 4
    iput-object p3, p0, Le/a/r2/q;->c:Le/a/r2/n;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Le/a/r2/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/r2/q$c;

    iget-object v1, p0, Le/a/r2/q;->a:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Le/a/r2/q;->c:Le/a/r2/n;

    const/4 v3, 0x0

    invoke-direct {v0, p2, v1, v2, v3}, Le/a/r2/q$c;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;Le/a/r2/n;Le/a/r2/q$a;)V

    .line 2
    iget-object p2, p0, Le/a/r2/q;->b:Le/a/r2/a0;

    invoke-interface {p2, p1, v0}, Le/a/r2/a0;->a(Ljava/lang/Class;Le/a/r2/w;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/r2/g;

    invoke-direct {p2, p1}, Le/a/r2/g;-><init>(Ljava/lang/Object;)V

    return-object p2
.end method
