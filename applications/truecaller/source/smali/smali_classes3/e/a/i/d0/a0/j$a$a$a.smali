.class public final Le/a/i/d0/a0/j$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/a0/j$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/d0/a0/j$a$a;

.field public final synthetic b:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Le/a/i/d0/a0/j$a$a;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/j$a$a$a;->a:Le/a/i/d0/a0/j$a$a;

    iput-object p2, p0, Le/a/i/d0/a0/j$a$a$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/d0/a0/j$a$a$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Le/a/i/d0/a0/j$a$a$a;->a:Le/a/i/d0/a0/j$a$a;

    iget-object v1, v1, Le/a/i/d0/a0/j$a$a;->a:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Le/a/i/d0/a0/j$a$a$a;->a:Le/a/i/d0/a0/j$a$a;

    iget-object v2, v2, Le/a/i/d0/a0/j$a$a;->b:Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2
    iget-object v0, p0, Le/a/i/d0/a0/j$a$a$a;->a:Le/a/i/d0/a0/j$a$a;

    iget-object v0, v0, Le/a/i/d0/a0/j$a$a;->b:Lcom/facebook/ads/AdOptionsView;

    iget-object v1, p0, Le/a/i/d0/a0/j$a$a$a;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/api/AdComponentFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
