.class public final Le/a/a/k/a/f1$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/k/a/f1;->a(Ljava/util/Collection;Z)Le/a/r2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/Collection<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/k/a/f1;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Le/a/a/k/a/f1;Z)V
    .locals 0

    iput-object p1, p0, Le/a/a/k/a/f1$a;->b:Le/a/a/k/a/f1;

    iput-boolean p2, p0, Le/a/a/k/a/f1$a;->c:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Le/a/a/k/a/f1$a;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/a/a/k/a/f1$a;->b:Le/a/a/k/a/f1;

    invoke-static {v0, p1}, Le/a/a/k/a/f1;->i(Le/a/a/k/a/f1;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    :goto_0
    return-object p1
.end method
