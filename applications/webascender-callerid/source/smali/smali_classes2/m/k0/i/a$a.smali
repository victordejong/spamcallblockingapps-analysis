.class public final Lm/k0/i/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/k0/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lm/k0/i/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lm/k0/i/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm/k0/i/a$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lm/k0/i/a;

    invoke-direct {v0}, Lm/k0/i/a;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    invoke-static {}, Lm/k0/i/a;->r()Z

    move-result v0

    return v0
.end method
