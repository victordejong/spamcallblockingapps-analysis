.class public final synthetic Le/d/a/a/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/d/a/a/e;

.field public final synthetic b:Le/d/a/a/k;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/e;Le/d/a/a/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/k0;->a:Le/d/a/a/e;

    iput-object p2, p0, Le/d/a/a/k0;->b:Le/d/a/a/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/d/a/a/k0;->a:Le/d/a/a/e;

    iget-object v1, p0, Le/d/a/a/k0;->b:Le/d/a/a/k;

    .line 1
    iget-object v0, v0, Le/d/a/a/e;->d:Le/d/a/a/d0;

    .line 2
    iget-object v0, v0, Le/d/a/a/d0;->b:Le/d/a/a/c0;

    .line 3
    iget-object v0, v0, Le/d/a/a/c0;->a:Le/d/a/a/q;

    const/4 v2, 0x0

    .line 4
    invoke-interface {v0, v1, v2}, Le/d/a/a/q;->onPurchasesUpdated(Le/d/a/a/k;Ljava/util/List;)V

    return-void
.end method
