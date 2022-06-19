.class public final Le/a/n/c$c;
.super Ln3/b/a/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/c;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic c:Le/a/n/c;


# direct methods
.method public constructor <init>(Le/a/n/c;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/n/c$c;->c:Le/a/n/c;

    invoke-direct {p0, p2, p3}, Ln3/b/a/p;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 2
    iget-object v0, p0, Le/a/n/c$c;->c:Le/a/n/c;

    invoke-virtual {v0}, Le/a/n/c;->OA()Le/a/n/r;

    move-result-object v0

    invoke-interface {v0}, Le/a/n/r;->onBackPressed()V

    return-void
.end method
