.class public final Lcom/hiya/stingray/q/c/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/q/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/q/c/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/q/c/d$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/q/c/d$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/c/d$b;->a:I

    return p0
.end method

.method static synthetic b(Lcom/hiya/stingray/q/c/d$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/c/d$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/hiya/stingray/q/c/d$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/c/d$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/hiya/stingray/q/c/d$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/q/c/d$b;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/hiya/stingray/q/c/d$b;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/c/d$b;->e:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic f(Lcom/hiya/stingray/q/c/d$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/c/d$b;->f:I

    return p0
.end method

.method static synthetic g(Lcom/hiya/stingray/q/c/d$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/c/d$b;->j:I

    return p0
.end method

.method static synthetic h(Lcom/hiya/stingray/q/c/d$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/c/d$b;->g:I

    return p0
.end method

.method static synthetic i(Lcom/hiya/stingray/q/c/d$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hiya/stingray/q/c/d$b;->h:Z

    return p0
.end method

.method static synthetic j(Lcom/hiya/stingray/q/c/d$b;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/c/d$b;->i:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public k()Lcom/hiya/stingray/q/c/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hiya/stingray/q/c/d;-><init>(Lcom/hiya/stingray/q/c/d$b;Lcom/hiya/stingray/q/c/d$a;)V

    return-object v0
.end method

.method public l(J)Lcom/hiya/stingray/q/c/d$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hiya/stingray/q/c/d$b;->d:J

    return-object p0
.end method

.method public m(I)Lcom/hiya/stingray/q/c/d$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/c/d$b;->g:I

    return-object p0
.end method

.method public n(I)Lcom/hiya/stingray/q/c/d$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/c/d$b;->a:I

    return-object p0
.end method

.method public o(Ljava/util/Set;)Lcom/hiya/stingray/q/c/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hiya/stingray/q/c/d$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/c/d$b;->e:Ljava/util/Set;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/hiya/stingray/q/c/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/c/d$b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/util/Map;)Lcom/hiya/stingray/q/c/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/hiya/stingray/q/c/d$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/c/d$b;->i:Ljava/util/Map;

    return-object p0
.end method

.method public r(Ljava/lang/String;)Lcom/hiya/stingray/q/c/d$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/c/d$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public s(Z)Lcom/hiya/stingray/q/c/d$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/q/c/d$b;->h:Z

    return-object p0
.end method

.method public t(I)Lcom/hiya/stingray/q/c/d$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/c/d$b;->j:I

    return-object p0
.end method

.method public u(I)Lcom/hiya/stingray/q/c/d$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/c/d$b;->f:I

    return-object p0
.end method
