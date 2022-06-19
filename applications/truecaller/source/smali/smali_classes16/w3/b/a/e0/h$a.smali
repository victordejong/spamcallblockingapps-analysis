.class public Lw3/b/a/e0/h$a;
.super Lw3/b/a/e0/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/e0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/e0/d;-><init>()V

    return-void
.end method


# virtual methods
.method public g()Lw3/b/a/v;
    .locals 4

    .line 1
    sget-object v0, Lw3/b/a/v;->m:Lw3/b/a/v;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/v;

    const/4 v1, 0x4

    new-array v1, v1, [Lw3/b/a/k;

    const/4 v2, 0x0

    sget-object v3, Lw3/b/a/k;->j:Lw3/b/a/k;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lw3/b/a/k;->k:Lw3/b/a/k;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lw3/b/a/k;->l:Lw3/b/a/k;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lw3/b/a/k;->m:Lw3/b/a/k;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const-string v3, "Time"

    invoke-direct {v0, v3, v1, v2}, Lw3/b/a/v;-><init>(Ljava/lang/String;[Lw3/b/a/k;[I)V

    .line 3
    sput-object v0, Lw3/b/a/v;->m:Lw3/b/a/v;

    :cond_0
    return-object v0

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public getValue(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
