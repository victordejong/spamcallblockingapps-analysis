.class public final Lcom/hiya/client/callerid/ui/z/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/google/gson/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/client/callerid/ui/z/f;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/z/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/g;->a:Lcom/hiya/client/callerid/ui/z/f;

    return-void
.end method

.method public static a(Lcom/hiya/client/callerid/ui/z/f;)Lcom/hiya/client/callerid/ui/z/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/z/g;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/ui/z/g;-><init>(Lcom/hiya/client/callerid/ui/z/f;)V

    return-object v0
.end method

.method public static c(Lcom/hiya/client/callerid/ui/z/f;)Lcom/google/gson/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/z/f;->a()Lcom/google/gson/f;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/gson/f;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/gson/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/g;->a:Lcom/hiya/client/callerid/ui/z/f;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/z/g;->c(Lcom/hiya/client/callerid/ui/z/f;)Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/ui/z/g;->b()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method
