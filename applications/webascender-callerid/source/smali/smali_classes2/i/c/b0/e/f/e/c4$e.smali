.class final Li/c/b0/e/f/e/c4$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/c4$d;

.field final g:J


# direct methods
.method constructor <init>(JLi/c/b0/e/f/e/c4$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Li/c/b0/e/f/e/c4$e;->g:J

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/c4$e;->f:Li/c/b0/e/f/e/c4$d;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/c4$e;->f:Li/c/b0/e/f/e/c4$d;

    iget-wide v1, p0, Li/c/b0/e/f/e/c4$e;->g:J

    invoke-interface {v0, v1, v2}, Li/c/b0/e/f/e/c4$d;->a(J)V

    return-void
.end method
