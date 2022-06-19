.class public final Ls1/a/a/a/z$c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/z$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/m0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/z$c;


# direct methods
.method public constructor <init>(Ls1/a/a/a/z$c;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/z$c$b;->b:Ls1/a/a/a/z$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/z$c$b;->b:Ls1/a/a/a/z$c;

    invoke-virtual {v0}, Ls1/a/a/a/z$a;->j()Ls1/a/a/a/z;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/k0;->B()Ls1/a/a/a/v0/b/m0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls1/a/a/a/z$c$b;->b:Ls1/a/a/a/z$c;

    invoke-virtual {v0}, Ls1/a/a/a/z$a;->j()Ls1/a/a/a/z;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/z;->j()Ls1/a/a/a/v0/b/k0;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    invoke-static {v0, v1, v1}, Ls1/a/a/a/v0/f/d;->r0(Ls1/a/a/a/v0/b/k0;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/b/h1/g0;

    move-result-object v0

    :goto_0
    return-object v0
.end method
