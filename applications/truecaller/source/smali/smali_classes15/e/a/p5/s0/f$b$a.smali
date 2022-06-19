.class public final Le/a/p5/s0/f$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/s0/f$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.utils.extensions.ContentResolverUtils$queryCancellable$2$1"
    f = "ContentResolvers.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/p5/s0/f$b;


# direct methods
.method public constructor <init>(Le/a/p5/s0/f$b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/s0/f$b$a;->e:Le/a/p5/s0/f$b;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/p5/s0/f$b$a;

    iget-object v0, p0, Le/a/p5/s0/f$b$a;->e:Le/a/p5/s0/f$b;

    invoke-direct {p1, v0, p2}, Le/a/p5/s0/f$b$a;-><init>(Le/a/p5/s0/f$b;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/p5/s0/f$b$a;->e:Le/a/p5/s0/f$b;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_0
    iget-object p2, v0, Le/a/p5/s0/f$b;->h:Ls1/z/c/c0;

    iget-object v1, v0, Le/a/p5/s0/f$b;->g:Landroid/content/ContentResolver;

    iget-object v2, v0, Le/a/p5/s0/f$b;->i:Landroid/net/Uri;

    iget-object v3, v0, Le/a/p5/s0/f$b;->j:[Ljava/lang/String;

    iget-object v4, v0, Le/a/p5/s0/f$b;->k:Ljava/lang/String;

    iget-object v5, v0, Le/a/p5/s0/f$b;->l:[Ljava/lang/String;

    iget-object v6, v0, Le/a/p5/s0/f$b;->m:Ljava/lang/String;

    iget-object v7, v0, Le/a/p5/s0/f$b;->n:Landroid/os/CancellationSignal;

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/p5/s0/f$b$a;->e:Le/a/p5/s0/f$b;

    iget-object v0, p1, Le/a/p5/s0/f$b;->h:Ls1/z/c/c0;

    iget-object v1, p1, Le/a/p5/s0/f$b;->g:Landroid/content/ContentResolver;

    iget-object v2, p1, Le/a/p5/s0/f$b;->i:Landroid/net/Uri;

    iget-object v3, p1, Le/a/p5/s0/f$b;->j:[Ljava/lang/String;

    iget-object v4, p1, Le/a/p5/s0/f$b;->k:Ljava/lang/String;

    iget-object v5, p1, Le/a/p5/s0/f$b;->l:[Ljava/lang/String;

    iget-object v6, p1, Le/a/p5/s0/f$b;->m:Ljava/lang/String;

    iget-object v7, p1, Le/a/p5/s0/f$b;->n:Landroid/os/CancellationSignal;

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    iput-object p1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :catch_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
