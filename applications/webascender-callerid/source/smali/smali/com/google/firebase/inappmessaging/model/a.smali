.class public Lcom/google/firebase/inappmessaging/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/a$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/firebase/inappmessaging/model/d;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/model/a;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/a;->b:Lcom/google/firebase/inappmessaging/model/d;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/d;Lcom/google/firebase/inappmessaging/model/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/inappmessaging/model/a;-><init>(Ljava/lang/String;Lcom/google/firebase/inappmessaging/model/d;)V

    return-void
.end method

.method public static a()Lcom/google/firebase/inappmessaging/model/a$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/model/a$b;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/a$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/google/firebase/inappmessaging/model/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/a;->b:Lcom/google/firebase/inappmessaging/model/d;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/a;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/a;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/a;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/a;->a:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/a;->a:Ljava/lang/String;

    if-nez v3, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/a;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    return v2

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/a;->b:Lcom/google/firebase/inappmessaging/model/d;

    if-nez v1, :cond_6

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/a;->b:Lcom/google/firebase/inappmessaging/model/d;

    if-eqz v3, :cond_7

    :cond_6
    if-eqz v1, :cond_8

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/model/a;->b:Lcom/google/firebase/inappmessaging/model/d;

    invoke-virtual {v1, p1}, Lcom/google/firebase/inappmessaging/model/d;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    return v0

    :cond_8
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/a;->b:Lcom/google/firebase/inappmessaging/model/d;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/d;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method
