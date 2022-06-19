.class public final Lg/g/b/a/h/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/g/b/a/h/f;
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
    invoke-direct {p0}, Lg/g/b/a/h/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/gson/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-virtual {v0, v1}, Lcom/google/gson/g;->g(Ljava/lang/String;)Lcom/google/gson/g;

    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    const-string v1, "GsonBuilder().setDateFor\u2026dd\'T\'HH:mm:ssZ\").create()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
