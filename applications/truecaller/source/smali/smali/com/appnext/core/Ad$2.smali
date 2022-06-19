.class public final Lcom/appnext/core/Ad$2;
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
    iput-object p1, p0, Lcom/appnext/core/Ad$2;->cx:Lcom/appnext/core/Ad;

    iput-object p2, p0, Lcom/appnext/core/Ad$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/Ad$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/appnext/base/Appnext;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
