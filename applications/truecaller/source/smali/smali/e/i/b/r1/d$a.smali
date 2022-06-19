.class public Le/i/b/r1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/q1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/b/r1/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/i/b/r1/d;


# direct methods
.method public constructor <init>(Le/i/b/r1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/i/b/r1/d$a;->a:Le/i/b/r1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/r1/d$a;->a:Le/i/b/r1/d;

    .line 2
    iget-object v1, v0, Le/i/b/r1/d;->c:Le/i/b/r1/l;

    .line 3
    iget-object v0, v0, Le/i/b/r1/d;->b:Ljava/lang/ref/Reference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v1, Le/i/b/r1/l;->c:Le/i/b/w1/c;

    new-instance v2, Le/i/b/r1/k;

    invoke-direct {v2, v0}, Le/i/b/r1/k;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    .line 7
    iget-object v0, v1, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/r1/d$a;->a:Le/i/b/r1/d;

    .line 2
    iget-object v1, v0, Le/i/b/r1/d;->c:Le/i/b/r1/l;

    .line 3
    iget-object v0, v0, Le/i/b/r1/d;->b:Ljava/lang/ref/Reference;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v1, Le/i/b/r1/l;->c:Le/i/b/w1/c;

    new-instance v2, Le/i/b/r1/j;

    invoke-direct {v2, v0}, Le/i/b/r1/j;-><init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    .line 7
    iget-object v0, v1, Le/i/b/w1/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
