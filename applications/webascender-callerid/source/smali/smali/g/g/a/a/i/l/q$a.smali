.class public final Lg/g/a/a/i/l/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/a/a/i/l/q;
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
    invoke-direct {p0}, Lg/g/a/a/i/l/q$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(Ljava/lang/String;)Lg/g/a/a/i/l/q;
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x397f701d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BusinessResult"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lg/g/a/a/i/l/q;->BUSINESS:Lg/g/a/a/i/l/q;

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object p1, Lg/g/a/a/i/l/q;->WORD:Lg/g/a/a/i/l/q;

    :goto_1
    return-object p1
.end method
