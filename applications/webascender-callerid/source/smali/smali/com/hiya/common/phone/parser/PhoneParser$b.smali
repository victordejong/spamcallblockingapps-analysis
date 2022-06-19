.class public final Lcom/hiya/common/phone/parser/PhoneParser$b;
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
    name = "b"
.end annotation


# instance fields
.field public final f:Lg/g/c/a/a/a/h;

.field public final g:Z

.field public final h:Z

.field public final i:Lcom/google/common/base/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/j<",
            "Lg/g/c/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/google/common/base/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/j<",
            "Lcom/google/i18n/phonenumbers/h$c;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lcom/google/common/base/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/j<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/c/a/a/a/h;ZZLcom/google/common/base/j;Lcom/google/common/base/j;Lcom/google/common/base/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/c/a/a/a/h;",
            "ZZ",
            "Lcom/google/common/base/j<",
            "Lg/g/c/a/a/a/c;",
            ">;",
            "Lcom/google/common/base/j<",
            "Lcom/google/i18n/phonenumbers/h$c;",
            ">;",
            "Lcom/google/common/base/j<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    .line 3
    iput-boolean p2, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    .line 4
    iput-boolean p3, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->h:Z

    .line 5
    iput-object p4, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    .line 6
    iput-object p5, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->j:Lcom/google/common/base/j;

    .line 7
    iput-object p6, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->k:Lcom/google/common/base/j;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    const-class v1, Lcom/hiya/common/phone/parser/PhoneParser$b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lcom/hiya/common/phone/parser/PhoneParser$b;

    .line 3
    iget-boolean v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    iget-boolean v2, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    if-eq v1, v2, :cond_2

    return v0

    .line 4
    :cond_2
    iget-boolean v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->h:Z

    iget-boolean v2, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->h:Z

    if-eq v1, v2, :cond_3

    return v0

    .line 5
    :cond_3
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    iget-object v2, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    invoke-virtual {v1, v2}, Lg/g/c/a/a/a/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 6
    :cond_4
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->j:Lcom/google/common/base/j;

    iget-object v2, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->j:Lcom/google/common/base/j;

    invoke-virtual {v1, v2}, Lcom/google/common/base/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    .line 7
    :cond_5
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->k:Lcom/google/common/base/j;

    iget-object v2, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->k:Lcom/google/common/base/j;

    invoke-virtual {v1, v2}, Lcom/google/common/base/j;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    iget-object p1, p1, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    invoke-virtual {v0, p1}, Lcom/google/common/base/j;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    invoke-virtual {v0}, Lg/g/c/a/a/a/h;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-boolean v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-boolean v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->h:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    invoke-virtual {v1}, Lcom/google/common/base/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->j:Lcom/google/common/base/j;

    invoke-virtual {v1}, Lcom/google/common/base/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->k:Lcom/google/common/base/j;

    invoke-virtual {v1}, Lcom/google/common/base/j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->f:Lg/g/c/a/a/a/h;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->g:Z

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->i:Lcom/google/common/base/j;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->j:Lcom/google/common/base/j;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/hiya/common/phone/parser/PhoneParser$b;->k:Lcom/google/common/base/j;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Result(%s, %s, %s, %s, %s, %s)"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
