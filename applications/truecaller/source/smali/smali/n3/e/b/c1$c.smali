.class public final Ln3/e/b/c1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Ln3/e/b/j1/e1;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ln3/e/b/j1/e1;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ln3/e/b/c1$b;

    invoke-direct {v0}, Ln3/e/b/c1$b;-><init>()V

    .line 2
    iget-object v1, v0, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 3
    sget-object v2, Ln3/e/b/j1/r1;->l:Ln3/e/b/j1/j0$a;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4
    sget-object v4, Ln3/e/b/j1/j0$c;->c:Ln3/e/b/j1/j0$c;

    invoke-virtual {v1, v2, v4, v3}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 5
    iget-object v2, v0, Ln3/e/b/c1$b;->a:Ln3/e/b/j1/a1;

    .line 6
    sget-object v3, Ln3/e/b/j1/q0;->b:Ln3/e/b/j1/j0$a;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 7
    invoke-virtual {v2, v3, v4, v1}, Ln3/e/b/j1/a1;->z(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Ln3/e/b/c1$b;->b()Ln3/e/b/j1/e1;

    move-result-object v0

    sput-object v0, Ln3/e/b/c1$c;->a:Ln3/e/b/j1/e1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
