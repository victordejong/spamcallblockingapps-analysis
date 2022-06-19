.class public final Lcom/hiya/stingray/q/c/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/q/c/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/q/c/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/q/c/f$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/q/c/f$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/c/f$b;->a:I

    return p0
.end method

.method static synthetic b(Lcom/hiya/stingray/q/c/f$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/c/f$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/hiya/stingray/q/c/f$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/q/c/f$b;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/hiya/stingray/q/c/f$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hiya/stingray/q/c/f$b;->d:I

    return p0
.end method


# virtual methods
.method public e()Lcom/hiya/stingray/q/c/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/c/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hiya/stingray/q/c/f;-><init>(Lcom/hiya/stingray/q/c/f$b;Lcom/hiya/stingray/q/c/f$a;)V

    return-object v0
.end method

.method public f(J)Lcom/hiya/stingray/q/c/f$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hiya/stingray/q/c/f$b;->c:J

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/hiya/stingray/q/c/f$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/c/f$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h(I)Lcom/hiya/stingray/q/c/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/c/f$b;->d:I

    return-object p0
.end method

.method public i(I)Lcom/hiya/stingray/q/c/f$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/q/c/f$b;->a:I

    return-object p0
.end method
