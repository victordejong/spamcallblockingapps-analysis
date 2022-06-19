.class public final Ls1/a/a/a/v0/b/j1/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ls1/a/a/a/v0/f/a;",
            "Ls1/a/a/a/v0/j/y/i;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/a/a/a/v0/d/b/d;

.field public final c:Ls1/a/a/a/v0/b/j1/a/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/d;Ls1/a/a/a/v0/b/j1/a/f;)V
    .locals 1

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/a/a;->b:Ls1/a/a/a/v0/d/b/d;

    iput-object p2, p0, Ls1/a/a/a/v0/b/j1/a/a;->c:Ls1/a/a/a/v0/b/j1/a/f;

    .line 2
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/a/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
