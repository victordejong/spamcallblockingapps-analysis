.class public final Lcom/appnext/core/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/f;->a(Lcom/appnext/core/f$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic dn:Lcom/appnext/core/f;

.field public final synthetic dp:Lcom/appnext/core/f$b;


# direct methods
.method public constructor <init>(Lcom/appnext/core/f;Lcom/appnext/core/f$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/f$3;->dn:Lcom/appnext/core/f;

    iput-object p2, p0, Lcom/appnext/core/f$3;->dp:Lcom/appnext/core/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/f$3;->dn:Lcom/appnext/core/f;

    invoke-static {v0}, Lcom/appnext/core/f;->d(Lcom/appnext/core/f;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/f$3;->dp:Lcom/appnext/core/f$b;

    iget-object v1, v1, Lcom/appnext/core/f$b;->du:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/appnext/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
