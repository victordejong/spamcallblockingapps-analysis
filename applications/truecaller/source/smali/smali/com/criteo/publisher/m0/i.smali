.class public Lcom/criteo/publisher/m0/i;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/o2/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Le/i/b/o2/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 2
    iput-object p2, p0, Lcom/criteo/publisher/m0/i;->a:Le/i/b/o2/d;

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_2

    const-string p1, "Action"

    .line 1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0xc9

    if-eq p1, p2, :cond_1

    const/16 p2, 0xca

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/criteo/publisher/m0/i;->a:Le/i/b/o2/d;

    sget-object p2, Le/i/b/v2;->d:Le/i/b/v2;

    invoke-virtual {p1, p2}, Le/i/b/o2/d;->a(Le/i/b/v2;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/criteo/publisher/m0/i;->a:Le/i/b/o2/d;

    sget-object p2, Le/i/b/v2;->e:Le/i/b/v2;

    invoke-virtual {p1, p2}, Le/i/b/o2/d;->a(Le/i/b/v2;)V

    :cond_2
    :goto_0
    return-void
.end method
