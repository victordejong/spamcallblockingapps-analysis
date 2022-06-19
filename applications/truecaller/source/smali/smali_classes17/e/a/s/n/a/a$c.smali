.class public final Le/a/s/n/a/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/s/n/a/a;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/s/n/a/a;


# direct methods
.method public constructor <init>(Le/a/s/n/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/s/n/a/a$c;->a:Le/a/s/n/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s/n/a/a$c;->a:Le/a/s/n/a/a;

    const-string v1, "item"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Le/a/s/n/a/a;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 p1, 0x1

    return p1
.end method
