.class final Li/c/b0/e/f/e/m4$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m4$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/m4$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/m4$d<",
            "*>;"
        }
    .end annotation
.end field

.field final g:Z


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/m4$d;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/m4$d<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m4$d$a;->f:Li/c/b0/e/f/e/m4$d;

    .line 3
    iput-boolean p2, p0, Li/c/b0/e/f/e/m4$d$a;->g:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m4$d$a;->f:Li/c/b0/e/f/e/m4$d;

    iget-boolean v1, p0, Li/c/b0/e/f/e/m4$d$a;->g:Z

    invoke-virtual {v0, v1}, Li/c/b0/e/f/e/m4$d;->e(Z)V

    return-void
.end method
