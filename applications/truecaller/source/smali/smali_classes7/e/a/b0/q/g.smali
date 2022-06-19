.class public final Le/a/b0/q/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/q/e;


# instance fields
.field public final a:Landroid/telecom/TelecomManager;

.field public final b:Le/a/b0/f/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/f/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declineCallErrorsTracker"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/b0/q/g;->b:Le/a/b0/f/a;

    const-string p2, "telecom"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.telecom.TelecomManager"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Le/a/b0/q/g;->a:Landroid/telecom/TelecomManager;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/b0/q/g;->a:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Le/a/b0/q/g;->b:Le/a/b0/f/a;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v0}, Le/a/b0/f/a;->a(ILjava/lang/Exception;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
