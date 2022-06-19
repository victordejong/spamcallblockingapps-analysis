.class public final Ln3/z/g$a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/g$a;->b(Ln3/z/z0;Ln3/z/z0;Ln3/z/q;ILs1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
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
        "Ln3/z/y0;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1"
    f = "AsyncPagingDataDiffer.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Ln3/z/g$a;

.field public final synthetic f:Ln3/z/z0;

.field public final synthetic g:Ln3/z/z0;


# direct methods
.method public constructor <init>(Ln3/z/g$a;Ln3/z/z0;Ln3/z/z0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/g$a$b;->e:Ln3/z/g$a;

    iput-object p2, p0, Ln3/z/g$a$b;->f:Ln3/z/z0;

    iput-object p3, p0, Ln3/z/g$a$b;->g:Ln3/z/z0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Ln3/z/g$a$b;

    iget-object v0, p0, Ln3/z/g$a$b;->e:Ln3/z/g$a;

    iget-object v1, p0, Ln3/z/g$a$b;->f:Ln3/z/z0;

    iget-object v2, p0, Ln3/z/g$a$b;->g:Ln3/z/z0;

    invoke-direct {p1, v0, v1, v2, p2}, Ln3/z/g$a$b;-><init>(Ln3/z/g$a;Ln3/z/z0;Ln3/z/z0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ln3/z/g$a$b;->e:Ln3/z/g$a;

    iget-object v0, p0, Ln3/z/g$a$b;->f:Ln3/z/z0;

    iget-object v1, p0, Ln3/z/g$a$b;->g:Ln3/z/z0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Ln3/z/g$a;->l:Ln3/z/g;

    .line 6
    iget-object p1, p1, Ln3/z/g;->f:Ln3/b0/a/h$e;

    .line 7
    invoke-static {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->B(Ln3/z/z0;Ln3/z/z0;Ln3/b0/a/h$e;)Ln3/z/y0;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Ln3/z/g$a$b;->f:Ln3/z/z0;

    iget-object v0, p0, Ln3/z/g$a$b;->g:Ln3/z/z0;

    iget-object v1, p0, Ln3/z/g$a$b;->e:Ln3/z/g$a;

    iget-object v1, v1, Ln3/z/g$a;->l:Ln3/z/g;

    .line 3
    iget-object v1, v1, Ln3/z/g;->f:Ln3/b0/a/h$e;

    .line 4
    invoke-static {p1, v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->B(Ln3/z/z0;Ln3/z/z0;Ln3/b0/a/h$e;)Ln3/z/y0;

    move-result-object p1

    return-object p1
.end method
