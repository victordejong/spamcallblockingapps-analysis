.class public Le/m/b/y/a/a$b$d;
.super Le/m/b/y/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/y/a/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/b/y/a/b<",
        "Le/m/b/y/a/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private addParents:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private keepRevisionForever:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private ocrLanguage:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private removeParents:Ljava/lang/String;
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

.field private useContentAsIndexableText:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/b/y/a/a$b;Ljava/lang/String;Le/m/b/y/a/c/a;Le/m/b/x/b/b;)V
    .locals 6

    .line 1
    iget-object v1, p1, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    const-string v0, "/upload/"

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    .line 2
    iget-object p1, p1, Le/m/b/x/a/e/a;->c:Ljava/lang/String;

    const-string v2, "files/{fileId}"

    .line 3
    invoke-static {v0, p1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-class v5, Le/m/b/y/a/c/a;

    const-string v2, "PATCH"

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le/m/b/y/a/b;-><init>(Le/m/b/y/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter fileId must be specified."

    .line 4
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Le/m/b/y/a/a$b$d;->fileId:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p4}, Le/m/b/x/a/e/c;->m(Le/m/b/x/b/b;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$d;

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$d;

    return-object p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/d/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$d;

    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$d;

    return-object p1
.end method
