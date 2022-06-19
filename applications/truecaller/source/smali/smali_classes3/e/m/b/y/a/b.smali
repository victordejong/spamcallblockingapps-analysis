.class public abstract Le/m/b/y/a/b;
.super Le/m/b/x/a/e/d/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/b/x/a/e/d/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private alt:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private fields:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private oauthToken:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
        value = "oauth_token"
    .end annotation
.end field

.field private prettyPrint:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private quotaUser:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private userIp:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/b/y/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/b/y/a/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p5}, Le/m/b/x/a/e/d/b;-><init>(Le/m/b/x/a/e/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    return-object p1
.end method

.method public l()Le/m/b/x/a/e/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/a/e/c;->c:Le/m/b/x/a/e/a;

    .line 2
    check-cast v0, Le/m/b/x/a/e/d/a;

    .line 3
    check-cast v0, Le/m/b/y/a/a;

    return-object v0
.end method

.method public bridge synthetic o(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    return-object p1
.end method

.method public p()Le/m/b/x/a/e/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/b/x/a/e/c;->c:Le/m/b/x/a/e/a;

    .line 2
    check-cast v0, Le/m/b/x/a/e/d/a;

    .line 3
    check-cast v0, Le/m/b/y/a/a;

    return-object v0
.end method

.method public bridge synthetic q(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/d/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Le/m/b/y/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/x/a/e/d/b;->q(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/d/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/b;

    return-object p1
.end method

.method public s(Ljava/lang/String;)Le/m/b/y/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Le/m/b/y/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/m/b/y/a/b;->fields:Ljava/lang/String;

    return-object p0
.end method
