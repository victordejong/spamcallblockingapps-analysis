.class final Li/c/b0/e/f/e/v2$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Li/c/b0/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final f:Li/c/b0/e/f/e/r4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/r4<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/r4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/r4<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/v2$c;->f:Li/c/b0/e/f/e/r4;

    return-void
.end method


# virtual methods
.method public a(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/v2$c;->f:Li/c/b0/e/f/e/r4;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/r4;->a(Li/c/b0/c/c;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p1, Li/c/b0/c/c;

    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/v2$c;->a(Li/c/b0/c/c;)V

    return-void
.end method
