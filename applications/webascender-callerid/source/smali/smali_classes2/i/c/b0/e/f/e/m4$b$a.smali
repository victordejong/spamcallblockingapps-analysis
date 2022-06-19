.class final Li/c/b0/e/f/e/m4$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m4$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/m4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/m4$b<",
            "*>;"
        }
    .end annotation
.end field

.field final g:J


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/m4$b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/m4$b<",
            "*>;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m4$b$a;->f:Li/c/b0/e/f/e/m4$b;

    .line 3
    iput-wide p2, p0, Li/c/b0/e/f/e/m4$b$a;->g:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m4$b$a;->f:Li/c/b0/e/f/e/m4$b;

    invoke-virtual {v0, p0}, Li/c/b0/e/f/e/m4$b;->e(Li/c/b0/e/f/e/m4$b$a;)V

    return-void
.end method
