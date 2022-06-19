.class public final Ln3/m0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ln3/m0/q;

.field public d:Z

.field public e:J

.field public f:J

.field public g:Ln3/m0/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/m0/d$a;->a:Z

    .line 3
    iput-boolean v0, p0, Ln3/m0/d$a;->b:Z

    .line 4
    sget-object v1, Ln3/m0/q;->a:Ln3/m0/q;

    iput-object v1, p0, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 5
    iput-boolean v0, p0, Ln3/m0/d$a;->d:Z

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Ln3/m0/d$a;->e:J

    .line 7
    iput-wide v0, p0, Ln3/m0/d$a;->f:J

    .line 8
    new-instance v0, Ln3/m0/e;

    invoke-direct {v0}, Ln3/m0/e;-><init>()V

    iput-object v0, p0, Ln3/m0/d$a;->g:Ln3/m0/e;

    return-void
.end method
