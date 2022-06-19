.class public final synthetic Le/m/a/h/a/g/g/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/a/h/a/g/g/a;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Le/m/a/h/a/g/g/a;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/h/a/g/g/l;->a:Le/m/a/h/a/g/g/a;

    iput-object p2, p0, Le/m/a/h/a/g/g/l;->b:Ljava/util/List;

    iput-object p3, p0, Le/m/a/h/a/g/g/l;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v1, p0, Le/m/a/h/a/g/g/l;->a:Le/m/a/h/a/g/g/a;

    iget-object v0, p0, Le/m/a/h/a/g/g/l;->b:Ljava/util/List;

    iget-object v6, p0, Le/m/a/h/a/g/g/l;->c:Ljava/util/List;

    .line 1
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 5
    invoke-static {v2}, Ln3/g0/y;->r2(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    .line 7
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Le/m/a/h/a/g/g/a;->b:Landroid/content/Context;

    .line 8
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, 0x1

    .line 9
    invoke-virtual {v8, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 10
    invoke-static {v3}, Le/m/a/h/a/g/g/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "module_name"

    invoke-virtual {v8, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "split_id"

    .line 11
    invoke-virtual {v8, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static {v2}, Ln3/g0/y;->r2(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Le/m/a/h/a/g/g/a;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Le/m/a/h/a/g/g/a;->h()Le/m/a/h/a/g/d;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0}, Le/m/a/h/a/g/d;->i()J

    move-result-wide v2

    iget-object v7, v1, Le/m/a/h/a/g/g/a;->h:Ljava/util/concurrent/Executor;

    new-instance v8, Le/m/a/h/a/g/g/j;

    move-object v0, v8

    .line 16
    invoke-direct/range {v0 .. v6}, Le/m/a/h/a/g/g/j;-><init>(Le/m/a/h/a/g/g/a;JLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
