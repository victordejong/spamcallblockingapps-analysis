.class public final synthetic Lcom/facebook/appevents/i0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$b;


# static fields
.field public static final synthetic a:Lcom/facebook/appevents/i0/f;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/i0/f;

    invoke-direct {v0}, Lcom/facebook/appevents/i0/f;-><init>()V

    sput-object v0, Lcom/facebook/appevents/i0/f;->a:Lcom/facebook/appevents/i0/f;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le/j/l0;)V
    .locals 3

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p1, Lcom/facebook/internal/k0;->e:Lcom/facebook/internal/k0$a;

    sget-object v0, Le/j/n0;->e:Le/j/n0;

    invoke-static {}, Lcom/facebook/appevents/i0/l;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App index sent to FB!"

    invoke-virtual {p1, v0, v1, v2}, Lcom/facebook/internal/k0$a;->b(Le/j/n0;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
