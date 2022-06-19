.class public final Le/a/a/m/g3/f$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/m/g3/f;-><init>(Le/a/a/m/o2;Le/a/d4/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/d4/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/m/g3/f;


# direct methods
.method public constructor <init>(Le/a/a/m/g3/f;)V
    .locals 0

    iput-object p1, p0, Le/a/a/m/g3/f$a;->b:Le/a/a/m/g3/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/m/g3/f$a;->b:Le/a/a/m/g3/f;

    .line 2
    iget-object v0, v0, Le/a/a/m/g3/f;->c:Le/a/d4/c;

    .line 3
    invoke-interface {v0}, Le/a/d4/c;->e()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    return-object v0
.end method
