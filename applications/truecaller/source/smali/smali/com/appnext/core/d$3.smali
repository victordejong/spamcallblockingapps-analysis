.class public final Lcom/appnext/core/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/d;->a(Ljava/lang/String;Lcom/appnext/core/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic cM:Lcom/appnext/core/Ad;

.field public final synthetic cP:Lcom/appnext/core/d;

.field public final synthetic cU:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/appnext/core/d;Lcom/appnext/core/Ad;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/d$3;->cP:Lcom/appnext/core/d;

    iput-object p2, p0, Lcom/appnext/core/d$3;->cM:Lcom/appnext/core/Ad;

    iput-object p3, p0, Lcom/appnext/core/d$3;->cU:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appnext/core/d$3;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v0}, Lcom/appnext/core/Ad;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/appnext/core/adswatched/a;->o(Landroid/content/Context;)Lcom/appnext/core/adswatched/a;

    move-result-object v0

    iget-object v1, p0, Lcom/appnext/core/d$3;->cU:Ljava/lang/String;

    iget-object v2, p0, Lcom/appnext/core/d$3;->cM:Lcom/appnext/core/Ad;

    invoke-virtual {v2}, Lcom/appnext/core/Ad;->getAUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appnext/core/adswatched/a;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
