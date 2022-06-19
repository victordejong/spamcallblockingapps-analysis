.class public final Lcom/appnext/core/Ad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appnext/core/Ad;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic cx:Lcom/appnext/core/Ad;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/appnext/core/Ad;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appnext/core/Ad$1;->cx:Lcom/appnext/core/Ad;

    iput-object p2, p0, Lcom/appnext/core/Ad$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/Ad$1;->cx:Lcom/appnext/core/Ad;

    iget-object v1, p0, Lcom/appnext/core/Ad$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/appnext/core/g;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/appnext/core/Ad;->setSessionId(Ljava/lang/String;)V

    return-void
.end method
