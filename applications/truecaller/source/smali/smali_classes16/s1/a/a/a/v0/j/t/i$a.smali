.class public final Ls1/a/a/a/v0/j/t/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/j/t/i;->a(Ljava/util/List;Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/j/t/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/a0;",
        "Ls1/a/a/a/v0/m/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/a/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/i;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/j/t/i$a;->b:Ls1/a/a/a/v0/a/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/a0;

    const-string v0, "module"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/b/a0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object p1

    iget-object v0, p0, Ls1/a/a/a/v0/j/t/i$a;->b:Ls1/a/a/a/v0/a/i;

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/a/g;->q(Ls1/a/a/a/v0/a/i;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    const-string v0, "module.builtIns.getPrimi\u2026KotlinType(componentType)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
