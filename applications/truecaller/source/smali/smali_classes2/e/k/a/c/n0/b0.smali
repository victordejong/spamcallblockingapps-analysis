.class public Le/k/a/c/n0/b0;
.super Le/k/a/b/l;
.source "SourceFile"


# instance fields
.field public final c:Le/k/a/b/l;

.field public final d:Le/k/a/b/h;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 6
    invoke-direct {p0, v0, v1}, Le/k/a/b/l;-><init>(II)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Le/k/a/c/n0/b0;->c:Le/k/a/b/l;

    .line 8
    sget-object v0, Le/k/a/b/h;->f:Le/k/a/b/h;

    iput-object v0, p0, Le/k/a/c/n0/b0;->d:Le/k/a/b/h;

    return-void
.end method

.method public constructor <init>(Le/k/a/b/l;Le/k/a/b/h;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/k/a/b/l;-><init>(Le/k/a/b/l;)V

    .line 2
    invoke-virtual {p1}, Le/k/a/b/l;->c()Le/k/a/b/l;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/n0/b0;->c:Le/k/a/b/l;

    .line 3
    invoke-virtual {p1}, Le/k/a/b/l;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/n0/b0;->e:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Le/k/a/b/l;->b()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Le/k/a/c/n0/b0;->f:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Le/k/a/c/n0/b0;->d:Le/k/a/b/h;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/n0/b0;II)V
    .locals 0

    .line 9
    invoke-direct {p0, p2, p3}, Le/k/a/b/l;-><init>(II)V

    .line 10
    iput-object p1, p0, Le/k/a/c/n0/b0;->c:Le/k/a/b/l;

    .line 11
    iget-object p1, p1, Le/k/a/c/n0/b0;->d:Le/k/a/b/h;

    iput-object p1, p0, Le/k/a/c/n0/b0;->d:Le/k/a/b/h;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/b0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/b0;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public c()Le/k/a/b/l;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/b0;->c:Le/k/a/b/l;

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/k/a/c/n0/b0;->f:Ljava/lang/Object;

    return-void
.end method
