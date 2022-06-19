.class public Lcom/truecaller/content/TruecallerContentProvider$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/content/TruecallerContentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/content/TruecallerContentProvider;


# direct methods
.method public constructor <init>(Lcom/truecaller/content/TruecallerContentProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/content/TruecallerContentProvider$a;->a:Lcom/truecaller/content/TruecallerContentProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "ARG_DELAY"

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p2, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/content/TruecallerContentProvider$a;->a:Lcom/truecaller/content/TruecallerContentProvider;

    .line 3
    iget-object v1, v0, Lcom/truecaller/content/TruecallerContentProvider;->j:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    iget-object v0, v0, Lcom/truecaller/content/TruecallerContentProvider;->j:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
