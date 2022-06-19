.class public Ln3/m0/c0/q/f/c$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/c0/q/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/m0/c0/q/f/c;


# direct methods
.method public constructor <init>(Ln3/m0/c0/q/f/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/q/f/c$a;->a:Ln3/m0/c0/q/f/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Ln3/m0/c0/q/f/c$a;->a:Ln3/m0/c0/q/f/c;

    invoke-virtual {v0, p1, p2}, Ln3/m0/c0/q/f/c;->g(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
