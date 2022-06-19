.class public final synthetic Le/a/r/x/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/r/x/n;


# direct methods
.method public synthetic constructor <init>(Le/a/r/x/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/x/b;->a:Le/a/r/x/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Le/a/r/x/b;->a:Le/a/r/x/n;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Le/a/r/t/e;->b0()V

    .line 3
    iget-object v1, v0, Le/a/r/x/n;->p:Le/a/r/x/k;

    invoke-virtual {v1}, Le/a/r/x/k;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    const-string v1, "Page_AdsChoices"

    .line 5
    invoke-virtual {v0, v1, v2}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, v0, Le/a/r/x/n;->m:Le/a/r/g$a;

    invoke-virtual {v1}, Le/a/r/g$a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    const-string v1, "Page_AccessContacts"

    .line 8
    invoke-virtual {v0, v1, v2}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v1

    .line 10
    iget-object v1, v1, Le/a/r/t/c;->e:Ljava/util/Map;

    const-string v3, "Page_DrawPermission"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v1, v0, Le/a/r/t/e;->f:Le/a/p5/a0;

    invoke-interface {v1}, Le/a/p5/a0;->k()Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {v0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    .line 13
    invoke-virtual {v0, v3, v2}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r/t/c;->ra()V

    :goto_0
    return-void
.end method
