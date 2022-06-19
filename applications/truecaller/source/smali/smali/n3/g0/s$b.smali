.class public Ln3/g0/s$b;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/g0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ln3/g0/s;


# direct methods
.method public constructor <init>(Ln3/g0/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/g0/s$b;->a:Ln3/g0/s;

    return-void
.end method


# virtual methods
.method public b(Ln3/g0/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/g0/s$b;->a:Ln3/g0/s;

    iget-boolean v0, p1, Ln3/g0/s;->B:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ln3/g0/m;->J()V

    .line 3
    iget-object p1, p0, Ln3/g0/s$b;->a:Ln3/g0/s;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ln3/g0/s;->B:Z

    :cond_0
    return-void
.end method

.method public d(Ln3/g0/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/g0/s$b;->a:Ln3/g0/s;

    iget v1, v0, Ln3/g0/s;->A:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Ln3/g0/s;->A:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Ln3/g0/s;->B:Z

    .line 3
    invoke-virtual {v0}, Ln3/g0/m;->o()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Ln3/g0/m;->y(Ln3/g0/m$d;)Ln3/g0/m;

    return-void
.end method
