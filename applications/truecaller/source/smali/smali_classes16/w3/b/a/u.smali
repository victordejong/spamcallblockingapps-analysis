.class public final Lw3/b/a/u;
.super Lw3/b/a/e0/h;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/c0;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/u;

    invoke-direct {v0}, Lw3/b/a/u;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2, v2}, Lw3/b/a/e0/h;-><init>(JLw3/b/a/v;Lw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lw3/b/a/e0/h;-><init>(J)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 4
    invoke-direct/range {v0 .. v6}, Lw3/b/a/e0/h;-><init>(JJLw3/b/a/v;Lw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(JLw3/b/a/v;Lw3/b/a/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lw3/b/a/e0/h;-><init>(JLw3/b/a/v;Lw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, v0, v0}, Lw3/b/a/e0/h;-><init>(Ljava/lang/Object;Lw3/b/a/v;Lw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>([ILw3/b/a/v;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lw3/b/a/e0/h;-><init>([ILw3/b/a/v;)V

    return-void
.end method

.method public static r(I)Lw3/b/a/u;
    .locals 4

    .line 1
    new-instance v0, Lw3/b/a/u;

    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput p0, v1, v3

    const/4 p0, 0x4

    aput v2, v1, p0

    const/4 p0, 0x5

    aput v2, v1, p0

    const/4 p0, 0x6

    aput v2, v1, p0

    const/4 p0, 0x7

    aput v2, v1, p0

    invoke-static {}, Lw3/b/a/v;->e()Lw3/b/a/v;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lw3/b/a/u;-><init>([ILw3/b/a/v;)V

    return-object v0
.end method


# virtual methods
.method public s()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 2
    sget v1, Lw3/b/a/v;->f:I

    invoke-virtual {v0, p0, v1}, Lw3/b/a/v;->b(Lw3/b/a/c0;I)I

    move-result v0

    return v0
.end method

.method public t()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 2
    sget v1, Lw3/b/a/v;->g:I

    invoke-virtual {v0, p0, v1}, Lw3/b/a/v;->b(Lw3/b/a/c0;I)I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 2
    sget v1, Lw3/b/a/v;->h:I

    invoke-virtual {v0, p0, v1}, Lw3/b/a/v;->b(Lw3/b/a/c0;I)I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 2
    sget v1, Lw3/b/a/v;->d:I

    invoke-virtual {v0, p0, v1}, Lw3/b/a/v;->b(Lw3/b/a/c0;I)I

    move-result v0

    return v0
.end method

.method public w()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 2
    sget v1, Lw3/b/a/v;->e:I

    invoke-virtual {v0, p0, v1}, Lw3/b/a/v;->b(Lw3/b/a/c0;I)I

    move-result v0

    return v0
.end method

.method public x()I
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/e0/h;->a:Lw3/b/a/v;

    .line 2
    sget v1, Lw3/b/a/v;->d:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lw3/b/a/v;->b(Lw3/b/a/c0;I)I

    move-result v0

    return v0
.end method
