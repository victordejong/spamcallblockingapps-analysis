.class public Lcom/hiya/stingray/q/c/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/q/c/f$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:I


# direct methods
.method private constructor <init>(Lcom/hiya/stingray/q/c/f$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/hiya/stingray/q/c/f$b;->a(Lcom/hiya/stingray/q/c/f$b;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/q/c/f;->a:I

    .line 4
    invoke-static {p1}, Lcom/hiya/stingray/q/c/f$b;->b(Lcom/hiya/stingray/q/c/f$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/q/c/f;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/hiya/stingray/q/c/f$b;->c(Lcom/hiya/stingray/q/c/f$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hiya/stingray/q/c/f;->c:J

    .line 6
    invoke-static {p1}, Lcom/hiya/stingray/q/c/f$b;->d(Lcom/hiya/stingray/q/c/f$b;)I

    move-result p1

    iput p1, p0, Lcom/hiya/stingray/q/c/f;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/q/c/f$b;Lcom/hiya/stingray/q/c/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/c/f;-><init>(Lcom/hiya/stingray/q/c/f$b;)V

    return-void
.end method

.method public static e()Lcom/hiya/stingray/q/c/f$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/c/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/c/f$b;-><init>(Lcom/hiya/stingray/q/c/f$a;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/q/c/f;->c:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/c/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/c/f;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/c/f;->a:I

    return v0
.end method
