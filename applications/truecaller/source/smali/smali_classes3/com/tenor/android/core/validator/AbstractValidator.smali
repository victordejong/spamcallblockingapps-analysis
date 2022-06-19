.class public abstract Lcom/tenor/android/core/validator/AbstractValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/validator/IValidator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/tenor/android/core/validator/IValidator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x164775040bcc77a1L


# instance fields
.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/tenor/android/core/validator/AbstractValidator;->mPattern:Ljava/util/regex/Pattern;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "regex cannot be empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get()Ljava/util/regex/Pattern;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/validator/AbstractValidator;->mPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method
