.class public Ln3/b/c/a/a$c;
.super Ln3/b/c/a/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/c/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public K:Ln3/g/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/e<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public L:Ln3/g/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/g/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/b/c/a/a$c;Ln3/b/c/a/a;Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ln3/b/c/a/e$a;-><init>(Ln3/b/c/a/e$a;Ln3/b/c/a/e;Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p1, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    iput-object p2, p0, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    .line 3
    iget-object p1, p1, Ln3/b/c/a/a$c;->L:Ln3/g/i;

    iput-object p1, p0, Ln3/b/c/a/a$c;->L:Ln3/g/i;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ln3/g/e;

    const/16 p2, 0xa

    .line 5
    invoke-direct {p1, p2}, Ln3/g/e;-><init>(I)V

    .line 6
    iput-object p1, p0, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    .line 7
    new-instance p1, Ln3/g/i;

    invoke-direct {p1}, Ln3/g/i;-><init>()V

    iput-object p1, p0, Ln3/b/c/a/a$c;->L:Ln3/g/i;

    :goto_0
    return-void
.end method

.method public static h(II)J
    .locals 2

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    int-to-long p0, p1

    or-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    invoke-virtual {v0}, Ln3/g/e;->c()Ln3/g/e;

    move-result-object v0

    iput-object v0, p0, Ln3/b/c/a/a$c;->K:Ln3/g/e;

    .line 2
    iget-object v0, p0, Ln3/b/c/a/a$c;->L:Ln3/g/i;

    invoke-virtual {v0}, Ln3/g/i;->c()Ln3/g/i;

    move-result-object v0

    iput-object v0, p0, Ln3/b/c/a/a$c;->L:Ln3/g/i;

    return-void
.end method

.method public i(I)I
    .locals 2

    const/4 v0, 0x0

    if-gez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Ln3/b/c/a/a$c;->L:Ln3/g/i;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ln3/g/i;->g(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    new-instance v0, Ln3/b/c/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln3/b/c/a/a;-><init>(Ln3/b/c/a/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 2
    new-instance v0, Ln3/b/c/a/a;

    invoke-direct {v0, p0, p1}, Ln3/b/c/a/a;-><init>(Ln3/b/c/a/a$c;Landroid/content/res/Resources;)V

    return-object v0
.end method
