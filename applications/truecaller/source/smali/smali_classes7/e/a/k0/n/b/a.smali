.class public final synthetic Le/a/k0/n/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/n/b/a;->a:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Le/a/k0/n/b/a;->a:Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;

    .line 1
    invoke-virtual {p1}, Le/a/k0/n/b/f;->getLayoutCoordinator()Le/a/k0/n/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Le/a/k0/n/b/h;->b(Lcom/truecaller/callrecording/ui/bubble/BubbleLayout;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
