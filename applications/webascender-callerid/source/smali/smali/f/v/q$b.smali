.class Lf/v/q$b;
.super Lf/v/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/v/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lf/v/q;


# direct methods
.method constructor <init>(Lf/v/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/v/n;-><init>()V

    .line 2
    iput-object p1, p0, Lf/v/q$b;->a:Lf/v/q;

    return-void
.end method


# virtual methods
.method public a(Lf/v/m;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/v/q$b;->a:Lf/v/q;

    iget-boolean v0, p1, Lf/v/q;->R:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lf/v/m;->g0()V

    .line 3
    iget-object p1, p0, Lf/v/q$b;->a:Lf/v/q;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lf/v/q;->R:Z

    :cond_0
    return-void
.end method

.method public c(Lf/v/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/v/q$b;->a:Lf/v/q;

    iget v1, v0, Lf/v/q;->Q:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lf/v/q;->Q:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lf/v/q;->R:Z

    .line 3
    invoke-virtual {v0}, Lf/v/m;->q()V

    .line 4
    :cond_0
    invoke-virtual {p1, p0}, Lf/v/m;->T(Lf/v/m$f;)Lf/v/m;

    return-void
.end method
