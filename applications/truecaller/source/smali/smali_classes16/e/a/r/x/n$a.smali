.class public Le/a/r/x/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/x/n;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/x/n;


# direct methods
.method public constructor <init>(Le/a/r/x/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/r/x/n$a;->a:Le/a/r/x/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Iq()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/x/n$a;->a:Le/a/r/x/n;

    .line 2
    iget-object v0, v0, Le/a/r/x/n;->K:Landroid/view/View;

    const/16 v1, 0x8

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Ys()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/x/n$a;->a:Le/a/r/x/n;

    .line 2
    iget-object v0, v0, Le/a/r/x/n;->K:Landroid/view/View;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
