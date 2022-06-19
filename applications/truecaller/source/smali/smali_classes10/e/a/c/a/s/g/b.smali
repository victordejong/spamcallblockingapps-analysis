.class public final Le/a/c/a/s/g/b;
.super Le/a/c/a/s/g/a;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Le/a/b0/a/b/a;

.field public d:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/c/a/s/g/a;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le/a/c/a/s/g/b;->b:Ljava/lang/String;

    .line 3
    sget-object v0, Le/a/c/a/s/g/b$a;->b:Le/a/c/a/s/g/b$a;

    iput-object v0, p0, Le/a/c/a/s/g/b;->d:Ls1/z/b/a;

    return-void
.end method


# virtual methods
.method public Hj()Le/a/b0/a/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/a/s/g/b;->c:Le/a/b0/a/b/a;

    return-object v0
.end method

.method public Ij()Ls1/z/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/a/s/g/b;->d:Ls1/z/b/a;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/a/s/g/b;->b:Ljava/lang/String;

    return-object v0
.end method
