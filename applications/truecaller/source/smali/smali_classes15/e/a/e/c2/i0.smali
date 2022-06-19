.class public Le/a/e/c2/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:Z

.field public h:Ljava/lang/CharSequence;

.field public i:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, ""

    .line 1
    invoke-direct {p0, v0, v1, v1, v1}, Le/a/e/c2/i0;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/Object;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Le/a/e/c2/i0;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Le/a/e/c2/i0;->e:I

    .line 13
    iput v0, p0, Le/a/e/c2/i0;->f:I

    .line 14
    iput p1, p0, Le/a/e/c2/i0;->a:I

    .line 15
    iput p2, p0, Le/a/e/c2/i0;->e:I

    .line 16
    iput p3, p0, Le/a/e/c2/i0;->f:I

    .line 17
    iput-object p4, p0, Le/a/e/c2/i0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, ""

    .line 19
    iput-object p3, p0, Le/a/e/c2/i0;->d:Ljava/lang/Object;

    const/4 p3, -0x1

    .line 20
    iput p3, p0, Le/a/e/c2/i0;->e:I

    .line 21
    iput p3, p0, Le/a/e/c2/i0;->f:I

    .line 22
    iput p1, p0, Le/a/e/c2/i0;->a:I

    .line 23
    iput p2, p0, Le/a/e/c2/i0;->e:I

    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Le/a/e/c2/i0;->c:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Le/a/e/c2/i0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Le/a/e/c2/i0;->d:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Le/a/e/c2/i0;->e:I

    .line 5
    iput v0, p0, Le/a/e/c2/i0;->f:I

    .line 6
    iput p1, p0, Le/a/e/c2/i0;->a:I

    .line 7
    iput-object p2, p0, Le/a/e/c2/i0;->b:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Le/a/e/c2/i0;->c:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Le/a/e/c2/i0;->d:Ljava/lang/Object;

    return-void
.end method

.method public static c(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Ln3/k/g/a;->c()Ln3/k/g/a;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Ln3/k/g/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c2/i0;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Le/a/e/c2/i0;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Le/a/e/c2/i0;->f:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/e/c2/i0;->c:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/e/c2/i0;->c:Ljava/lang/String;

    return-object p1
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/c2/i0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Landroid/content/Context;)I
    .locals 0

    .line 1
    iget p1, p0, Le/a/e/c2/i0;->a:I

    return p1
.end method

.method public h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c2/i0;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Le/a/e/c2/i0;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Le/a/e/c2/i0;->e:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/e/c2/i0;->b:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/e/c2/i0;->b:Ljava/lang/String;

    return-object p1
.end method
