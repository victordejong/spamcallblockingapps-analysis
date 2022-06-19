.class public final synthetic Ln3/y/b/a/y0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/y0/o$a;

.field public final b:I

.field public final c:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/y0/o$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/y0/k;->a:Ln3/y/b/a/y0/o$a;

    iput p2, p0, Ln3/y/b/a/y0/k;->b:I

    iput-wide p3, p0, Ln3/y/b/a/y0/k;->c:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Ln3/y/b/a/y0/k;->a:Ln3/y/b/a/y0/o$a;

    iget v1, p0, Ln3/y/b/a/y0/k;->b:I

    iget-wide v2, p0, Ln3/y/b/a/y0/k;->c:J

    .line 1
    iget-object v0, v0, Ln3/y/b/a/y0/o$a;->b:Ln3/y/b/a/y0/o;

    invoke-interface {v0, v1, v2, v3}, Ln3/y/b/a/y0/o;->e(IJ)V

    return-void
.end method
