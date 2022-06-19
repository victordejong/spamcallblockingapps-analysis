.class public Lcom/truecaller/ui/TruecallerInit$c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/TruecallerInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/TruecallerInit$c;->a:Lcom/truecaller/ui/TruecallerInit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$c;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 2
    sget p2, Lcom/truecaller/ui/TruecallerInit;->u1:I

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/ui/TruecallerInit;->db()V

    return-void
.end method
