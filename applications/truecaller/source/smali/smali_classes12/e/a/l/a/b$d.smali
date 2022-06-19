.class public final Le/a/l/a/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/a/b;


# direct methods
.method public constructor <init>(Le/a/l/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/l/a/b$d;->a:Le/a/l/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/l/a/b$d;->a:Le/a/l/a/b;

    new-instance v0, Le/a/l/a/b$d$a;

    invoke-direct {v0, p0}, Le/a/l/a/b$d$a;-><init>(Le/a/l/a/b$d;)V

    .line 2
    sget v1, Le/a/l/a/b;->p:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Le/a/b0/q/s;->c()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5
    iput-object v0, p1, Le/a/l/a/b;->g:Ls1/z/b/l;

    return-void
.end method
