.class public final synthetic Ln3/y/b/a/n0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/n0/n$a;

.field public final b:I

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/n0/n$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/n0/k;->a:Ln3/y/b/a/n0/n$a;

    iput p2, p0, Ln3/y/b/a/n0/k;->b:I

    iput-wide p3, p0, Ln3/y/b/a/n0/k;->c:J

    iput-wide p5, p0, Ln3/y/b/a/n0/k;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Ln3/y/b/a/n0/k;->a:Ln3/y/b/a/n0/n$a;

    iget v2, p0, Ln3/y/b/a/n0/k;->b:I

    iget-wide v3, p0, Ln3/y/b/a/n0/k;->c:J

    iget-wide v5, p0, Ln3/y/b/a/n0/k;->d:J

    .line 1
    iget-object v1, v0, Ln3/y/b/a/n0/n$a;->b:Ln3/y/b/a/n0/n;

    invoke-interface/range {v1 .. v6}, Ln3/y/b/a/n0/n;->h(IJJ)V

    return-void
.end method
