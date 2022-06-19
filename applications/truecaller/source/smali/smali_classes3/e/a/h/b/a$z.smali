.class public final Le/a/h/b/a$z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/a;->pm(Landroid/view/View;Le/a/h/b/w0/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/a;

.field public final synthetic b:Le/a/h/b/w0/c;


# direct methods
.method public constructor <init>(Le/a/h/b/a;Landroid/content/Context;Ljava/lang/String;Le/a/h/b/w0/c;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/a$z;->a:Le/a/h/b/a;

    iput-object p4, p0, Le/a/h/b/a$z;->b:Le/a/h/b/w0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "item"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a009d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const v0, 0x7f0a00b9

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/h/b/a$z;->a:Le/a/h/b/a;

    invoke-static {p1}, Le/a/h/b/a;->a(Le/a/h/b/a;)Le/a/h/b/v$a;

    move-result-object p1

    iget-object v0, p0, Le/a/h/b/a$z;->b:Le/a/h/b/w0/c;

    invoke-interface {p1, v0}, Le/a/h/b/v$a;->M7(Le/a/h/b/w0/c;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/h/b/a$z;->a:Le/a/h/b/a;

    invoke-static {p1}, Le/a/h/b/a;->a(Le/a/h/b/a;)Le/a/h/b/v$a;

    move-result-object p1

    iget-object v0, p0, Le/a/h/b/a$z;->b:Le/a/h/b/w0/c;

    invoke-interface {p1, v0}, Le/a/h/b/v$a;->Oe(Le/a/h/b/w0/c;)V

    :goto_0
    return v1
.end method
