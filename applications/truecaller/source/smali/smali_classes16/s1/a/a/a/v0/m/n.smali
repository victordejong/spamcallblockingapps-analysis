.class public final Ls1/a/a/a/v0/m/n;
.super Ls1/a/a/a/v0/m/t;
.source "SourceFile"


# instance fields
.field public final c:Ls1/a/a/a/v0/b/f1/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/m/t;-><init>(Ls1/a/a/a/v0/m/l0;)V

    iput-object p2, p0, Ls1/a/a/a/v0/m/n;->c:Ls1/a/a/a/v0/b/f1/h;

    return-void
.end method


# virtual methods
.method public Z0(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/s;
    .locals 2

    const-string v0, "delegate"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ls1/a/a/a/v0/m/n;

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/m/n;->c:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    invoke-direct {v0, p1, v1}, Ls1/a/a/a/v0/m/n;-><init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/b/f1/h;)V

    return-object v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/n;->c:Ls1/a/a/a/v0/b/f1/h;

    return-object v0
.end method
