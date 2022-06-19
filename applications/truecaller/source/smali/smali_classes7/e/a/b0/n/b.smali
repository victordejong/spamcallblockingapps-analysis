.class public final Le/a/b0/n/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/n/b;->a:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public final a(Le/a/b0/n/h;)Ljava/lang/String;
    .locals 5

    const-string v0, "profileSaveResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/b0/n/h$e;->c:Le/a/b0/n/h$e;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2
    sget-object v0, Le/a/b0/n/h$b;->c:Le/a/b0/n/h$b;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v0, Lcom/truecaller/common/R$string;->profile_error_generic:I

    goto/16 :goto_7

    .line 3
    :cond_0
    sget-object v0, Le/a/b0/n/h$a;->c:Le/a/b0/n/h$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/truecaller/common/R$string;->profile_error_generic:I

    goto/16 :goto_7

    .line 4
    :cond_1
    sget-object v0, Le/a/b0/n/h$c;->c:Le/a/b0/n/h$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Lcom/truecaller/common/R$string;->profile_error_network:I

    goto/16 :goto_7

    .line 5
    :cond_2
    sget-object v0, Le/a/b0/n/h$d;->c:Le/a/b0/n/h$d;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/truecaller/common/R$string;->profile_error_network:I

    goto/16 :goto_7

    .line 6
    :cond_3
    instance-of v0, p1, Le/a/b0/n/h$f;

    if-eqz v0, :cond_4

    sget v0, Lcom/truecaller/common/R$string;->profile_error_network:I

    goto/16 :goto_7

    .line 7
    :cond_4
    instance-of v0, p1, Le/a/b0/n/h$g;

    if-eqz v0, :cond_17

    .line 8
    move-object v0, p1

    check-cast v0, Le/a/b0/n/h$g;

    .line 9
    iget-object v0, v0, Le/a/b0/n/h$g;->c:Ljava/util/List;

    .line 10
    invoke-static {v0}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/profile/ProfileSaveError;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/common/profile/ProfileSaveError;->getErrorType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    sget v0, Lcom/truecaller/common/R$string;->profile_error_validation_invalidCharacter:I

    goto/16 :goto_7

    :cond_7
    :goto_1
    if-nez v2, :cond_8

    goto :goto_2

    .line 13
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    sget v0, Lcom/truecaller/common/R$string;->profile_error_validation_invalidWord:I

    goto/16 :goto_7

    :cond_9
    :goto_2
    if-nez v2, :cond_a

    goto :goto_3

    .line 14
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_b

    sget v0, Lcom/truecaller/common/R$string;->profile_error_validation_birthdayNotAllowed:I

    goto :goto_7

    :cond_b
    :goto_3
    if-nez v2, :cond_c

    goto :goto_5

    .line 15
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_11

    .line 16
    invoke-virtual {v0}, Lcom/truecaller/common/profile/ProfileSaveError;->getFieldName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x56ffb9bf

    if-eq v2, v3, :cond_f

    const v3, -0x1e505b58

    if-eq v2, v3, :cond_e

    const v3, 0x7eae95b

    if-eq v2, v3, :cond_d

    goto :goto_4

    :cond_d
    const-string v2, "firstName"

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/truecaller/common/R$string;->profile_error_validation_firstNameTooLong:I

    goto :goto_7

    :cond_e
    const-string v2, "companyName"

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/truecaller/common/R$string;->profile_error_validation_companyNameTooLong:I

    goto :goto_7

    :cond_f
    const-string v2, "lastName"

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget v0, Lcom/truecaller/common/R$string;->profile_error_validation_lastNameTooLong:I

    goto :goto_7

    .line 20
    :cond_10
    :goto_4
    sget v0, Lcom/truecaller/common/R$string;->profile_error_generic:I

    goto :goto_7

    :cond_11
    :goto_5
    if-nez v2, :cond_12

    goto :goto_6

    .line 21
    :cond_12
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_13

    sget v0, Lcom/truecaller/common/R$string;->profile_error_validation_invalidUrl:I

    goto :goto_7

    .line 22
    :cond_13
    :goto_6
    sget v0, Lcom/truecaller/common/R$string;->profile_error_generic:I

    .line 23
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Le/a/b0/n/b;->a:Le/a/p5/c0;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    instance-of v0, p1, Le/a/b0/n/h$g;

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    iget v3, p1, Le/a/b0/n/h;->b:I

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    check-cast p1, Le/a/b0/n/h$g;

    .line 27
    iget-object p1, p1, Le/a/b0/n/h$g;->c:Ljava/util/List;

    .line 28
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/profile/ProfileSaveError;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/truecaller/common/profile/ProfileSaveError;->getErrorType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_14
    if-eqz v1, :cond_15

    goto :goto_8

    :cond_15
    const-string v1, "null"

    .line 29
    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    .line 30
    :cond_16
    iget p1, p1, Le/a/b0/n/h;->b:I

    .line 31
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_9
    const/16 v0, 0x29

    .line 32
    invoke-static {v2, p1, v0}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 33
    :cond_17
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 34
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Not an error"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
