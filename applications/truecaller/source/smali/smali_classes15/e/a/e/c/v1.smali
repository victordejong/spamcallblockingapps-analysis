.class public Le/a/e/c/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/d/i;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/c/v1;->a:Le/a/e/c/s1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/i/c/a/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c/v1;->a:Le/a/e/c/s1;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/e/c/v1;->a:Le/a/e/c/s1;

    .line 4
    iput-object p1, v0, Le/a/e/c/s1;->D1:Le/a/i/c/a/c;

    .line 5
    invoke-static {v0}, Le/a/e/c/s1;->YA(Le/a/e/c/s1;)V

    :cond_0
    return-void
.end method

.method public b(Le/a/i/c/b/a;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/c/v1;->a:Le/a/e/c/s1;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Le/a/e/c/s1;->D1:Le/a/i/c/a/c;

    return-void
.end method
