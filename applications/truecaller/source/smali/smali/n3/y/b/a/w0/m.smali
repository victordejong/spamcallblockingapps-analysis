.class public final synthetic Ln3/y/b/a/w0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/x0/e$a;


# instance fields
.field public final a:I

.field public final b:J

.field public final c:J


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ln3/y/b/a/w0/m;->a:I

    iput-wide p2, p0, Ln3/y/b/a/w0/m;->b:J

    iput-wide p4, p0, Ln3/y/b/a/w0/m;->c:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 6

    iget v1, p0, Ln3/y/b/a/w0/m;->a:I

    iget-wide v2, p0, Ln3/y/b/a/w0/m;->b:J

    iget-wide v4, p0, Ln3/y/b/a/w0/m;->c:J

    move-object v0, p1

    check-cast v0, Ln3/y/b/a/w0/d$a;

    .line 1
    invoke-interface/range {v0 .. v5}, Ln3/y/b/a/w0/d$a;->k(IJJ)V

    return-void
.end method
