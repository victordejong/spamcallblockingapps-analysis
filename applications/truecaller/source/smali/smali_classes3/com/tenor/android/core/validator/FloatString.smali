.class public Lcom/tenor/android/core/validator/FloatString;
.super Lcom/tenor/android/core/validator/AbstractValidator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tenor/android/core/validator/AbstractValidator<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field private static final FLOAT_STRING:Lcom/tenor/android/core/validator/FloatString;

.field private static final FLOAT_STRING_PATTERN:Ljava/lang/String; = "^[0-9]+\\.[0-9]+$"

.field private static final serialVersionUID:J = -0x530f325530edc451L


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tenor/android/core/validator/FloatString;

    const-string v1, "^[0-9]+\\.[0-9]+$"

    invoke-direct {v0, v1}, Lcom/tenor/android/core/validator/FloatString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tenor/android/core/validator/FloatString;->FLOAT_STRING:Lcom/tenor/android/core/validator/FloatString;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tenor/android/core/validator/AbstractValidator;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static isValid(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tenor/android/core/validator/FloatString;->FLOAT_STRING:Lcom/tenor/android/core/validator/FloatString;

    invoke-virtual {v0, p0}, Lcom/tenor/android/core/validator/FloatString;->validate(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parse(Ljava/lang/String;F)F
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/validator/FloatString;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return p1
.end method


# virtual methods
.method public validate(Ljava/lang/CharSequence;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/tenor/android/core/validator/AbstractValidator;->get()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public bridge synthetic validate(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/tenor/android/core/validator/FloatString;->validate(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
