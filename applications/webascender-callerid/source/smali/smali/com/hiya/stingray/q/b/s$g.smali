.class public Lcom/hiya/stingray/q/b/s$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/q/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field c:Z

.field d:J

.field e:Z

.field final synthetic f:Lcom/hiya/stingray/q/b/s;


# direct methods
.method private constructor <init>(Lcom/hiya/stingray/q/b/s;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/b/s$g;->f:Lcom/hiya/stingray/q/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/hiya/stingray/q/b/s$g;->b:I

    .line 4
    iput-boolean p1, p0, Lcom/hiya/stingray/q/b/s$g;->c:Z

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/hiya/stingray/q/b/s$g;->d:J

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/hiya/stingray/q/b/s$g;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/q/b/s;Lcom/hiya/stingray/q/b/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/b/s$g;-><init>(Lcom/hiya/stingray/q/b/s;)V

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/q/b/s$g;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/b/s$g;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/hiya/stingray/q/b/s$g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/b/s$g;->b:I

    return p0
.end method


# virtual methods
.method public c()Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/d;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/b/s$g;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/q/b/s$g;->f:Lcom/hiya/stingray/q/b/s;

    invoke-static {v0, p0}, Lcom/hiya/stingray/q/b/s;->f(Lcom/hiya/stingray/q/b/s;Lcom/hiya/stingray/q/b/s$g;)Li/c/b0/b/v;

    move-result-object v0

    return-object v0
.end method

.method public d(Z)Lcom/hiya/stingray/q/b/s$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/q/b/s$g;->e:Z

    return-object p0
.end method

.method public e(Z)Lcom/hiya/stingray/q/b/s$g;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/q/b/s$g;->c:Z

    return-object p0
.end method

.method public f(I)Lcom/hiya/stingray/q/b/s$g;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/b/s$g;->b:I

    return-object p0
.end method

.method public g(J)Lcom/hiya/stingray/q/b/s$g;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hiya/stingray/q/b/s$g;->d:J

    return-object p0
.end method

.method public h(Ljava/util/List;)Lcom/hiya/stingray/q/b/s$g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/stingray/q/b/s$g;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/b/s$g;->a:Ljava/util/List;

    return-object p0
.end method
