.class public final synthetic Le/a/e/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/e/m1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public synthetic constructor <init>(Le/a/e/m1;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/q;->a:Le/a/e/m1;

    iput-object p2, p0, Le/a/e/q;->b:Landroid/view/View;

    iput-object p3, p0, Le/a/e/q;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/a/e/q;->a:Le/a/e/m1;

    iget-object v1, p0, Le/a/e/q;->b:Landroid/view/View;

    iget-object v2, p0, Le/a/e/q;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    .line 4
    :cond_0
    invoke-virtual {v0, v2}, Le/a/e/m1;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
