.class public Le/n/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/n/a/c;->onInitializationFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/n/a/c;


# direct methods
.method public constructor <init>(Le/n/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/a/c$a;->a:Le/n/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/a/c$a;->a:Le/n/a/c;

    .line 2
    iget-object v0, v0, Le/n/a/c;->a:Lcom/mopub/common/SdkInitializationListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 4
    iget-object v0, p0, Le/n/a/c$a;->a:Le/n/a/c;

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Le/n/a/c;->a:Lcom/mopub/common/SdkInitializationListener;

    :cond_0
    return-void
.end method
