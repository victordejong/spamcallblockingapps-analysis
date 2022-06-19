.class public final Le/m/a/h/a/g/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/c;

.field public final synthetic b:Le/m/a/h/a/g/i;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/i;Le/m/a/h/a/g/c;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/g/u0;->b:Le/m/a/h/a/g/i;

    iput-object p2, p0, Le/m/a/h/a/g/u0;->a:Le/m/a/h/a/g/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Le/m/a/h/a/g/u0;->b:Le/m/a/h/a/g/i;

    .line 1
    iget-object v0, v0, Le/m/a/h/a/g/i;->b:Le/m/a/h/a/g/t0;

    .line 2
    iget-object v1, p0, Le/m/a/h/a/g/u0;->a:Le/m/a/h/a/g/c;

    .line 3
    iget-object v2, v1, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 4
    iget-object v1, v1, Le/m/a/h/a/g/c;->b:Ljava/util/List;

    .line 5
    invoke-static {v1}, Le/m/a/h/a/g/i;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 6
    new-instance v3, Landroid/os/Bundle;

    .line 7
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "session_id"

    const/4 v5, 0x0

    .line 8
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x5

    const-string v6, "status"

    .line 9
    invoke-virtual {v3, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "error_code"

    .line 10
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "module_names"

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 13
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "languages"

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_1
    const-string v1, "total_bytes_to_download"

    const-wide/16 v4, 0x0

    .line 15
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "bytes_downloaded"

    .line 16
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 17
    invoke-static {v3}, Le/m/a/h/a/g/d;->m(Landroid/os/Bundle;)Le/m/a/h/a/g/d;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Le/m/a/h/a/g/t0;->e(Le/m/a/h/a/g/d;)V

    return-void
.end method
