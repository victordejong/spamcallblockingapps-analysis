.class public Ln3/e/b/k1/c$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/k1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ln3/e/b/j1/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Ln3/e/b/j1/r1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/e/b/j1/r1<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/e/b/j1/r1;Ln3/e/b/j1/r1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/r1<",
            "*>;",
            "Ln3/e/b/j1/r1<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e/b/k1/c$c;->a:Ln3/e/b/j1/r1;

    .line 3
    iput-object p2, p0, Ln3/e/b/k1/c$c;->b:Ln3/e/b/j1/r1;

    return-void
.end method
