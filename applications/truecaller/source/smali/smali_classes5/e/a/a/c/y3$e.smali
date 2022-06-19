.class public Le/a/a/c/y3$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/y3;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Le/a/a/c/y3;


# direct methods
.method public constructor <init>(Le/a/a/c/y3;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/y3$e;->b:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/y3$e;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Iq()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/y3$e;->b:Le/a/a/c/y3;

    iget-object v0, v0, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/a/c/f4;->kh(Z)V

    return-void
.end method

.method public Ys()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/y3$e;->a:Landroid/view/View;

    new-instance v1, Le/a/a/c/z;

    invoke-direct {v1, p0}, Le/a/a/c/z;-><init>(Le/a/a/c/y3$e;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
