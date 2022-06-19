.class public final Ln3/z/p1;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/q<",
        "Ln3/z/t0;",
        "Ljava/lang/Boolean;",
        "Ln3/z/r0;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/z/o1$b;


# direct methods
.method public constructor <init>(Ln3/z/o1$b;)V
    .locals 0

    iput-object p1, p0, Ln3/z/p1;->b:Ln3/z/o1$b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ln3/z/t0;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Ln3/z/r0;

    const-string v0, "type"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ln3/z/p1;->b:Ln3/z/o1$b;

    invoke-interface {v0, p1, p2, p3}, Ln3/z/o1$b;->b(Ln3/z/t0;ZLn3/z/r0;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
