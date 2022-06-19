.class public final Ls1/a/a/a/v0/d/a/d0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/a/a/a/v0/d/a/d0/o/g;

.field public final c:Ls1/a/a/a/v0/d/a/d0/c;

.field public final d:Ls1/a/a/a/v0/d/a/d0/m;

.field public final e:Ls1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/g<",
            "Ls1/a/a/a/v0/d/a/d0/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/c;Ls1/a/a/a/v0/d/a/d0/m;Ls1/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/d/a/d0/c;",
            "Ls1/a/a/a/v0/d/a/d0/m;",
            "Ls1/g<",
            "Ls1/a/a/a/v0/d/a/d0/e;",
            ">;)V"
        }
    .end annotation

    const-string v0, "components"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegateForDefaultTypeQualifiers"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/h;->d:Ls1/a/a/a/v0/d/a/d0/m;

    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/h;->e:Ls1/g;

    .line 2
    iput-object p3, p0, Ls1/a/a/a/v0/d/a/d0/h;->a:Ls1/g;

    .line 3
    new-instance p1, Ls1/a/a/a/v0/d/a/d0/o/g;

    invoke-direct {p1, p0, p2}, Ls1/a/a/a/v0/d/a/d0/o/g;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/d0/m;)V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/h;->b:Ls1/a/a/a/v0/d/a/d0/o/g;

    return-void
.end method


# virtual methods
.method public final a()Ls1/a/a/a/v0/d/a/d0/e;
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/h;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/d/a/d0/e;

    return-object v0
.end method
