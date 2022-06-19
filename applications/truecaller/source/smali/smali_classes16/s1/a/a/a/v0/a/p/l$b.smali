.class public final Ls1/a/a/a/v0/a/p/l$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/p/l;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/l/m;Ls1/z/b/a;Ls1/z/b/a;)V
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
.field public final synthetic b:Ls1/a/a/a/v0/a/p/l;

.field public final synthetic c:Ls1/a/a/a/v0/l/m;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/p/l;Ls1/a/a/a/v0/l/m;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/l$b;->b:Ls1/a/a/a/v0/a/p/l;

    iput-object p2, p0, Ls1/a/a/a/v0/a/p/l$b;->c:Ls1/a/a/a/v0/l/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/p/l$b;->b:Ls1/a/a/a/v0/a/p/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/a/p/l;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/b/a0;

    .line 3
    sget-object v1, Ls1/a/a/a/v0/a/p/f;->h:Ls1/a/a/a/v0/a/p/f$a;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Ls1/a/a/a/v0/a/p/f;->g:Ls1/a/a/a/v0/f/a;

    .line 6
    new-instance v2, Ls1/a/a/a/v0/b/b0;

    iget-object v3, p0, Ls1/a/a/a/v0/a/p/l$b;->c:Ls1/a/a/a/v0/l/m;

    iget-object v4, p0, Ls1/a/a/a/v0/a/p/l$b;->b:Ls1/a/a/a/v0/a/p/l;

    .line 7
    iget-object v4, v4, Ls1/a/a/a/v0/a/p/l;->b:Ls1/g;

    invoke-interface {v4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/b/a0;

    .line 8
    invoke-direct {v2, v3, v4}, Ls1/a/a/a/v0/b/b0;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;)V

    .line 9
    invoke-static {v0, v1, v2}, Le/q/f/a/d/a;->r0(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/b0;)Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/e;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method
