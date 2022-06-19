.class public final Ln3/z/r0$b;
.super Ln3/z/r0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Ln3/z/r0$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ln3/z/r0$b;

    invoke-direct {v0}, Ln3/z/r0$b;-><init>()V

    sput-object v0, Ln3/z/r0$b;->b:Ln3/z/r0$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Ln3/z/r0;-><init>(ZLs1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ln3/z/r0$b;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Ln3/z/r0;->a:Z

    .line 3
    check-cast p1, Ln3/z/r0$b;

    .line 4
    iget-boolean p1, p1, Ln3/z/r0;->a:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Ln3/z/r0;->a:Z

    .line 2
    invoke-static {v0}, Lb;->a(Z)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Loading(endOfPaginationReached="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Ln3/z/r0;->a:Z

    const/16 v2, 0x29

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
