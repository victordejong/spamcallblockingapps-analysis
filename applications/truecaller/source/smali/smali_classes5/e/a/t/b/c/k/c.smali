.class public final Le/a/t/b/c/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/t/b/c/k/a;


# instance fields
.field public final a:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "telecom"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.telecom.TelecomManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Le/a/t/b/c/k/c;->a:Landroid/telecom/TelecomManager;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/t/b/c/k/c;->a:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
