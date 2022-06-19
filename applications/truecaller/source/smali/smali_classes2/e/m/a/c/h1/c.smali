.class public final synthetic Le/m/a/c/h1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/h1/h$g;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/c/h1/c;->a:Lcom/google/android/exoplayer2/Format;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Le/m/a/c/h1/c;->a:Lcom/google/android/exoplayer2/Format;

    check-cast p1, Le/m/a/c/h1/e;

    .line 1
    :try_start_0
    invoke-virtual {p1, v0}, Le/m/a/c/h1/e;->d(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1
    :try_end_0
    .catch Le/m/a/c/h1/h$c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method
