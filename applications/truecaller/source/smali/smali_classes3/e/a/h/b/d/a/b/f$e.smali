.class public final Le/a/h/b/d/a/b/f$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/a/b/f;->i1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/b/d/a/b/f;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/b/f;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/a/b/f$e;->b:Le/a/h/b/d/a/b/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/b/f$e;->b:Le/a/h/b/d/a/b/f;

    .line 2
    iget-object v1, v0, Le/a/h/b/d/a/b/f;->f:Le/a/o2/m;

    .line 3
    new-instance v2, Le/a/o2/h;

    .line 4
    iget-object v3, v0, Le/a/h/b/d/a/b/f;->e:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 5
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v5, "ItemEvent.ACTION_TCX_TOOLTIP_DISMISSED"

    invoke-direct {v2, v5, v0, v3, v4}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    .line 6
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
