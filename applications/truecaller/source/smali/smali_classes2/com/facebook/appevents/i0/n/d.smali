.class public final Lcom/facebook/appevents/i0/n/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0012\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\rH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;",
        "",
        "()V",
        "isCreditCard",
        "",
        "view",
        "Landroid/widget/TextView;",
        "isEmail",
        "isPassword",
        "isPersonName",
        "isPhoneNumber",
        "isPostalAddress",
        "isSensitiveUserData",
        "Landroid/view/View;",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/i0/n/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/i0/n/d;

    invoke-direct {v0}, Lcom/facebook/appevents/i0/n/d;-><init>()V

    sput-object v0, Lcom/facebook/appevents/i0/n/d;->a:Lcom/facebook/appevents/i0/n/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(Landroid/view/View;)Z
    .locals 7

    const-class v0, Lcom/facebook/appevents/i0/n/d;

    sget-object v1, Lcom/facebook/appevents/i0/n/d;->a:Lcom/facebook/appevents/i0/n/d;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    .line 1
    :cond_0
    :try_start_0
    instance-of v2, p0, Landroid/widget/TextView;

    if-eqz v2, :cond_f

    .line 2
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    .line 3
    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    :goto_0
    move v2, v3

    goto :goto_1

    .line 4
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v4

    const/16 v6, 0x80

    if-ne v4, v6, :cond_2

    move v2, v5

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v2

    .line 6
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    invoke-static {v2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_0

    :goto_1
    if-nez v2, :cond_e

    .line 7
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/facebook/appevents/i0/n/d;->a(Landroid/widget/TextView;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 8
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    .line 9
    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v4, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v4, 0x60

    if-ne v2, v4, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v3

    goto :goto_3

    :catchall_1
    move-exception v2

    .line 11
    :try_start_4
    invoke-static {v2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_2

    :goto_3
    if-nez v2, :cond_e

    .line 12
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    .line 13
    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    if-eqz v4, :cond_5

    goto :goto_4

    .line 14
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v4, 0x70

    if-ne v2, v4, :cond_6

    move v2, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v2, v3

    goto :goto_5

    :catchall_2
    move-exception v2

    .line 15
    :try_start_6
    invoke-static {v2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_4

    :goto_5
    if-nez v2, :cond_e

    .line 16
    move-object v2, p0

    check-cast v2, Landroid/widget/TextView;

    .line 17
    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-eqz v4, :cond_7

    goto :goto_6

    .line 18
    :cond_7
    :try_start_7
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v4, 0x3

    if-ne v2, v4, :cond_8

    move v2, v5

    goto :goto_7

    :cond_8
    :goto_6
    move v2, v3

    goto :goto_7

    :catchall_3
    move-exception v2

    .line 19
    :try_start_8
    invoke-static {v2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    goto :goto_6

    :goto_7
    if-nez v2, :cond_e

    .line 20
    check-cast p0, Landroid/widget/TextView;

    .line 21
    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v2, :cond_9

    goto :goto_9

    .line 22
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_a

    move p0, v5

    goto :goto_a

    .line 23
    :cond_a
    sget-object v2, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {p0}, Lcom/facebook/appevents/i0/n/f;->j(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    move v2, v5

    goto :goto_8

    :cond_b
    move v2, v3

    :goto_8
    if-eqz v2, :cond_c

    goto :goto_9

    .line 25
    :cond_c
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_a

    :cond_d
    :goto_9
    move p0, v3

    goto :goto_a

    :catchall_4
    move-exception p0

    .line 26
    :try_start_a
    invoke-static {p0, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_9

    :goto_a
    if-eqz p0, :cond_f

    :cond_e
    move v3, v5

    :cond_f
    return v3

    :catchall_5
    move-exception p0

    .line 27
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v3
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;)Z
    .locals 8

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {p1}, Lcom/facebook/appevents/i0/n/f;->j(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s"

    new-instance v2, Ls1/f0/h;

    invoke-direct {v2, v0}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, p1, v0}, Ls1/f0/h;->e(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-lt v0, v2, :cond_7

    const/16 v2, 0x13

    if-le v0, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/16 v3, 0xa

    if-ltz v0, :cond_6

    move v4, v1

    move v5, v4

    :goto_0
    add-int/lit8 v6, v0, -0x1

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-static {v0, v3}, Ljava/lang/Character;->digit(II)I

    move-result v7

    if-ltz v7, :cond_5

    if-eqz v4, :cond_3

    mul-int/lit8 v7, v7, 0x2

    const/16 v0, 0x9

    if-le v7, v0, :cond_3

    .line 6
    rem-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v2

    :cond_3
    add-int/2addr v5, v7

    xor-int/lit8 v4, v4, 0x1

    if-gez v6, :cond_4

    goto :goto_1

    :cond_4
    move v0, v6

    goto :goto_0

    .line 7
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Char "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " is not a decimal digit"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    move v5, v1

    .line 8
    :goto_1
    rem-int/2addr v5, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_7

    move v1, v2

    :cond_7
    :goto_2
    return v1

    :catchall_0
    move-exception p1

    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v1
.end method
