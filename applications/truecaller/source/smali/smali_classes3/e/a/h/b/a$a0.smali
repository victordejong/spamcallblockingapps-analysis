.class public final Le/a/h/b/a$a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;->om(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/a;


# direct methods
.method public constructor <init>(Le/a/h/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/a$a0;->a:Le/a/h/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a00ad

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/h/b/a$a0;->a:Le/a/h/b/a;

    invoke-static {p1}, Le/a/h/b/a;->a(Le/a/h/b/a;)Le/a/h/b/v$a;

    move-result-object p1

    invoke-interface {p1}, Le/a/h/b/v$a;->M4()V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method
