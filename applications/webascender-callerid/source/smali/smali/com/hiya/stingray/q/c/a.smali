.class public Lcom/hiya/stingray/q/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/q/c/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:I


# direct methods
.method private constructor <init>(Lcom/hiya/stingray/q/c/a$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/hiya/stingray/q/c/a$b;->a(Lcom/hiya/stingray/q/c/a$b;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/q/c/a;->a:I

    .line 4
    invoke-static {p1}, Lcom/hiya/stingray/q/c/a$b;->b(Lcom/hiya/stingray/q/c/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/q/c/a;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/hiya/stingray/q/c/a$b;->c(Lcom/hiya/stingray/q/c/a$b;)I

    move-result v0

    iput v0, p0, Lcom/hiya/stingray/q/c/a;->c:I

    .line 6
    invoke-static {p1}, Lcom/hiya/stingray/q/c/a$b;->d(Lcom/hiya/stingray/q/c/a$b;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hiya/stingray/q/c/a;->d:J

    .line 7
    invoke-static {p1}, Lcom/hiya/stingray/q/c/a$b;->e(Lcom/hiya/stingray/q/c/a$b;)I

    move-result p1

    iput p1, p0, Lcom/hiya/stingray/q/c/a;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/hiya/stingray/q/c/a$b;Lcom/hiya/stingray/q/c/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/c/a;-><init>(Lcom/hiya/stingray/q/c/a$b;)V

    return-void
.end method

.method public static f()Lcom/hiya/stingray/q/c/a$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/c/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/q/c/a$b;-><init>(Lcom/hiya/stingray/q/c/a$a;)V

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hiya/stingray/q/c/a;->d:J

    return-wide v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/c/a;->e:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/c/a;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/q/c/a;->a:I

    return v0
.end method
