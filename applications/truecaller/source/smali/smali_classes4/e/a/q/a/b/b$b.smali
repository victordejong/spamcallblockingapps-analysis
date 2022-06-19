.class public final Le/a/q/a/b/b$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/a/b/b;-><init>(Ls1/w/f;Le/a/b0/o/a;Le/a/b0/a/v/a;Le/a/p5/c;Le/a/q/i/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/contactfeedback/model/Profile;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/q/a/b/b;


# direct methods
.method public constructor <init>(Le/a/q/a/b/b;)V
    .locals 0

    iput-object p1, p0, Le/a/q/a/b/b$b;->b:Le/a/q/a/b/b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Lcom/truecaller/contactfeedback/model/Profile;

    .line 2
    iget-object v1, p0, Le/a/q/a/b/b$b;->b:Le/a/q/a/b/b;

    .line 3
    iget-object v1, v1, Le/a/q/a/b/b;->j:Le/a/b0/o/a;

    const-string v2, ""

    const-string v3, "profileFirstName"

    .line 4
    invoke-interface {v1, v3, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "coreSettings.getString(C\u2026gs.PROFILE_FIRSTNAME, \"\")"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Le/a/q/a/b/b$b;->b:Le/a/q/a/b/b;

    .line 6
    iget-object v3, v3, Le/a/q/a/b/b;->j:Le/a/b0/o/a;

    const-string v4, "profileAvatar"

    .line 7
    invoke-interface {v3, v4, v2}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "coreSettings.getString(C\u2026tings.PROFILE_AVATAR, \"\")"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/truecaller/contactfeedback/model/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
