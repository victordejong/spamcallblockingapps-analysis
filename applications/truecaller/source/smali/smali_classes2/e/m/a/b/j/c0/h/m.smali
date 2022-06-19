.class public final synthetic Le/m/a/b/j/c0/h/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/d0/b$a;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/h/v;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/h/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/h/m;->a:Le/m/a/b/j/c0/h/v;

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Le/m/a/b/j/c0/h/m;->a:Le/m/a/b/j/c0/h/v;

    .line 1
    iget-object v1, v0, Le/m/a/b/j/c0/h/v;->b:Le/m/a/b/j/c0/i/a0;

    invoke-interface {v1}, Le/m/a/b/j/c0/i/a0;->Y0()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/b/j/r;

    .line 2
    iget-object v3, v0, Le/m/a/b/j/c0/h/v;->c:Le/m/a/b/j/c0/h/x;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Le/m/a/b/j/c0/h/x;->b(Le/m/a/b/j/r;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
