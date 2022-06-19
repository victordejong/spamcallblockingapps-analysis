.class public final Le/a/p/a/r;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/p/a/m;


# direct methods
.method public constructor <init>(Le/a/p/a/m;)V
    .locals 0

    iput-object p1, p0, Le/a/p/a/r;->b:Le/a/p/a/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/p/a/r;->b:Le/a/p/a/m;

    .line 2
    iget-object v1, v0, Le/a/p/a/m;->v:Le/a/b0/o/a;

    const-string v2, "profileAvatar"

    const-string v3, ""

    .line 3
    invoke-interface {v1, v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "coreSettings.getString(C\u2026tings.PROFILE_AVATAR, \"\")"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, v1}, Le/a/p/a/m;->Jj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
