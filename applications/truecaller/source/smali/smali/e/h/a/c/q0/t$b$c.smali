.class public Le/h/a/c/q0/t$b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/t$b;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/q0/t$b;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/t$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/t$b$c;->a:Le/h/a/c/q0/t$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/q0/t$b$c;->a:Le/h/a/c/q0/t$b;

    iget-object v0, v0, Le/h/a/c/q0/t$b;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2
    iget-object v1, p0, Le/h/a/c/q0/t$b$c;->a:Le/h/a/c/q0/t$b;

    iget-object v2, v1, Le/h/a/c/q0/t$b;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    iget-object v1, v1, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 3
    iget-object v1, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 4
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 5
    iget-object v1, p0, Le/h/a/c/q0/t$b$c;->a:Le/h/a/c/q0/t$b;

    iget-object v2, v1, Le/h/a/c/q0/t$b;->a:Lcom/clevertap/android/sdk/customviews/CloseImageView;

    iget-object v1, v1, Le/h/a/c/q0/t$b;->b:Le/h/a/c/q0/t;

    .line 6
    iget-object v1, v1, Le/h/a/c/q0/t;->h:Landroid/widget/RelativeLayout;

    .line 7
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
