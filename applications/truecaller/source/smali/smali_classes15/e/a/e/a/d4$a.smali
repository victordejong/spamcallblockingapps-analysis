.class public final Le/a/e/a/d4$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/d4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/CharSequence;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e/a/d4;

.field public final synthetic c:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/e/a/d4;Ls1/z/c/c0;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/d4$a;->b:Le/a/e/a/d4;

    iput-object p2, p0, Le/a/e/a/d4$a;->c:Ls1/z/c/c0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Le/a/e/a/d4$a;->c:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Lq3/a/p1;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/e/a/d4$a;->c:Ls1/z/c/c0;

    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 4
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    const/4 v3, 0x0

    .line 5
    new-instance v4, Le/a/e/a/c4;

    invoke-direct {v4, p0, v0}, Le/a/e/a/c4;-><init>(Le/a/e/a/d4$a;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
