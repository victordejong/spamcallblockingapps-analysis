.class public final Ls1/a/a/a/v0/e/z/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/e/z/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/e/w;)Ls1/a/a/a/v0/e/z/g;
    .locals 2

    const-string v0, "table"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Ls1/a/a/a/v0/e/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Ls1/a/a/a/v0/e/z/g;->b:Ls1/a/a/a/v0/e/z/g;

    sget-object p1, Ls1/a/a/a/v0/e/z/g;->b:Ls1/a/a/a/v0/e/z/g;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ls1/a/a/a/v0/e/z/g;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/e/w;->b:Ljava/util/List;

    const-string v1, "table.requirementList"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, p1, v1}, Ls1/a/a/a/v0/e/z/g;-><init>(Ljava/util/List;Ls1/z/c/f;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
