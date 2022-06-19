.class public final Le/a/p5/s0/f$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p5/s0/f;->A(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.utils.extensions.ContentResolverUtils$queryCancellable$2"
    f = "ContentResolvers.kt"
    l = {
        0x28
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Landroid/content/ContentResolver;

.field public final synthetic h:Ls1/z/c/c0;

.field public final synthetic i:Landroid/net/Uri;

.field public final synthetic j:[Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;

.field public final synthetic l:[Ljava/lang/String;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Landroid/os/CancellationSignal;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Ls1/z/c/c0;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/s0/f$b;->g:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/p5/s0/f$b;->h:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/p5/s0/f$b;->i:Landroid/net/Uri;

    iput-object p4, p0, Le/a/p5/s0/f$b;->j:[Ljava/lang/String;

    iput-object p5, p0, Le/a/p5/s0/f$b;->k:Ljava/lang/String;

    iput-object p6, p0, Le/a/p5/s0/f$b;->l:[Ljava/lang/String;

    iput-object p7, p0, Le/a/p5/s0/f$b;->m:Ljava/lang/String;

    iput-object p8, p0, Le/a/p5/s0/f$b;->n:Landroid/os/CancellationSignal;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p9}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 11
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p5/s0/f$b;

    iget-object v2, p0, Le/a/p5/s0/f$b;->g:Landroid/content/ContentResolver;

    iget-object v3, p0, Le/a/p5/s0/f$b;->h:Ls1/z/c/c0;

    iget-object v4, p0, Le/a/p5/s0/f$b;->i:Landroid/net/Uri;

    iget-object v5, p0, Le/a/p5/s0/f$b;->j:[Ljava/lang/String;

    iget-object v6, p0, Le/a/p5/s0/f$b;->k:Ljava/lang/String;

    iget-object v7, p0, Le/a/p5/s0/f$b;->l:[Ljava/lang/String;

    iget-object v8, p0, Le/a/p5/s0/f$b;->m:Ljava/lang/String;

    iget-object v9, p0, Le/a/p5/s0/f$b;->n:Landroid/os/CancellationSignal;

    move-object v1, v0

    move-object v10, p2

    invoke-direct/range {v1 .. v10}, Le/a/p5/s0/f$b;-><init>(Landroid/content/ContentResolver;Ls1/z/c/c0;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;Ls1/w/d;)V

    iput-object p1, v0, Le/a/p5/s0/f$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/p5/s0/f$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/p5/s0/f$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/p5/s0/f$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/p5/s0/f$b;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/p5/s0/f$b;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lq3/a/i0;

    const/4 p1, 0x0

    .line 4
    invoke-static {p1, v2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Le/a/p5/s0/f$b$a;

    invoke-direct {v6, p0, p1}, Le/a/p5/s0/f$b$a;-><init>(Le/a/p5/s0/f$b;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    iput v2, p0, Le/a/p5/s0/f$b;->f:I

    .line 5
    check-cast p1, Lq3/a/o0;

    .line 6
    invoke-virtual {p1, p0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
