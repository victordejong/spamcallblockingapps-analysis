.class public final Le/a/h/b/d/a/b/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/a/b/r;-><init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/d/a/b/r;

.field public final synthetic b:Le/a/o2/m;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/b/r;Le/a/o2/m;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/a/b/r$a;->a:Le/a/h/b/d/a/b/r;

    iput-object p2, p0, Le/a/h/b/d/a/b/r$a;->b:Le/a/o2/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/h/b/d/a/b/r$a;->b:Le/a/o2/m;

    new-instance v6, Le/a/o2/h;

    iget-object v2, p0, Le/a/h/b/d/a/b/r$a;->a:Le/a/h/b/d/a/b/r;

    const-string v1, "ItemEvent.CLICKED"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/o2/h;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/view/View;Ljava/lang/Object;I)V

    invoke-interface {p1, v6}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/a/h/b/d/a/b/r$a;->a:Le/a/h/b/d/a/b/r;

    .line 3
    iget-object p1, p1, Le/a/h/b/d/a/b/r;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/ui/ProgressAwareFlashButton;

    .line 4
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->callOnClick()Z

    :cond_0
    return-void
.end method
