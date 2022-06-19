.class public Le/a/t/b/c/l/d;
.super Le/a/t/b/c/l/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/t/b/c/l/b<",
        "Lcom/truecaller/android/sdk/TrueProfile;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Ljava/lang/String;

.field public e:Le/a/t/b/c/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/android/sdk/clients/VerificationCallback;Le/a/t/b/c/i;Z)V
    .locals 1

    const/4 p4, 0x1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, p2, p4, v0}, Le/a/t/b/c/l/b;-><init>(Lcom/truecaller/android/sdk/clients/VerificationCallback;ZI)V

    .line 2
    iput-object p1, p0, Le/a/t/b/c/l/d;->d:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Le/a/t/b/c/l/d;->e:Le/a/t/b/c/i;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/t/b/c/l/d;->e:Le/a/t/b/c/i;

    iget-object v1, p0, Le/a/t/b/c/l/d;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Le/a/t/b/c/i;->j(Ljava/lang/String;Le/a/t/b/c/l/d;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/truecaller/android/sdk/TrueProfile;

    .line 2
    iget-object v0, p0, Le/a/t/b/c/l/d;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/truecaller/android/sdk/TrueProfile;->accessToken:Ljava/lang/String;

    .line 3
    new-instance v0, Le/a/t/b/c/h;

    invoke-direct {v0}, Le/a/t/b/c/h;-><init>()V

    .line 4
    iget-object v1, v0, Le/a/t/b/c/h;->a:Ljava/util/Map;

    const-string v2, "profile"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Le/a/t/b/c/l/b;->a:Lcom/truecaller/android/sdk/clients/VerificationCallback;

    iget v1, p0, Le/a/t/b/c/l/b;->b:I

    invoke-interface {p1, v1, v0}, Lcom/truecaller/android/sdk/clients/VerificationCallback;->onRequestSuccess(ILe/a/t/b/c/h;)V

    return-void
.end method
