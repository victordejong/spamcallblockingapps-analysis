.class public final Ln3/z/l0$c;
.super Ln3/z/q1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/l0;-><init>(Lq3/a/i0;Ln3/z/q1$c;Ln3/z/k2;Lq3/a/g0;Lq3/a/g0;Ln3/z/l0$b;Ln3/z/l0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ln3/z/l0;


# direct methods
.method public constructor <init>(Ln3/z/l0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln3/z/l0$c;->d:Ln3/z/l0;

    invoke-direct {p0}, Ln3/z/q1$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/z/t0;Ln3/z/r0;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ln3/z/l0$c;->d:Ln3/z/l0;

    .line 2
    iget-object v0, v0, Ln3/z/l0;->h:Ln3/z/l0$b;

    .line 3
    invoke-interface {v0, p1, p2}, Ln3/z/l0$b;->b(Ln3/z/t0;Ln3/z/r0;)V

    return-void
.end method
