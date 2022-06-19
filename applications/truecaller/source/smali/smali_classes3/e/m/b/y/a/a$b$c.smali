.class public Le/m/b/y/a/a$b$c;
.super Le/m/b/y/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/y/a/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/b/y/a/b<",
        "Le/m/b/y/a/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field private corpora:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private corpus:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private driveId:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private includeItemsFromAllDrives:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private includeTeamDriveItems:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private orderBy:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private pageSize:Ljava/lang/Integer;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private pageToken:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private spaces:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private supportsAllDrives:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private supportsTeamDrives:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private teamDriveId:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/b/y/a/a$b;)V
    .locals 6

    .line 1
    iget-object v1, p1, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    const-class v5, Le/m/b/y/a/c/b;

    const-string v2, "GET"

    const-string v3, "files"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Le/m/b/y/a/b;-><init>(Le/m/b/y/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$c;

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$c;

    return-object p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/d/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$c;

    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$c;

    return-object p1
.end method

.method public t(Ljava/lang/String;)Le/m/b/y/a/a$b$c;
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/y/a/a$b$c;->orderBy:Ljava/lang/String;

    return-object p0
.end method

.method public u(Ljava/lang/Integer;)Le/m/b/y/a/a$b$c;
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/y/a/a$b$c;->pageSize:Ljava/lang/Integer;

    return-object p0
.end method

.method public v(Ljava/lang/String;)Le/m/b/y/a/a$b$c;
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/y/a/a$b$c;->q:Ljava/lang/String;

    return-object p0
.end method

.method public w(Ljava/lang/String;)Le/m/b/y/a/a$b$c;
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/b/y/a/a$b$c;->spaces:Ljava/lang/String;

    return-object p0
.end method
