.class public final synthetic Ln3/y/b/a/y0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/y0/o$a;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:F


# direct methods
.method public constructor <init>(Ln3/y/b/a/y0/o$a;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/y0/l;->a:Ln3/y/b/a/y0/o$a;

    iput p2, p0, Ln3/y/b/a/y0/l;->b:I

    iput p3, p0, Ln3/y/b/a/y0/l;->c:I

    iput p4, p0, Ln3/y/b/a/y0/l;->d:I

    iput p5, p0, Ln3/y/b/a/y0/l;->e:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ln3/y/b/a/y0/l;->a:Ln3/y/b/a/y0/o$a;

    iget v1, p0, Ln3/y/b/a/y0/l;->b:I

    iget v2, p0, Ln3/y/b/a/y0/l;->c:I

    iget v3, p0, Ln3/y/b/a/y0/l;->d:I

    iget v4, p0, Ln3/y/b/a/y0/l;->e:F

    .line 1
    iget-object v0, v0, Ln3/y/b/a/y0/o$a;->b:Ln3/y/b/a/y0/o;

    invoke-interface {v0, v1, v2, v3, v4}, Ln3/y/b/a/y0/o;->a(IIIF)V

    return-void
.end method
