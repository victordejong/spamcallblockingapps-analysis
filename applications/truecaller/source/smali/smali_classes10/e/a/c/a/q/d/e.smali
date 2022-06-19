.class public final Le/a/c/a/q/d/e;
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
.field public final synthetic a:Le/a/c/a/q/d/b;


# direct methods
.method public constructor <init>(Le/a/c/a/q/d/b;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/q/d/e;->a:Le/a/c/a/q/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, Le/a/c/a/q/d/e;->a:Le/a/c/a/q/d/b;

    const-string v1, "isEmpty"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    sget-object v1, Le/a/c/a/q/d/b;->f:[Ls1/a/l;

    .line 4
    invoke-virtual {v0}, Le/a/c/a/q/d/b;->OA()Le/a/c/a/g/l0;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/l0;->a:Landroidx/constraintlayout/widget/Group;

    const-string v2, "binding.emptyState"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 5
    invoke-virtual {v0}, Le/a/c/a/q/d/b;->OA()Le/a/c/a/g/l0;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/l0;->c:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.updatesRv"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
