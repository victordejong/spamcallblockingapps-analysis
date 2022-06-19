.class Lg/f/a/e/n/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/a/e/n/a;->w(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/view/View;

.field final synthetic g:Landroid/widget/FrameLayout;

.field final synthetic h:Lg/f/a/e/n/a;


# direct methods
.method constructor <init>(Lg/f/a/e/n/a;Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/a/e/n/a$a;->h:Lg/f/a/e/n/a;

    iput-object p2, p0, Lg/f/a/e/n/a$a;->f:Landroid/view/View;

    iput-object p3, p0, Lg/f/a/e/n/a$a;->g:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/f/a/e/n/a$a;->h:Lg/f/a/e/n/a;

    iget-object v1, p0, Lg/f/a/e/n/a$a;->f:Landroid/view/View;

    iget-object v2, p0, Lg/f/a/e/n/a$a;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Lg/f/a/e/n/a;->y(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method
