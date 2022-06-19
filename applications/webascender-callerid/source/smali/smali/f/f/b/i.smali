.class public Lf/f/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/f/b/i$a;
    }
.end annotation


# static fields
.field private static q:I = 0x1


# instance fields
.field public a:Z

.field private b:Ljava/lang/String;

.field public c:I

.field d:I

.field public e:I

.field public f:F

.field public g:Z

.field h:[F

.field i:[F

.field j:Lf/f/b/i$a;

.field k:[Lf/f/b/b;

.field l:I

.field public m:I

.field n:Z

.field o:I

.field p:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lf/f/b/i$a;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 2
    iput p2, p0, Lf/f/b/i;->c:I

    .line 3
    iput p2, p0, Lf/f/b/i;->d:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lf/f/b/i;->e:I

    .line 5
    iput-boolean v0, p0, Lf/f/b/i;->g:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    .line 6
    iput-object v2, p0, Lf/f/b/i;->h:[F

    new-array v1, v1, [F

    .line 7
    iput-object v1, p0, Lf/f/b/i;->i:[F

    const/16 v1, 0x10

    new-array v1, v1, [Lf/f/b/b;

    .line 8
    iput-object v1, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    .line 9
    iput v0, p0, Lf/f/b/i;->l:I

    .line 10
    iput v0, p0, Lf/f/b/i;->m:I

    .line 11
    iput-boolean v0, p0, Lf/f/b/i;->n:Z

    .line 12
    iput p2, p0, Lf/f/b/i;->o:I

    const/4 p2, 0x0

    .line 13
    iput p2, p0, Lf/f/b/i;->p:F

    .line 14
    iput-object p1, p0, Lf/f/b/i;->j:Lf/f/b/i$a;

    return-void
.end method

.method static b()V
    .locals 1

    .line 1
    sget v0, Lf/f/b/i;->q:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lf/f/b/i;->q:I

    return-void
.end method


# virtual methods
.method public final a(Lf/f/b/b;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lf/f/b/i;->l:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    .line 4
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf/f/b/b;

    iput-object v0, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    .line 5
    :cond_2
    iget-object v0, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    iget v1, p0, Lf/f/b/i;->l:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    iput v1, p0, Lf/f/b/i;->l:I

    return-void
.end method

.method public final c(Lf/f/b/b;)V
    .locals 4

    .line 1
    iget v0, p0, Lf/f/b/i;->l:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    iget-object v2, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    .line 4
    :cond_0
    iget p1, p0, Lf/f/b/i;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lf/f/b/i;->l:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public d()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lf/f/b/i;->b:Ljava/lang/String;

    .line 2
    sget-object v1, Lf/f/b/i$a;->UNKNOWN:Lf/f/b/i$a;

    iput-object v1, p0, Lf/f/b/i;->j:Lf/f/b/i$a;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lf/f/b/i;->e:I

    const/4 v2, -0x1

    .line 4
    iput v2, p0, Lf/f/b/i;->c:I

    .line 5
    iput v2, p0, Lf/f/b/i;->d:I

    const/4 v3, 0x0

    .line 6
    iput v3, p0, Lf/f/b/i;->f:F

    .line 7
    iput-boolean v1, p0, Lf/f/b/i;->g:Z

    .line 8
    iput-boolean v1, p0, Lf/f/b/i;->n:Z

    .line 9
    iput v2, p0, Lf/f/b/i;->o:I

    .line 10
    iput v3, p0, Lf/f/b/i;->p:F

    .line 11
    iget v2, p0, Lf/f/b/i;->l:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 12
    iget-object v5, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    aput-object v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_0
    iput v1, p0, Lf/f/b/i;->l:I

    .line 14
    iput v1, p0, Lf/f/b/i;->m:I

    .line 15
    iput-boolean v1, p0, Lf/f/b/i;->a:Z

    .line 16
    iget-object v0, p0, Lf/f/b/i;->i:[F

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public e(Lf/f/b/d;F)V
    .locals 3

    .line 1
    iput p2, p0, Lf/f/b/i;->f:F

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lf/f/b/i;->g:Z

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lf/f/b/i;->n:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lf/f/b/i;->o:I

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lf/f/b/i;->p:F

    .line 6
    iget v1, p0, Lf/f/b/i;->l:I

    .line 7
    iput v0, p0, Lf/f/b/i;->d:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 8
    iget-object v2, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p0, p2}, Lf/f/b/b;->A(Lf/f/b/d;Lf/f/b/i;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput p2, p0, Lf/f/b/i;->l:I

    return-void
.end method

.method public f(Lf/f/b/i$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/f/b/i;->j:Lf/f/b/i$a;

    return-void
.end method

.method public final g(Lf/f/b/d;Lf/f/b/b;)V
    .locals 4

    .line 1
    iget v0, p0, Lf/f/b/i;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    iget-object v3, p0, Lf/f/b/i;->k:[Lf/f/b/b;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lf/f/b/b;->B(Lf/f/b/d;Lf/f/b/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iput v1, p0, Lf/f/b/i;->l:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lf/f/b/i;->b:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/f/b/i;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/f/b/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
