.class public Ls1/a/a/a/w;
.super Ls1/a/a/a/z;
.source "SourceFile"

# interfaces
.implements Ls1/a/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/w$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/z<",
        "TV;>;",
        "Ls1/a/j<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final i:Ls1/a/a/a/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/l0<",
            "Ls1/a/a/a/w$a<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final j:Ls1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Ls1/a/a/a/z;-><init>(Ls1/a/a/a/n;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    new-instance p1, Ls1/a/a/a/w$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/w$b;-><init>(Ls1/a/a/a/w;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Getter(this) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/w;->i:Ls1/a/a/a/l0;

    .line 6
    sget-object p1, Ls1/h;->b:Ls1/h;

    new-instance p2, Ls1/a/a/a/w$c;

    invoke-direct {p2, p0}, Ls1/a/a/a/w$c;-><init>(Ls1/a/a/a/w;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/w;->j:Ls1/g;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Ls1/a/a/a/z;-><init>(Ls1/a/a/a/n;Ls1/a/a/a/v0/b/k0;)V

    .line 2
    new-instance p1, Ls1/a/a/a/w$b;

    invoke-direct {p1, p0}, Ls1/a/a/a/w$b;-><init>(Ls1/a/a/a/w;)V

    invoke-static {p1}, Le/q/f/a/d/a;->Q1(Ls1/z/b/a;)Ls1/a/a/a/l0;

    move-result-object p1

    const-string p2, "ReflectProperties.lazy { Getter(this) }"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ls1/a/a/a/w;->i:Ls1/a/a/a/l0;

    .line 3
    sget-object p1, Ls1/h;->b:Ls1/h;

    new-instance p2, Ls1/a/a/a/w$c;

    invoke-direct {p2, p0}, Ls1/a/a/a/w$c;-><init>(Ls1/a/a/a/w;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/w;->j:Ls1/g;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/w;->m()Ls1/a/a/a/w$a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ls1/a/a/a/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGetter()Ls1/a/j$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/w;->m()Ls1/a/a/a/w$a;

    move-result-object v0

    return-object v0
.end method

.method public invoke()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/w;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l()Ls1/a/a/a/z$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/w;->m()Ls1/a/a/a/w$a;

    move-result-object v0

    return-object v0
.end method

.method public m()Ls1/a/a/a/w$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/a/a/a/w$a<",
            "TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/w;->i:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_getter()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls1/a/a/a/w$a;

    return-object v0
.end method
