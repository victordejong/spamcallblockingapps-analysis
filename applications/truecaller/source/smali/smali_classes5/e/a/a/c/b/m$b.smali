.class public final Le/a/a/c/b/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/b/m;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/b/m;


# direct methods
.method public constructor <init>(Le/a/a/c/b/m;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/b/m$b;->a:Le/a/a/c/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/a/c/b/m$b;->a:Le/a/a/c/b/m;

    invoke-virtual {p1}, Le/a/a/c/b/m;->OA()Le/a/a/c/b/n;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/c/b/n;->m()V

    return-void
.end method
