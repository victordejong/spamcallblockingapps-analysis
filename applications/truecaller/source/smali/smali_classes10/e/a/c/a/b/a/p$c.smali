.class public final Le/a/c/a/b/a/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/b/a/p;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/b/a/p;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/p;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/p$c;->a:Le/a/c/a/b/a/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/a/b/a/p$c;->a:Le/a/c/a/b/a/p;

    invoke-virtual {v0}, Le/m/a/g/e/e;->dismissAllowingStateLoss()V

    return-void
.end method
