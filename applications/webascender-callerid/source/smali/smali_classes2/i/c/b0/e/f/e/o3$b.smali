.class final Li/c/b0/e/f/e/o3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private final f:Li/c/b0/e/f/e/o3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/o3$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic g:Li/c/b0/e/f/e/o3;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/o3;Li/c/b0/e/f/e/o3$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/o3$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/o3$b;->g:Li/c/b0/e/f/e/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/o3$b;->f:Li/c/b0/e/f/e/o3$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/o3$b;->g:Li/c/b0/e/f/e/o3;

    iget-object v0, v0, Li/c/b0/e/f/e/a;->f:Li/c/b0/b/a0;

    iget-object v1, p0, Li/c/b0/e/f/e/o3$b;->f:Li/c/b0/e/f/e/o3$a;

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method
