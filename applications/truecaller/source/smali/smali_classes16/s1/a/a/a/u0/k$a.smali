.class public final Ls1/a/a/a/u0/k$a;
.super Ls1/a/a/a/u0/k;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/u0/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/u0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "unboxMethod"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ls1/a/a/a/u0/k;-><init>(Ljava/lang/reflect/Method;Ljava/util/List;Ls1/z/c/f;)V

    iput-object p2, p0, Ls1/a/a/a/u0/k$a;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const-string v0, "args"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0, p1}, Le/q/f/a/d/a;->r(Ls1/a/a/a/u0/h;[Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Ls1/a/a/a/u0/k$a;->d:Ljava/lang/Object;

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Ls1/a/a/a/u0/k;->b:Ljava/lang/reflect/Method;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
