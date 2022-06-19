.class public final Le/a/l/c/a/l2$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/l2;-><init>(Landroid/view/View;Le/a/o2/m;Ln3/v/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/l/v2/f/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/c/a/l2;

.field public final synthetic c:Le/a/o2/m;


# direct methods
.method public constructor <init>(Le/a/l/c/a/l2;Le/a/o2/m;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/l2$a;->b:Le/a/l/c/a/l2;

    iput-object p2, p0, Le/a/l/c/a/l2$a;->c:Le/a/o2/m;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v6, p1

    check-cast v6, Le/a/l/v2/f/b;

    const-string p1, "state"

    .line 2
    invoke-static {v6, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/l/c/a/l2$a;->c:Le/a/o2/m;

    new-instance v7, Le/a/o2/h;

    iget-object v0, p0, Le/a/l/c/a/l2$a;->b:Le/a/l/c/a/l2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v2

    iget-object v0, p0, Le/a/l/c/a/l2$a;->b:Le/a/l/c/a/l2;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v0

    int-to-long v3, v0

    iget-object v0, p0, Le/a/l/c/a/l2$a;->b:Le/a/l/c/a/l2;

    iget-object v5, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v0, "this.itemView"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ItemEvent.COUNT_DOWN_TIMER_STATE_CHANGED"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/a/o2/h;-><init>(Ljava/lang/String;IJLandroid/view/View;Ljava/lang/Object;)V

    invoke-interface {p1, v7}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
