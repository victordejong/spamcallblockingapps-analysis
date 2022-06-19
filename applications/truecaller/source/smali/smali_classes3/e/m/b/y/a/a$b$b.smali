.class public Le/m/b/y/a/a$b$b;
.super Le/m/b/y/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/y/a/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/b/y/a/b<",
        "Le/m/b/y/a/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field private acknowledgeAbuse:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field public final synthetic k:Le/m/b/y/a/a$b;

.field private supportsAllDrives:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field

.field private supportsTeamDrives:Ljava/lang/Boolean;
    .annotation runtime Le/m/b/x/d/m;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/b/y/a/a$b;Ljava/lang/String;)V
    .locals 6

    .line 1
    iput-object p1, p0, Le/m/b/y/a/a$b$b;->k:Le/m/b/y/a/a$b;

    .line 2
    iget-object v1, p1, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    const-class v5, Le/m/b/y/a/c/a;

    const-string v2, "GET"

    const-string v3, "files/{fileId}"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Le/m/b/y/a/b;-><init>(Le/m/b/y/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    const-string p1, "Required parameter fileId must be specified."

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Le/m/b/y/a/a$b$b;->fileId:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Le/m/b/x/a/e/c;->c:Le/m/b/x/a/e/a;

    .line 6
    iget-object p1, p1, Le/m/b/x/a/e/a;->a:Le/m/b/x/b/o;

    .line 7
    iget-object p1, p1, Le/m/b/x/b/o;->a:Le/m/b/x/b/t;

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/d/k;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$b;

    return-object p1
.end method

.method public i()Le/m/b/x/b/f;
    .locals 4

    const-string v0, "alt"

    .line 1
    invoke-virtual {p0, v0}, Le/m/b/x/d/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/b/x/a/e/c;->i:Le/m/b/x/a/d/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/m/b/y/a/a$b$b;->k:Le/m/b/y/a/a$b;

    iget-object v1, v1, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    .line 4
    iget-object v1, v1, Le/m/b/x/a/e/a;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "download/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/b/y/a/a$b$b;->k:Le/m/b/y/a/a$b;

    iget-object v1, v1, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    .line 6
    iget-object v1, v1, Le/m/b/x/a/e/a;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/b/y/a/a$b$b;->k:Le/m/b/y/a/a$b;

    iget-object v0, v0, Le/m/b/y/a/a$b;->a:Le/m/b/y/a/a;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Le/m/b/x/a/e/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Le/m/b/x/a/e/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    new-instance v1, Le/m/b/x/b/f;

    .line 10
    iget-object v2, p0, Le/m/b/x/a/e/c;->e:Ljava/lang/String;

    const/4 v3, 0x1

    .line 11
    invoke-static {v0, v2, p0, v3}, Le/m/b/x/b/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Le/m/b/x/b/f;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public o(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/c;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$b;

    return-object p1
.end method

.method public q(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/d/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$b;

    return-object p1
.end method

.method public r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Le/m/b/y/a/b;->r(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/y/a/b;

    move-result-object p1

    check-cast p1, Le/m/b/y/a/a$b$b;

    return-object p1
.end method

.method public t()Le/m/b/x/b/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "alt"

    const-string v1, "media"

    .line 1
    invoke-virtual {p0, v0, v1}, Le/m/b/y/a/a$b$b;->o(Ljava/lang/String;Ljava/lang/Object;)Le/m/b/x/a/e/c;

    .line 2
    invoke-virtual {p0}, Le/m/b/x/a/e/c;->k()Le/m/b/x/b/q;

    move-result-object v0

    return-object v0
.end method
