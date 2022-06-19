.class public final Lcom/hiya/stingray/q/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/q/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/q/c/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/q/c/a$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/q/c/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/c/a$b;->a:I

    return p0
.end method

.method static synthetic b(Lcom/hiya/stingray/q/c/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/c/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/hiya/stingray/q/c/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/c/a$b;->c:I

    return p0
.end method

.method static synthetic d(Lcom/hiya/stingray/q/c/a$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/q/c/a$b;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/hiya/stingray/q/c/a$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/c/a$b;->e:I

    return p0
.end method


# virtual methods
.method public f()Lcom/hiya/stingray/q/c/a;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/c/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hiya/stingray/q/c/a;-><init>(Lcom/hiya/stingray/q/c/a$b;Lcom/hiya/stingray/q/c/a$a;)V

    return-object v0
.end method

.method public g(J)Lcom/hiya/stingray/q/c/a$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hiya/stingray/q/c/a$b;->d:J

    return-object p0
.end method

.method public h(I)Lcom/hiya/stingray/q/c/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/c/a$b;->e:I

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/hiya/stingray/q/c/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/c/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public j(I)Lcom/hiya/stingray/q/c/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/c/a$b;->c:I

    return-object p0
.end method

.method public k(I)Lcom/hiya/stingray/q/c/a$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/c/a$b;->a:I

    return-object p0
.end method
