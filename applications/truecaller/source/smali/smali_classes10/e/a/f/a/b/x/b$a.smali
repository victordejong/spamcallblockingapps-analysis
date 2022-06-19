.class public final Le/a/f/a/b/x/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/f/a/b/x/b;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/f/a/b/x/b;


# direct methods
.method public constructor <init>(Le/a/f/a/b/x/b;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/x/b$a;->a:Le/a/f/a/b/x/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/f/a/b/x/b$a;->a:Le/a/f/a/b/x/b;

    .line 2
    iget-object p1, p1, Le/a/f/a/b/x/b;->e:Le/a/f/a/b/x/d;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/a/f/a/b/x/d;->b:Le/a/f/y/c;

    invoke-interface {p1}, Le/a/f/y/c;->r()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
