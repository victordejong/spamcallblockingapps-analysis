.class public Le/n/b/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/b/k0;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/n/b/k0;


# direct methods
.method public constructor <init>(Le/n/b/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/b/k0$a;->a:Le/n/b/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/n/b/k0$a;->a:Le/n/b/k0;

    .line 2
    iget-boolean v1, v0, Le/n/b/k0;->i:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iput-boolean v2, v0, Le/n/b/k0;->i:Z

    .line 4
    iget-object v1, v0, Le/n/b/k0;->h:Landroid/os/Handler;

    iget-object v0, v0, Le/n/b/k0;->g:Le/n/b/k0$c;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v2
.end method
