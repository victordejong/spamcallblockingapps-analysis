.class public final synthetic Le/d/a/a/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/d/a/a/t;


# direct methods
.method public synthetic constructor <init>(Le/d/a/a/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/d/a/a/n0;->a:Le/d/a/a/t;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/d/a/a/n0;->a:Le/d/a/a/t;

    .line 1
    sget-object v1, Le/d/a/a/a0;->m:Le/d/a/a/k;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Le/d/a/a/t;->onSkuDetailsResponse(Le/d/a/a/k;Ljava/util/List;)V

    return-void
.end method
