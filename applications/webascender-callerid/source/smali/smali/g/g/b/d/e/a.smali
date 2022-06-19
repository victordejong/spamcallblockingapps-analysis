.class public final Lg/g/b/d/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Lg/g/b/d/e/d;

.field private final c:Ljava/lang/String;

.field private final d:I


# direct methods
.method public constructor <init>(ILg/g/b/d/e/d;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/g/b/d/e/a;->a:I

    iput-object p2, p0, Lg/g/b/d/e/a;->b:Lg/g/b/d/e/d;

    iput-object p3, p0, Lg/g/b/d/e/a;->c:Ljava/lang/String;

    iput p4, p0, Lg/g/b/d/e/a;->d:I

    return-void
.end method

.method public synthetic constructor <init>(ILg/g/b/d/e/d;Ljava/lang/String;IILkotlin/w/c/g;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 2
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lg/g/b/d/e/a;-><init>(ILg/g/b/d/e/d;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic b(Lg/g/b/d/e/a;ILg/g/b/d/e/d;Ljava/lang/String;IILjava/lang/Object;)Lg/g/b/d/e/a;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lg/g/b/d/e/a;->a:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lg/g/b/d/e/a;->b:Lg/g/b/d/e/d;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lg/g/b/d/e/a;->c:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lg/g/b/d/e/a;->d:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lg/g/b/d/e/a;->a(ILg/g/b/d/e/d;Ljava/lang/String;I)Lg/g/b/d/e/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILg/g/b/d/e/d;Ljava/lang/String;I)Lg/g/b/d/e/a;
    .locals 1

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/g/b/d/e/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lg/g/b/d/e/a;-><init>(ILg/g/b/d/e/d;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/d/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/b/d/e/a;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/b/d/e/a;->d:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lg/g/b/d/e/a;

    if-eqz v0, :cond_0

    check-cast p1, Lg/g/b/d/e/a;

    iget v0, p0, Lg/g/b/d/e/a;->a:I

    iget v1, p1, Lg/g/b/d/e/a;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/g/b/d/e/a;->b:Lg/g/b/d/e/d;

    iget-object v1, p1, Lg/g/b/d/e/a;->b:Lg/g/b/d/e/d;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/g/b/d/e/a;->c:Ljava/lang/String;

    iget-object v1, p1, Lg/g/b/d/e/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lg/g/b/d/e/a;->d:I

    iget p1, p1, Lg/g/b/d/e/a;->d:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final f()Lg/g/b/d/e/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/d/e/a;->b:Lg/g/b/d/e/d;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lg/g/b/d/e/a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/g/b/d/e/a;->b:Lg/g/b/d/e/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/g/b/d/e/a;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/g/b/d/e/a;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/b/d/e/a;->b:Lg/g/b/d/e/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", body: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/g/b/d/e/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
