.class public Le/l/a/d$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/l/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/l/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/l/a/d;


# direct methods
.method public constructor <init>(Le/l/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/d$i;->a:Le/l/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/l/a/d$i;->a:Le/l/a/d;

    .line 2
    sget v1, Le/l/a/d;->A0:I

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Le/l/a/d;->g(Z)V

    .line 4
    iget-object v1, v0, Le/l/a/d;->p:Landroid/view/ViewManager;

    if-eqz v1, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
