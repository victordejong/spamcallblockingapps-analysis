.class public final synthetic Le/a/e/a/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/c1;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Le/a/e/a/c1;->a:Le/a/e/a/k3;

    .line 1
    invoke-virtual {v0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v3, Lq3/a/h1;->a:Lq3/a/h1;

    .line 4
    sget-object v2, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v4, Lq3/a/y2/q;->c:Lq3/a/y1;

    const/4 v5, 0x0

    .line 5
    new-instance v6, Le/a/n3/a/c;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Le/a/n3/a/c;-><init>(Landroid/content/Context;Ls1/w/d;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v1

    .line 6
    new-instance v2, Le/a/e/a/l3;

    invoke-direct {v2, v0}, Le/a/e/a/l3;-><init>(Le/a/e/a/k3;)V

    check-cast v1, Lq3/a/u1;

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v1, v0, v3, v2}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    return-void
.end method
