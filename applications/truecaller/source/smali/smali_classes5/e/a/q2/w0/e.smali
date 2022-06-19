.class public final Le/a/q2/w0/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/q2/w0/b;

.field public final synthetic c:Le/a/q2/w0/h/j;


# direct methods
.method public constructor <init>(Le/a/q2/w0/b;Le/a/q2/w0/h/j;)V
    .locals 0

    iput-object p1, p0, Le/a/q2/w0/e;->b:Le/a/q2/w0/b;

    iput-object p2, p0, Le/a/q2/w0/e;->c:Le/a/q2/w0/h/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/q2/w0/e;->b:Le/a/q2/w0/b;

    invoke-static {v0}, Le/a/q2/w0/b;->d(Le/a/q2/w0/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Le/a/q2/w0/e;->c:Le/a/q2/w0/h/j;

    invoke-interface {v1}, Le/a/q2/w0/h/j;->f()Le/a/f/y/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
