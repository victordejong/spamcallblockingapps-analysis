.class final Lcom/appsflyer/Foreground$5$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/Foreground$5;->onActivityResumed(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ǃ:Lcom/appsflyer/Foreground$5;

.field private synthetic ɩ:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/appsflyer/Foreground$5;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/Foreground$5$5;->ǃ:Lcom/appsflyer/Foreground$5;

    iput-object p2, p0, Lcom/appsflyer/Foreground$5$5;->ɩ:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appsflyer/Foreground$5$5;->ǃ:Lcom/appsflyer/Foreground$5;

    iget-boolean v1, v0, Lcom/appsflyer/Foreground$5;->Ι:Z

    if-nez v1, :cond_0

    .line 2
    :try_start_0
    iget-object v0, v0, Lcom/appsflyer/Foreground$5;->ɩ:Lcom/appsflyer/Foreground$Listener;

    iget-object v1, p0, Lcom/appsflyer/Foreground$5$5;->ɩ:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/appsflyer/Foreground$Listener;->onBecameForeground(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Listener thrown an exception: "

    .line 3
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/Foreground$5$5;->ǃ:Lcom/appsflyer/Foreground$5;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/appsflyer/Foreground$5;->ι:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, v0, Lcom/appsflyer/Foreground$5;->Ι:Z

    return-void
.end method
