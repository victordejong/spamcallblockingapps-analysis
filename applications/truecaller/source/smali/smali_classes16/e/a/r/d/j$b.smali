.class public final Le/a/r/d/j$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/d/j;-><init>(Le/a/r/c/a0/a;Le/a/r/d/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/common/network/country/CountryListDto$a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/d/j;


# direct methods
.method public constructor <init>(Le/a/r/d/j;)V
    .locals 0

    iput-object p1, p0, Le/a/r/d/j$b;->b:Le/a/r/d/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/d/j$b;->b:Le/a/r/d/j;

    .line 2
    iget-object v0, v0, Le/a/r/d/j;->d:Le/a/r/c/a0/a;

    .line 3
    invoke-interface {v0}, Le/a/r/c/a0/a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
