.class public final Ln3/z/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ln3/z/s0;

.field public static final e:Ln3/z/s0;


# instance fields
.field public final a:Ln3/z/r0;

.field public final b:Ln3/z/r0;

.field public final c:Ln3/z/r0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/z/s0;

    .line 2
    sget-object v1, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    .line 3
    invoke-direct {v0, v1, v1, v1}, Ln3/z/s0;-><init>(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;)V

    sput-object v0, Ln3/z/s0;->d:Ln3/z/s0;

    return-void
.end method

.method public constructor <init>(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;)V
    .locals 1

    const-string v0, "refresh"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prepend"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "append"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/s0;->a:Ln3/z/r0;

    iput-object p2, p0, Ln3/z/s0;->b:Ln3/z/r0;

    iput-object p3, p0, Ln3/z/s0;->c:Ln3/z/r0;

    return-void
.end method

.method public static a(Ln3/z/s0;Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;I)Ln3/z/s0;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Ln3/z/s0;->a:Ln3/z/r0;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    iget-object p2, p0, Ln3/z/s0;->b:Ln3/z/r0;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Ln3/z/s0;->c:Ln3/z/r0;

    :cond_2
    const-string p0, "refresh"

    .line 1
    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "prepend"

    invoke-static {p2, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "append"

    invoke-static {p3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ln3/z/s0;

    invoke-direct {p0, p1, p2, p3}, Ln3/z/s0;-><init>(Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;)V

    return-object p0
.end method


# virtual methods
.method public final b(Ln3/z/t0;)Ln3/z/r0;
    .locals 1

    const-string v0, "loadType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Ln3/z/s0;->c:Ln3/z/r0;

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p0, Ln3/z/s0;->b:Ln3/z/r0;

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Ln3/z/s0;->a:Ln3/z/r0;

    :goto_0
    return-object p1
.end method

.method public final c(Ln3/z/t0;Ln3/z/r0;)Ln3/z/s0;
    .locals 2

    const-string v0, "loadType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x3

    .line 2
    invoke-static {p0, v0, v0, p2, p1}, Ln3/z/s0;->a(Ln3/z/s0;Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;I)Ln3/z/s0;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x5

    .line 4
    invoke-static {p0, v0, p2, v0, p1}, Ln3/z/s0;->a(Ln3/z/s0;Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;I)Ln3/z/s0;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x6

    .line 5
    invoke-static {p0, p2, v0, v0, p1}, Ln3/z/s0;->a(Ln3/z/s0;Ln3/z/r0;Ln3/z/r0;Ln3/z/r0;I)Ln3/z/s0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Ln3/z/s0;

    if-eqz v0, :cond_0

    check-cast p1, Ln3/z/s0;

    iget-object v0, p0, Ln3/z/s0;->a:Ln3/z/r0;

    iget-object v1, p1, Ln3/z/s0;->a:Ln3/z/r0;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/z/s0;->b:Ln3/z/r0;

    iget-object v1, p1, Ln3/z/s0;->b:Ln3/z/r0;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/z/s0;->c:Ln3/z/r0;

    iget-object p1, p1, Ln3/z/s0;->c:Ln3/z/r0;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ln3/z/s0;->a:Ln3/z/r0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ln3/z/s0;->b:Ln3/z/r0;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ln3/z/s0;->c:Ln3/z/r0;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "LoadStates(refresh="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/z/s0;->a:Ln3/z/r0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", prepend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln3/z/s0;->b:Ln3/z/r0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln3/z/s0;->c:Ln3/z/r0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
