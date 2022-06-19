.class public final Ls1/a/a/a/v0/d/a/b0/b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/b0/b;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/a;Ls1/a/a/a/v0/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/m/l0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/b0/b;

.field public final synthetic c:Ls1/a/a/a/v0/d/a/d0/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/b0/b;Ls1/a/a/a/v0/d/a/d0/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/b0/b$a;->b:Ls1/a/a/a/v0/d/a/b0/b;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/b0/b$a;->c:Ls1/a/a/a/v0/d/a/d0/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/b0/b$a;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->o:Ls1/a/a/a/v0/b/a0;

    .line 4
    invoke-interface {v0}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/b0/b$a;->b:Ls1/a/a/a/v0/d/a/b0/b;

    .line 5
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/b0/b;->e:Ls1/a/a/a/v0/f/b;

    .line 6
    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/a/g;->i(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    const-string v1, "c.module.builtIns.getBuiltInClassByFqName(fqName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    const-string v1, "c.module.builtIns.getBui\u2026qName(fqName).defaultType"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
