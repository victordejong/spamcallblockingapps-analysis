.class public final synthetic Le/a/r/x/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/n/i;


# instance fields
.field public final synthetic a:Le/a/r/x/n;


# direct methods
.method public synthetic constructor <init>(Le/a/r/x/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/x/d;->a:Le/a/r/x/n;

    return-void
.end method


# virtual methods
.method public final a(Le/a/b0/n/h;)V
    .locals 4

    iget-object v0, p0, Le/a/r/x/d;->a:Le/a/r/x/n;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Le/a/r/t/e;->b0()V

    .line 3
    iget-boolean v1, p1, Le/a/b0/n/h;->a:Z

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Le/a/r/t/e;->a0()V

    .line 5
    invoke-virtual {v0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r/t/c;->za()V

    .line 6
    iget-object p1, v0, Le/a/r/x/n;->l:Le/a/r/c/o;

    new-instance v1, Le/a/r/x/b;

    invoke-direct {v1, v0}, Le/a/r/x/b;-><init>(Le/a/r/x/n;)V

    invoke-interface {p1, v1}, Le/a/r/c/o;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v0, Le/a/r/x/n;->i:Le/a/r/q/c;

    const-string v2, "SaveProfile"

    const-string v3, "Failed"

    invoke-interface {v1, v2, v3}, Le/a/r/q/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Le/a/r/x/n;->n:Le/a/r/x/y/a;

    .line 9
    iget v3, p1, Le/a/b0/n/h;->b:I

    .line 10
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Le/a/r/x/y/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v1, v0, Le/a/r/x/n;->o:Le/a/b0/n/b;

    invoke-virtual {v1, p1}, Le/a/b0/n/b;->a(Le/a/b0/n/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/r/t/e;->m(Ljava/lang/String;)V

    .line 12
    instance-of p1, p1, Le/a/b0/n/h$g;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {v0}, Le/a/r/x/n;->XA()V

    :cond_2
    :goto_0
    return-void
.end method
