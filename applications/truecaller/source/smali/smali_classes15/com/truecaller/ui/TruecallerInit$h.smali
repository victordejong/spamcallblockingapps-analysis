.class public Lcom/truecaller/ui/TruecallerInit$h;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/TruecallerInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/TruecallerInit$h;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/TruecallerInit$h;->a:Lcom/truecaller/ui/TruecallerInit;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Lcom/truecaller/ui/TruecallerInit;->i:Z

    return-void
.end method
