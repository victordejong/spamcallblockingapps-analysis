.class public final Le/a/r/c/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/c/f;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/r/c/f;


# direct methods
.method public constructor <init>(Le/a/r/c/f;)V
    .locals 0

    iput-object p1, p0, Le/a/r/c/f$a;->a:Le/a/r/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Le/a/r/c/f$a;->a:Le/a/r/c/f;

    .line 2
    iget-object p2, p2, Le/a/r/c/f;->a:Le/a/r/c/e;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Le/a/r/c/e;->j0()V

    .line 4
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
