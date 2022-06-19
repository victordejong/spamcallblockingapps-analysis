.class public final Le/a/r/c/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Le/a/h5/w;

.field public final c:Le/a/p5/g;

.field public final d:Le/a/p5/a0;

.field public final e:Le/a/c3/a;

.field public final f:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/h5/w;Le/a/p5/g;Le/a/p5/a0;Le/a/c3/a;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tcPermissionsUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/c/l;->b:Le/a/h5/w;

    iput-object p2, p0, Le/a/r/c/l;->c:Le/a/p5/g;

    iput-object p3, p0, Le/a/r/c/l;->d:Le/a/p5/a0;

    iput-object p4, p0, Le/a/r/c/l;->e:Le/a/c3/a;

    iput-object p5, p0, Le/a/r/c/l;->f:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r/c/l;->b:Le/a/h5/w;

    invoke-interface {v0}, Le/a/h5/w;->m()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Le/a/r/c/l;->b:Le/a/h5/w;

    invoke-interface {v1}, Le/a/h5/w;->g()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->t0([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    .line 4
    iget-object v7, p0, Le/a/r/c/l;->d:Le/a/p5/a0;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    aput-object v6, v9, v3

    invoke-interface {v7, v9}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v6, v8

    if-eqz v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
