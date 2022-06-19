.class public final synthetic Le/a/e/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/f/g0$b;


# instance fields
.field public final synthetic a:Le/a/e/c/l1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/f;->a:Le/a/e/c/l1;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Le/a/e/c/f;->a:Le/a/e/c/l1;

    .line 1
    iget-object v1, v0, Le/a/e/c/l1;->e:Ln3/b/e/a;

    invoke-virtual {v0, v1, p1}, Le/a/e/c/l1;->sd(Ln3/b/e/a;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
