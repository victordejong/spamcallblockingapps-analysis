.class public Lcom/tenor/android/core/validator/ColorHex;
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
.field private static final COLOR_HEX:Lcom/tenor/android/core/validator/ColorHex;

.field private static final COLOR_HEX_PATTERN:Ljava/lang/String; = "^#([A-Fa-f0-9]{8}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$"

.field private static final serialVersionUID:J = -0x530f325530edc451L


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/tenor/android/core/validator/ColorHex;

    const-string v1, "^#([A-Fa-f0-9]{8}|[A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$"

    invoke-direct {v0, v1}, Lcom/tenor/android/core/validator/ColorHex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tenor/android/core/validator/ColorHex;->COLOR_HEX:Lcom/tenor/android/core/validator/ColorHex;

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

    sget-object v0, Lcom/tenor/android/core/validator/ColorHex;->COLOR_HEX:Lcom/tenor/android/core/validator/ColorHex;

    invoke-virtual {v0, p0}, Lcom/tenor/android/core/validator/ColorHex;->validate(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parse(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/tenor/android/core/validator/ColorHex;->parse(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static parse(Ljava/lang/String;I)I
    .locals 1

    .line 5
    invoke-static {p0}, Lcom/tenor/android/core/validator/ColorHex;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    :cond_0
    return p1
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/tenor/android/core/validator/ColorHex;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/tenor/android/core/validator/ColorHex;->isValid(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "default value must be a valid hex color code"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object p0
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

    invoke-virtual {p0, p1}, Lcom/tenor/android/core/validator/ColorHex;->validate(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method
