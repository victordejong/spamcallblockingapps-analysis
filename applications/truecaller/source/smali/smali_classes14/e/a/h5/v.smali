.class public final Le/a/h5/v;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/h5/u;",
        ">;",
        "Le/a/h5/v;"
    }
.end annotation


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/truecaller/tcpermissions/PermissionRequestOptions;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Le/a/h5/l;

.field public final f:Le/a/h5/y;

.field public final g:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Le/a/h5/y;Le/a/p5/a0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "tcPermissionsView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/h5/v;->f:Le/a/h5/y;

    iput-object p2, p0, Le/a/h5/v;->g:Le/a/p5/a0;

    .line 2
    new-instance p1, Le/a/h5/l;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-direct {p1, p2, p2, v0}, Le/a/h5/l;-><init>(ZZI)V

    iput-object p1, p0, Le/a/h5/v;->e:Le/a/h5/l;

    return-void
.end method


# virtual methods
.method public final Hj()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h5/v;->g:Le/a/p5/a0;

    iget-object v1, p0, Le/a/h5/v;->b:Ljava/util/List;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "permissions"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
