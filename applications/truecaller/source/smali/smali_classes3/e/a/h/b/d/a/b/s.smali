.class public final Le/a/h/b/d/a/b/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton$b;


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView$c0;

.field public final synthetic b:Le/a/o2/m;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$c0;Le/a/o2/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/h/b/d/a/b/s;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    iput-object p2, p0, Le/a/h/b/d/a/b/s;->b:Le/a/o2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/b/s;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Le/a/h/b/d/a/b/s$a;

    invoke-direct {v1, p0}, Le/a/h/b/d/a/b/s$a;-><init>(Le/a/h/b/d/a/b/s;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
