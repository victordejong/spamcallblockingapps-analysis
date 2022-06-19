.class public Lcom/google/firebase/inappmessaging/model/j;
.super Lcom/google/firebase/inappmessaging/model/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/model/j$b;
    }
.end annotation


# instance fields
.field private final e:Lcom/google/firebase/inappmessaging/model/n;

.field private final f:Lcom/google/firebase/inappmessaging/model/n;

.field private final g:Lcom/google/firebase/inappmessaging/model/g;

.field private final h:Lcom/google/firebase/inappmessaging/model/a;

.field private final i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/firebase/inappmessaging/model/e;Lcom/google/firebase/inappmessaging/model/n;Lcom/google/firebase/inappmessaging/model/n;Lcom/google/firebase/inappmessaging/model/g;Lcom/google/firebase/inappmessaging/model/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/e;",
            "Lcom/google/firebase/inappmessaging/model/n;",
            "Lcom/google/firebase/inappmessaging/model/n;",
            "Lcom/google/firebase/inappmessaging/model/g;",
            "Lcom/google/firebase/inappmessaging/model/a;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/google/firebase/inappmessaging/model/MessageType;->MODAL:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-direct {p0, p1, v0, p7}, Lcom/google/firebase/inappmessaging/model/i;-><init>(Lcom/google/firebase/inappmessaging/model/e;Lcom/google/firebase/inappmessaging/model/MessageType;Ljava/util/Map;)V

    .line 3
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/model/j;->e:Lcom/google/firebase/inappmessaging/model/n;

    .line 4
    iput-object p3, p0, Lcom/google/firebase/inappmessaging/model/j;->f:Lcom/google/firebase/inappmessaging/model/n;

    .line 5
    iput-object p4, p0, Lcom/google/firebase/inappmessaging/model/j;->g:Lcom/google/firebase/inappmessaging/model/g;

    .line 6
    iput-object p5, p0, Lcom/google/firebase/inappmessaging/model/j;->h:Lcom/google/firebase/inappmessaging/model/a;

    .line 7
    iput-object p6, p0, Lcom/google/firebase/inappmessaging/model/j;->i:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/inappmessaging/model/e;Lcom/google/firebase/inappmessaging/model/n;Lcom/google/firebase/inappmessaging/model/n;Lcom/google/firebase/inappmessaging/model/g;Lcom/google/firebase/inappmessaging/model/a;Ljava/lang/String;Ljava/util/Map;Lcom/google/firebase/inappmessaging/model/j$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/inappmessaging/model/j;-><init>(Lcom/google/firebase/inappmessaging/model/e;Lcom/google/firebase/inappmessaging/model/n;Lcom/google/firebase/inappmessaging/model/n;Lcom/google/firebase/inappmessaging/model/g;Lcom/google/firebase/inappmessaging/model/a;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static d()Lcom/google/firebase/inappmessaging/model/j$b;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/inappmessaging/model/j$b;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/model/j$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/firebase/inappmessaging/model/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/j;->g:Lcom/google/firebase/inappmessaging/model/g;

    return-object v0
.end method

.method public e()Lcom/google/firebase/inappmessaging/model/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/j;->h:Lcom/google/firebase/inappmessaging/model/a;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/inappmessaging/model/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/firebase/inappmessaging/model/j;

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/model/j;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/j;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/j;->f:Lcom/google/firebase/inappmessaging/model/n;

    if-nez v1, :cond_3

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/j;->f:Lcom/google/firebase/inappmessaging/model/n;

    if-nez v3, :cond_4

    :cond_3
    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/j;->f:Lcom/google/firebase/inappmessaging/model/n;

    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    return v2

    .line 5
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/j;->h:Lcom/google/firebase/inappmessaging/model/a;

    if-nez v1, :cond_6

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/j;->h:Lcom/google/firebase/inappmessaging/model/a;

    if-nez v3, :cond_7

    :cond_6
    if-eqz v1, :cond_8

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/j;->h:Lcom/google/firebase/inappmessaging/model/a;

    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    return v2

    .line 6
    :cond_8
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/j;->g:Lcom/google/firebase/inappmessaging/model/g;

    if-nez v1, :cond_9

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/j;->g:Lcom/google/firebase/inappmessaging/model/g;

    if-nez v3, :cond_a

    :cond_9
    if-eqz v1, :cond_b

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/j;->g:Lcom/google/firebase/inappmessaging/model/g;

    .line 7
    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/g;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    return v2

    .line 8
    :cond_b
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/j;->e:Lcom/google/firebase/inappmessaging/model/n;

    iget-object v3, p1, Lcom/google/firebase/inappmessaging/model/j;->e:Lcom/google/firebase/inappmessaging/model/n;

    invoke-virtual {v1, v3}, Lcom/google/firebase/inappmessaging/model/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 9
    :cond_c
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/model/j;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/inappmessaging/model/j;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v0

    :cond_d
    return v2
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/j;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/google/firebase/inappmessaging/model/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/j;->f:Lcom/google/firebase/inappmessaging/model/n;

    return-object v0
.end method

.method public h()Lcom/google/firebase/inappmessaging/model/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/j;->e:Lcom/google/firebase/inappmessaging/model/n;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/j;->f:Lcom/google/firebase/inappmessaging/model/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/n;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/model/j;->h:Lcom/google/firebase/inappmessaging/model/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/inappmessaging/model/a;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 3
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/j;->g:Lcom/google/firebase/inappmessaging/model/g;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/g;->hashCode()I

    move-result v1

    .line 4
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/model/j;->e:Lcom/google/firebase/inappmessaging/model/n;

    invoke-virtual {v3}, Lcom/google/firebase/inappmessaging/model/n;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/model/j;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    add-int/2addr v3, v1

    return v3
.end method
