.class public final Le/a/l/p2/j0$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/j0;-><init>(Le/a/l/s2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/l/p2/t0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/l/p2/j0;


# direct methods
.method public constructor <init>(Le/a/l/p2/j0;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/j0$f;->b:Le/a/l/p2/j0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    const-class v0, Le/a/l/p2/t0;

    new-instance v1, Le/a/b0/b/a/b;

    invoke-direct {v1}, Le/a/b0/b/a/b;-><init>()V

    .line 2
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->PREMIUM:Lcom/truecaller/common/network/util/KnownEndpoints;

    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->a(Lcom/truecaller/common/network/util/KnownEndpoints;)Le/a/b0/b/a/b;

    .line 3
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->f(Ljava/lang/Class;)Le/a/b0/b/a/b;

    .line 4
    iget-object v2, p0, Le/a/l/p2/j0$f;->b:Le/a/l/p2/j0;

    .line 5
    iget-object v2, v2, Le/a/l/p2/j0;->a:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lx3/g0/a/a;

    const-string v3, "gsonFactory"

    .line 6
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Le/a/b0/b/a/b;->b(Lx3/j$a;)Le/a/b0/b/a/b;

    .line 7
    invoke-virtual {v1, v0}, Le/a/b0/b/a/b;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/p2/t0;

    return-object v0
.end method
