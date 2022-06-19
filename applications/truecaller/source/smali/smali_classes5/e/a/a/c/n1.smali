.class public final synthetic Le/a/a/c/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$b;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/n1;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Le/a/a/c/n1;->a:Le/a/a/c/y3;

    .line 1
    invoke-virtual {v0, p1}, Le/a/a/c/y3;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 p1, 0x0

    return p1
.end method
