.class final Li/c/b0/e/f/e/v2$m;
.super Li/c/b0/e/f/e/v2$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/v2$a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final i:I


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Li/c/b0/e/f/e/v2$a;-><init>(Z)V

    .line 2
    iput p1, p0, Li/c/b0/e/f/e/v2$m;->i:I

    return-void
.end method


# virtual methods
.method l()V
    .locals 2

    .line 1
    iget v0, p0, Li/c/b0/e/f/e/v2$a;->g:I

    iget v1, p0, Li/c/b0/e/f/e/v2$m;->i:I

    if-le v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/v2$a;->f()V

    :cond_0
    return-void
.end method
