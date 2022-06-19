.class public final synthetic Ln3/y/b/a/y0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ln3/y/b/a/y0/o$a;

.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:J


# direct methods
.method public constructor <init>(Ln3/y/b/a/y0/o$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/y0/i;->a:Ln3/y/b/a/y0/o$a;

    iput-object p2, p0, Ln3/y/b/a/y0/i;->b:Ljava/lang/String;

    iput-wide p3, p0, Ln3/y/b/a/y0/i;->c:J

    iput-wide p5, p0, Ln3/y/b/a/y0/i;->d:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Ln3/y/b/a/y0/i;->a:Ln3/y/b/a/y0/o$a;

    iget-object v2, p0, Ln3/y/b/a/y0/i;->b:Ljava/lang/String;

    iget-wide v3, p0, Ln3/y/b/a/y0/i;->c:J

    iget-wide v5, p0, Ln3/y/b/a/y0/i;->d:J

    .line 1
    iget-object v1, v0, Ln3/y/b/a/y0/o$a;->b:Ln3/y/b/a/y0/o;

    invoke-interface/range {v1 .. v6}, Ln3/y/b/a/y0/o;->f(Ljava/lang/String;JJ)V

    return-void
.end method
