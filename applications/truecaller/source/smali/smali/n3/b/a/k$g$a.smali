.class public Ln3/b/a/k$g$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b/a/k$g;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/b/a/k$g;


# direct methods
.method public constructor <init>(Ln3/b/a/k$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/a/k$g$a;->a:Ln3/b/a/k$g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/b/a/k$g$a;->a:Ln3/b/a/k$g;

    invoke-virtual {p1}, Ln3/b/a/k$g;->d()V

    return-void
.end method
