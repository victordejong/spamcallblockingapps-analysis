.class public final Lcom/hiya/common/phone/parser/PhoneParser$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/common/phone/parser/PhoneParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final f:Lcom/hiya/common/phone/parser/PhoneParser$b;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/hiya/common/phone/parser/PhoneParser$b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->f:Lcom/hiya/common/phone/parser/PhoneParser$b;

    .line 3
    iput-object p2, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->g:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 1
    const-class v2, Lcom/hiya/common/phone/parser/PhoneParser$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/hiya/common/phone/parser/PhoneParser$a;

    .line 3
    iget-object v2, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->f:Lcom/hiya/common/phone/parser/PhoneParser$b;

    iget-object v3, p1, Lcom/hiya/common/phone/parser/PhoneParser$a;->f:Lcom/hiya/common/phone/parser/PhoneParser$b;

    invoke-virtual {v2, v3}, Lcom/hiya/common/phone/parser/PhoneParser$b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/hiya/common/phone/parser/PhoneParser$a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object v2, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->h:Ljava/lang/String;

    iget-object p1, p1, Lcom/hiya/common/phone/parser/PhoneParser$a;->h:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->f:Lcom/hiya/common/phone/parser/PhoneParser$b;

    invoke-virtual {v0}, Lcom/hiya/common/phone/parser/PhoneParser$b;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->f:Lcom/hiya/common/phone/parser/PhoneParser$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->g:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$a;->h:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "FormattedResult(%s, %s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
