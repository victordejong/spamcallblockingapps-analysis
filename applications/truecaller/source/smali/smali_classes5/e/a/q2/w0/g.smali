.class public final Le/a/q2/w0/g;
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

    iput-object p1, p0, Le/a/q2/w0/g;->b:Le/a/q2/w0/b;

    iput-object p2, p0, Le/a/q2/w0/g;->c:Le/a/q2/w0/h/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/q2/w0/g;->b:Le/a/q2/w0/b;

    invoke-static {v0}, Le/a/q2/w0/b;->d(Le/a/q2/w0/b;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Le/a/q2/w0/g;->c:Le/a/q2/w0/h/j;

    invoke-interface {v1}, Le/a/q2/w0/h/j;->f()Le/a/f/y/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Le/a/q2/w0/g;->b:Le/a/q2/w0/b;

    new-instance v5, Le/a/q2/w0/f;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Le/a/q2/w0/f;-><init>(Le/a/q2/w0/g;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
