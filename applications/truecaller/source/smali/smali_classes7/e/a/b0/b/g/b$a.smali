.class public final Le/a/b0/b/g/b$a;
.super Le/a/b0/b/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b0/b/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/b0/b/g/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Le/a/b0/b/g/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Le/a/b0/b/g/a;

    .line 1
    sget-object v1, Le/a/b0/b/g/a$f;->d:Le/a/b0/b/g/a$f;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "elements"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->b3([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    return-object v1
.end method
