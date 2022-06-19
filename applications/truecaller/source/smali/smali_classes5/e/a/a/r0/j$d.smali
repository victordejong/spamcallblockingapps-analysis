.class public final Le/a/a/r0/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/j;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/r0/j;


# direct methods
.method public constructor <init>(Le/a/a/r0/j;)V
    .locals 0

    iput-object p1, p0, Le/a/a/r0/j$d;->a:Le/a/a/r0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/r0/j$d;->a:Le/a/a/r0/j;

    const-string v1, "item"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Le/a/a/r0/j;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 p1, 0x1

    return p1
.end method
