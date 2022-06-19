.class public Le/m/a/c/k1/b$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/k1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/c/k1/b;


# direct methods
.method public constructor <init>(Le/m/a/c/k1/b;Le/m/a/c/k1/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/k1/b$b;->a:Le/m/a/c/k1/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Le/m/a/c/k1/b$b;->a:Le/m/a/c/k1/b;

    invoke-static {p1}, Le/m/a/c/k1/b;->a(Le/m/a/c/k1/b;)V

    :cond_0
    return-void
.end method
