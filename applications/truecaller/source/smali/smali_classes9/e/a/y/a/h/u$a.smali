.class public final Le/a/y/a/h/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/y/a/h/u;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/y/a/h/u;


# direct methods
.method public constructor <init>(Le/a/y/a/h/u;)V
    .locals 0

    iput-object p1, p0, Le/a/y/a/h/u$a;->a:Le/a/y/a/h/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/a/h/u$a;->a:Le/a/y/a/h/u;

    .line 2
    iget-object v0, v0, Le/a/y/a/h/u;->w:Lcom/truecaller/flashsdk/models/QueuedFlash;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Sender;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v3, p0, Le/a/y/a/h/u$a;->a:Le/a/y/a/h/u;

    .line 7
    iget-object v3, v3, Le/a/y/a/h/u;->J:Le/a/y/c/b;

    .line 8
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Le/a/y/c/b;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/a/y/a/h/u$a;->a:Le/a/y/a/h/u;

    const-string v1, "FlashBlockUser"

    const-string v2, "blockUser"

    .line 10
    invoke-virtual {v0, v1, v2}, Le/a/y/a/h/u;->O(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
