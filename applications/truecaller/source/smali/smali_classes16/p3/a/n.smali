.class public final Lp3/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lp3/a/n;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lp3/a/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lp3/a/n;

    const/4 v1, 0x2

    new-array v1, v1, [Lp3/a/m;

    new-instance v2, Lp3/a/k$a;

    invoke-direct {v2}, Lp3/a/k$a;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lp3/a/k$b;->a:Lp3/a/k;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lp3/a/n;-><init>([Lp3/a/m;)V

    sput-object v0, Lp3/a/n;->b:Lp3/a/n;

    return-void
.end method

.method public varargs constructor <init>([Lp3/a/m;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lp3/a/n;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 4
    iget-object v3, p0, Lp3/a/n;->a:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Lp3/a/m;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
