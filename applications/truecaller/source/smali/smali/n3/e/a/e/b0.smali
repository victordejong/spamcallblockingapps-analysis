.class public final synthetic Ln3/e/a/e/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/a/e/x1;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/x1;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/b0;->a:Ln3/e/a/e/x1;

    iput-wide p2, p0, Ln3/e/a/e/b0;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln3/e/a/e/b0;->a:Ln3/e/a/e/x1;

    iget-wide v1, p0, Ln3/e/a/e/b0;->b:J

    .line 1
    iget-wide v3, v0, Ln3/e/a/e/x1;->h:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ln3/e/a/e/x1;->a()V

    :cond_0
    return-void
.end method
