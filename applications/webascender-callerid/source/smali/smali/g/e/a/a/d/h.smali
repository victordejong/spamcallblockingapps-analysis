.class public Lg/e/a/a/d/h;
.super Lg/e/a/a/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/e/a/a/d/h$a;
    }
.end annotation


# instance fields
.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field protected N:F

.field private O:Z

.field private P:Lg/e/a/a/d/h$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/e/a/a/d/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lg/e/a/a/d/h;->L:I

    .line 3
    iput v0, p0, Lg/e/a/a/d/h;->M:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lg/e/a/a/d/h;->N:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lg/e/a/a/d/h;->O:Z

    .line 6
    sget-object v0, Lg/e/a/a/d/h$a;->TOP:Lg/e/a/a/d/h$a;

    iput-object v0, p0, Lg/e/a/a/d/h;->P:Lg/e/a/a/d/h$a;

    const/high16 v0, 0x40800000    # 4.0f

    .line 7
    invoke-static {v0}, Lg/e/a/a/l/i;->e(F)F

    move-result v0

    iput v0, p0, Lg/e/a/a/d/b;->c:F

    return-void
.end method


# virtual methods
.method public Q()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/d/h;->N:F

    return v0
.end method

.method public R()Lg/e/a/a/d/h$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/e/a/a/d/h;->P:Lg/e/a/a/d/h$a;

    return-object v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/e/a/a/d/h;->O:Z

    return v0
.end method

.method public T(Lg/e/a/a/d/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/e/a/a/d/h;->P:Lg/e/a/a/d/h$a;

    return-void
.end method
