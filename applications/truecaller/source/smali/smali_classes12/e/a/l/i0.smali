.class public final Le/a/l/i0;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/e0$d;


# direct methods
.method public constructor <init>(Le/a/l/e0$d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/i0;->b:Le/a/l/e0$d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l/i0;->b:Le/a/l/e0$d;

    iget-object v0, v0, Le/a/l/e0$d;->b:Le/a/l/e0;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/l/t1;

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Le/a/l/e0;->B:Le/a/b0/o/a;

    const-string v2, "subscriptionErrorResolveUrl"

    .line 4
    invoke-interface {v0, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://play.google.com/store/account/subscriptions"

    :goto_0
    const-string v2, "coreSettings.getString(C\u2026LE_PLAY_SUBSCRIPTIONS_URL"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v1, v0}, Le/a/l/t1;->ay(Ljava/lang/String;)V

    .line 6
    :cond_1
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
