.class public final Lg/g/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Landroid/net/Uri;


# instance fields
.field private final a:Lcom/google/gson/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.hiya.axolotl.hiyaevents.provider/network_event"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lg/g/a/c/a;->b:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/google/gson/f;)V
    .locals 1

    const-string v0, "gson"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/c/a;->a:Lcom/google/gson/f;

    return-void
.end method

.method public static final synthetic a()Landroid/net/Uri;
    .locals 1

    .line 1
    sget-object v0, Lg/g/a/c/a;->b:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lg/g/a/c/b;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logNetworkEvent"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/a/c/a;->a:Lcom/google/gson/f;

    invoke-virtual {v0, p2}, Lcom/google/gson/f;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Lg/g/a/c/a$a;

    invoke-direct {v0, p1, p2}, Lg/g/a/c/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/e;->s(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "Completable.fromAction {\u2026_EVENT, values)\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
