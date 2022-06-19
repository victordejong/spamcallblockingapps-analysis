.class public final Ls1/a/a/a/g$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/f0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/g;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/g$c;->b:Ls1/a/a/a/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/f0;

    iget-object v1, p0, Ls1/a/a/a/g$c;->b:Ls1/a/a/a/g;

    invoke-virtual {v1}, Ls1/a/a/a/g;->e()Ls1/a/a/a/v0/b/b;

    move-result-object v1

    invoke-interface {v1}, Ls1/a/a/a/v0/b/a;->g()Ls1/a/a/a/v0/m/e0;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string v2, "descriptor.returnType!!"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ls1/a/a/a/j;

    invoke-direct {v2, p0}, Ls1/a/a/a/j;-><init>(Ls1/a/a/a/g$c;)V

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/f0;-><init>(Ls1/a/a/a/v0/m/e0;Ls1/z/b/a;)V

    return-object v0
.end method
