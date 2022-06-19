.class public final Lg/g/b/d/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/gson/f;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/gson/g;->g(Ljava/lang/String;)Lcom/google/gson/g;

    .line 3
    new-instance v1, Lg/g/a/a/i/n/f;

    invoke-direct {v1}, Lg/g/a/a/i/n/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/gson/g;->e(Lcom/google/gson/u;)Lcom/google/gson/g;

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    const-string v1, "gsonBuilder.create()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
