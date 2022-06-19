.class public final Lcom/hiya/stingray/t/c1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/t/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/hiya/stingray/t/c1$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/c1$a;

    invoke-direct {v0}, Lcom/hiya/stingray/t/c1$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/t/c1;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/t/c1$a;->a:Ljava/lang/String;

    iget v1, p0, Lcom/hiya/stingray/t/c1$a;->b:I

    iget-object v2, p0, Lcom/hiya/stingray/t/c1$a;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/hiya/stingray/t/c1$a;->d:J

    iget-object v5, p0, Lcom/hiya/stingray/t/c1$a;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/hiya/stingray/t/c1;->a(Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)Lcom/hiya/stingray/t/c1;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/hiya/stingray/t/c1$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hiya/stingray/t/c1$a;->b:I

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/hiya/stingray/t/c1$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/c1$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/hiya/stingray/t/c1$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/c1$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/hiya/stingray/t/c1$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/t/c1$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public g(J)Lcom/hiya/stingray/t/c1$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hiya/stingray/t/c1$a;->d:J

    return-object p0
.end method
