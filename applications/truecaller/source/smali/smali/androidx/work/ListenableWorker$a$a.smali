.class public final Landroidx/work/ListenableWorker$a$a;
.super Landroidx/work/ListenableWorker$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ln3/m0/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ln3/m0/f;->c:Ln3/m0/f;

    .line 2
    invoke-direct {p0}, Landroidx/work/ListenableWorker$a;-><init>()V

    .line 3
    iput-object v0, p0, Landroidx/work/ListenableWorker$a$a;->a:Ln3/m0/f;

    return-void
.end method

.method public constructor <init>(Ln3/m0/f;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Landroidx/work/ListenableWorker$a;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/work/ListenableWorker$a$a;->a:Ln3/m0/f;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Landroidx/work/ListenableWorker$a$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Landroidx/work/ListenableWorker$a$a;

    .line 3
    iget-object v0, p0, Landroidx/work/ListenableWorker$a$a;->a:Ln3/m0/f;

    iget-object p1, p1, Landroidx/work/ListenableWorker$a$a;->a:Ln3/m0/f;

    invoke-virtual {v0, p1}, Ln3/m0/f;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    const-class v0, Landroidx/work/ListenableWorker$a$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/work/ListenableWorker$a$a;->a:Ln3/m0/f;

    invoke-virtual {v1}, Ln3/m0/f;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Failure {mOutputData="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/work/ListenableWorker$a$a;->a:Ln3/m0/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
