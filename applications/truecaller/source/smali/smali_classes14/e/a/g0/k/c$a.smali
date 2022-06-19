.class public final Le/a/g0/k/c$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g0/k/c;-><init>(Le/a/d4/c;Le/a/g0/k/d;Le/a/g0/k/d;)V
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
.field public final synthetic b:Le/a/g0/k/c;


# direct methods
.method public constructor <init>(Le/a/g0/k/c;)V
    .locals 0

    iput-object p1, p0, Le/a/g0/k/c$a;->b:Le/a/g0/k/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g0/k/c$a;->b:Le/a/g0/k/c;

    .line 2
    iget-object v0, v0, Le/a/g0/k/c;->c:Le/a/d4/c;

    .line 3
    invoke-interface {v0}, Le/a/d4/c;->c()Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ls1/u/i;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d4/e;

    return-object v0
.end method
