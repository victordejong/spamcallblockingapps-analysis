.class public final synthetic Ln3/y/b/a/r0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/r0/h$g;


# static fields
.field public static final a:Ln3/y/b/a/r0/h$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln3/y/b/a/r0/e;

    invoke-direct {v0}, Ln3/y/b/a/r0/e;-><init>()V

    sput-object v0, Ln3/y/b/a/r0/e;->a:Ln3/y/b/a/r0/h$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ln3/y/b/a/r0/a;

    .line 1
    sget-object v0, Ln3/y/b/a/r0/h;->a:Ljava/util/regex/Pattern;

    .line 2
    iget-object p1, p1, Ln3/y/b/a/r0/a;->a:Ljava/lang/String;

    const-string v0, "OMX.google"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "c2.android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget v0, Ln3/y/b/a/x0/x;->a:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
