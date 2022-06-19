.class public final synthetic Le/a/e/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/e/c/l1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/l1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/d;->a:Le/a/e/c/l1;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Le/a/e/c/d;->a:Le/a/e/c/l1;

    check-cast p1, Le/a/l0/u/d/b;

    .line 1
    iget-object v1, v0, Le/a/e/c/l1;->g:Le/a/e/c2/y;

    .line 2
    iget-object v1, v1, Ln3/l/a/a;->c:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v0, Le/a/e/c/l1;->i:Landroid/database/ContentObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v1, v0, Le/a/e/c/l1;->i:Landroid/database/ContentObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 5
    :cond_1
    iget-object v1, v0, Le/a/e/c/l1;->g:Le/a/e/c2/y;

    invoke-virtual {v1, p1}, Ln3/l/a/a;->g(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 6
    iget-object p1, v0, Le/a/e/c/l1;->g:Le/a/e/c2/y;

    .line 7
    invoke-virtual {v0}, Le/a/e/g1;->aB()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    :cond_2
    invoke-virtual {v0}, Le/a/e/c/l1;->gB()V

    return-void
.end method
