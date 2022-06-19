.class Lt/a/s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt/a/s;->c(Lt/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lt/a/a;

.field final synthetic g:Lt/a/s;


# direct methods
.method constructor <init>(Lt/a/s;Lt/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lt/a/s$a;->g:Lt/a/s;

    iput-object p2, p0, Lt/a/s$a;->f:Lt/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lt/a/s$a;->g:Lt/a/s;

    iget-object v1, p0, Lt/a/s$a;->f:Lt/a/a;

    invoke-static {v0, v1}, Lt/a/s;->f(Lt/a/s;Lt/a/a;)V

    .line 2
    iget-object v0, p0, Lt/a/s$a;->g:Lt/a/s;

    invoke-static {v0}, Lt/a/s;->k(Lt/a/s;)Lt/a/b;

    move-result-object v0

    iget-object v1, p0, Lt/a/s$a;->f:Lt/a/a;

    iget-object v2, p0, Lt/a/s$a;->g:Lt/a/s;

    new-instance v3, Lt/a/s$a$a;

    invoke-direct {v3, p0}, Lt/a/s$a$a;-><init>(Lt/a/s$a;)V

    invoke-virtual {v0, v1, v2, v2, v3}, Lt/a/b;->onAction(Lt/a/a;Lt/a/j;Lt/a/f;Lt/a/e;)V

    return-void
.end method
