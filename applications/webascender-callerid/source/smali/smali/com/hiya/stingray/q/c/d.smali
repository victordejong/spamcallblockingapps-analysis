.class public Lcom/hiya/stingray/q/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/q/c/d$b;
    }
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

.field private h:I

.field private i:Z

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/hiya/stingray/q/c/d$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->a(Lcom/hiya/stingray/q/c/d$b;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/q/c/d;->a:I

    .line 4
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->b(Lcom/hiya/stingray/q/c/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/q/c/d;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->c(Lcom/hiya/stingray/q/c/d$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/q/c/d;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->d(Lcom/hiya/stingray/q/c/d$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hiya/stingray/q/c/d;->d:J

    .line 7
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->e(Lcom/hiya/stingray/q/c/d$b;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/q/c/d;->e:Ljava/util/Set;

    .line 8
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->f(Lcom/hiya/stingray/q/c/d$b;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/q/c/d;->f:I

    .line 9
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->g(Lcom/hiya/stingray/q/c/d$b;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/q/c/d;->g:I

    .line 10
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->h(Lcom/hiya/stingray/q/c/d$b;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/q/c/d;->h:I

    .line 11
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->i(Lcom/hiya/stingray/q/c/d$b;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/hiya/stingray/q/c/d;->i:Z

    .line 12
    invoke-static {p1}, Lcom/hiya/stingray/q/c/d$b;->j(Lcom/hiya/stingray/q/c/d$b;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/q/c/d;->j:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/q/c/d$b;Lcom/hiya/stingray/q/c/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/c/d;-><init>(Lcom/hiya/stingray/q/c/d$b;)V

    return-void
.end method

.method public static k()Lcom/hiya/stingray/q/c/d$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/c/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/c/d$b;-><init>(Lcom/hiya/stingray/q/c/d$a;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/q/c/d;->d:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/c/d;->h:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/c/d;->a:I

    return v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/c/d;->e:Ljava/util/Set;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/c/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/c/d;->j:Ljava/util/Map;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/c/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/c/d;->g:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/c/d;->f:I

    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/q/c/d;->i:Z

    return v0
.end method
