.class public final Ls1/a/a/a/v0/d/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/k/b/g;


# instance fields
.field public final a:Ls1/a/a/a/v0/d/b/k;

.field public final b:Ls1/a/a/a/v0/d/b/d;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/d/b/d;)V
    .locals 1

    const-string v0, "kotlinClassFinder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deserializedDescriptorResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/e;->a:Ls1/a/a/a/v0/d/b/k;

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/e;->b:Ls1/a/a/a/v0/d/b/d;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/k/b/f;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/e;->a:Ls1/a/a/a/v0/d/b/k;

    invoke-static {v0, p1}, Le/q/f/a/d/a;->q0(Ls1/a/a/a/v0/d/b/k;Ls1/a/a/a/v0/f/a;)Ls1/a/a/a/v0/d/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ls1/a/a/a/v0/d/b/l;->getClassId()Ls1/a/a/a/v0/f/a;

    move-result-object v1

    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/d/b/e;->b:Ls1/a/a/a/v0/d/b/d;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/d/b/d;->f(Ls1/a/a/a/v0/d/b/l;)Ls1/a/a/a/v0/k/b/f;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
