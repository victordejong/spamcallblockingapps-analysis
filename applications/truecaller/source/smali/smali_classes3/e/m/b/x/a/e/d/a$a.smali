.class public abstract Le/m/b/x/a/e/d/a$a;
.super Le/m/b/x/a/e/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/b/x/a/e/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Le/m/b/x/b/t;Le/m/b/x/c/c;Ljava/lang/String;Ljava/lang/String;Le/m/b/x/b/p;Z)V
    .locals 7

    .line 1
    new-instance v0, Le/m/b/x/c/e$a;

    invoke-direct {v0, p2}, Le/m/b/x/c/e$a;-><init>(Le/m/b/x/c/c;)V

    if-eqz p6, :cond_0

    const-string p2, "data"

    const-string p6, "error"

    filled-new-array {p2, p6}, [Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p2

    .line 3
    :goto_0
    iput-object p2, v0, Le/m/b/x/c/e$a;->b:Ljava/util/Collection;

    .line 4
    new-instance v5, Le/m/b/x/c/e;

    invoke-direct {v5, v0}, Le/m/b/x/c/e;-><init>(Le/m/b/x/c/e$a;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 5
    invoke-direct/range {v1 .. v6}, Le/m/b/x/a/e/a$a;-><init>(Le/m/b/x/b/t;Ljava/lang/String;Ljava/lang/String;Le/m/b/x/d/s;Le/m/b/x/b/p;)V

    return-void
.end method
