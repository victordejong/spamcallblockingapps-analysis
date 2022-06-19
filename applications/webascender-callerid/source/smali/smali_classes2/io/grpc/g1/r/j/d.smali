.class public final Lio/grpc/g1/r/j/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ln/i;

.field public static final e:Ln/i;

.field public static final f:Ln/i;

.field public static final g:Ln/i;

.field public static final h:Ln/i;


# instance fields
.field public final a:Ln/i;

.field public final b:Ln/i;

.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ":status"

    .line 1
    invoke-static {v0}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    move-result-object v0

    sput-object v0, Lio/grpc/g1/r/j/d;->d:Ln/i;

    const-string v0, ":method"

    .line 2
    invoke-static {v0}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    move-result-object v0

    sput-object v0, Lio/grpc/g1/r/j/d;->e:Ln/i;

    const-string v0, ":path"

    .line 3
    invoke-static {v0}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    move-result-object v0

    sput-object v0, Lio/grpc/g1/r/j/d;->f:Ln/i;

    const-string v0, ":scheme"

    .line 4
    invoke-static {v0}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    move-result-object v0

    sput-object v0, Lio/grpc/g1/r/j/d;->g:Ln/i;

    const-string v0, ":authority"

    .line 5
    invoke-static {v0}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    move-result-object v0

    sput-object v0, Lio/grpc/g1/r/j/d;->h:Ln/i;

    const-string v0, ":host"

    .line 6
    invoke-static {v0}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    const-string v0, ":version"

    .line 7
    invoke-static {v0}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    move-result-object p1

    invoke-static {p2}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/grpc/g1/r/j/d;-><init>(Ln/i;Ln/i;)V

    return-void
.end method

.method public constructor <init>(Ln/i;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p2}, Ln/i;->j(Ljava/lang/String;)Ln/i;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lio/grpc/g1/r/j/d;-><init>(Ln/i;Ln/i;)V

    return-void
.end method

.method public constructor <init>(Ln/i;Ln/i;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/grpc/g1/r/j/d;->a:Ln/i;

    .line 5
    iput-object p2, p0, Lio/grpc/g1/r/j/d;->b:Ln/i;

    .line 6
    invoke-virtual {p1}, Ln/i;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Ln/i;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lio/grpc/g1/r/j/d;->c:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lio/grpc/g1/r/j/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lio/grpc/g1/r/j/d;

    .line 3
    iget-object v0, p0, Lio/grpc/g1/r/j/d;->a:Ln/i;

    iget-object v2, p1, Lio/grpc/g1/r/j/d;->a:Ln/i;

    invoke-virtual {v0, v2}, Ln/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/grpc/g1/r/j/d;->b:Ln/i;

    iget-object p1, p1, Lio/grpc/g1/r/j/d;->b:Ln/i;

    .line 4
    invoke-virtual {v0, p1}, Ln/i;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/g1/r/j/d;->a:Ln/i;

    invoke-virtual {v0}, Ln/i;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v0, p0, Lio/grpc/g1/r/j/d;->b:Ln/i;

    invoke-virtual {v0}, Ln/i;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lio/grpc/g1/r/j/d;->a:Ln/i;

    invoke-virtual {v1}, Ln/i;->J()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lio/grpc/g1/r/j/d;->b:Ln/i;

    invoke-virtual {v1}, Ln/i;->J()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
