.class public final Ls1/a/a/a/v0/d/a/g0/j$u;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/g0/j;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/d/a/g0/t$a$a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/s;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/a/a/a/v0/d/a/g0/t$a$a;

    const-string v0, "$receiver"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Spliterator"

    const-string v1, "name"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ls1/a/a/a/v0/d/a/g0/e;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Ls1/a/a/a/v0/d/a/g0/j;->b:Ls1/a/a/a/v0/d/a/g0/e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const-string v1, "java/util/Spliterator"

    .line 4
    invoke-virtual {p1, v1, v0}, Ls1/a/a/a/v0/d/a/g0/t$a$a;->b(Ljava/lang/String;[Ls1/a/a/a/v0/d/a/g0/e;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
