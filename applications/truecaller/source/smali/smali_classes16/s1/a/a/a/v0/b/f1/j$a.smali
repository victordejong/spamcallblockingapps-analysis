.class public final Ls1/a/a/a/v0/b/f1/j$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/f1/j;-><init>(Ls1/a/a/a/v0/a/g;Ls1/a/a/a/v0/f/b;Ljava/util/Map;)V
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
.field public final synthetic b:Ls1/a/a/a/v0/b/f1/j;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/f1/j;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/b/f1/j$a;->b:Ls1/a/a/a/v0/b/f1/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/f1/j$a;->b:Ls1/a/a/a/v0/b/f1/j;

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/b/f1/j;->b:Ls1/a/a/a/v0/a/g;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/b/f1/j;->c:Ls1/a/a/a/v0/f/b;

    .line 4
    invoke-virtual {v1, v0}, Ls1/a/a/a/v0/a/g;->i(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    const-string v1, "builtIns.getBuiltInClassByFqName(fqName)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method
