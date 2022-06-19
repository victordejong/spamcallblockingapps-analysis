.class public abstract Ls1/a/a/a/v0/n/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/n/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/n/m$a;,
        Ls1/a/a/a/v0/n/m$b;,
        Ls1/a/a/a/v0/n/m$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/a/g;",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/z/b/l;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/n/m;->b:Ljava/lang/String;

    iput-object p2, p0, Ls1/a/a/a/v0/n/m;->c:Ls1/z/b/l;

    const-string p2, "must return "

    .line 2
    invoke-static {p2, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/n/m;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/v;)Ljava/lang/String;
    .locals 1

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->N1(Ls1/a/a/a/v0/n/b;Ls1/a/a/a/v0/b/v;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/a/a/a/v0/b/v;)Z
    .locals 2

    const-string v0, "functionDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/n/m;->c:Ls1/z/b/l;

    invoke-static {p1}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object p1

    invoke-interface {v1, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/n/m;->a:Ljava/lang/String;

    return-object v0
.end method
