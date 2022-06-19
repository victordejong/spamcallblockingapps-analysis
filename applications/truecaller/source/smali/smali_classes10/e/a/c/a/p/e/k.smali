.class public final Le/a/c/a/p/e/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/k;->a:Le/a/c/a/p/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Le/a/c/a/p/e/k;->a:Le/a/c/a/p/e/f;

    .line 3
    sget-object v0, Le/a/c/a/p/e/f;->m:[Ls1/a/l;

    .line 4
    invoke-virtual {p1}, Le/a/c/a/p/e/f;->QA()Le/a/c/a/g/g0;

    move-result-object p1

    .line 5
    iget-object p1, p1, Le/a/c/a/g/g0;->i:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 6
    iget-object p1, p0, Le/a/c/a/p/e/k;->a:Le/a/c/a/p/e/f;

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v0

    new-instance v3, Le/a/c/a/p/e/g;

    const/4 v1, 0x0

    invoke-direct {v3, p1, v1}, Le/a/c/a/p/e/g;-><init>(Le/a/c/a/p/e/f;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
