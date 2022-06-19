.class public final Ln3/z/q0$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/q0;-><init>(Lq3/a/i0;Ljava/lang/Object;Ln3/z/q1$c;Ln3/z/q1$a;Ls1/z/b/a;Lq3/a/g0;Lq3/a/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/z/q0;


# direct methods
.method public constructor <init>(Ln3/z/q0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/q0$a;->b:Ln3/z/q0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/z/q0$a;->b:Ln3/z/q0;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Ln3/z/q0;->m(Z)V

    .line 3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
