.class public final Le/a/i/d0/a0/j$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d0/a0/j$a;->d(Landroid/view/View;Landroid/widget/ImageView;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/facebook/ads/AdOptionsView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/AdOptionsView;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/a0/j$a$a;->a:Landroid/view/View;

    iput-object p2, p0, Le/a/i/d0/a0/j$a$a;->b:Lcom/facebook/ads/AdOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2
    iget-object v1, p0, Le/a/i/d0/a0/j$a$a;->a:Landroid/view/View;

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Le/a/i/d0/a0/j$a$a;->b:Lcom/facebook/ads/AdOptionsView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    iget-object v1, p0, Le/a/i/d0/a0/j$a$a;->b:Lcom/facebook/ads/AdOptionsView;

    new-instance v2, Le/a/i/d0/a0/j$a$a$a;

    invoke-direct {v2, p0, v0}, Le/a/i/d0/a0/j$a$a$a;-><init>(Le/a/i/d0/a0/j$a$a;Landroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
