.class public final Le/a/n/x;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/n/a;


# direct methods
.method public constructor <init>(Le/a/n/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/n/x;->a:Le/a/n/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/n/x;->a:Le/a/n/a;

    invoke-virtual {p1}, Le/a/n/a;->OA()Le/a/n/y;

    move-result-object p1

    invoke-interface {p1}, Le/a/n/y;->Ee()V

    return-void
.end method
