.class public final Lcom/hiya/client/callerid/ui/z/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/z/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/hiya/client/callerid/ui/d0/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/z/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/firebase/c;->o(Landroid/content/Context;)Lcom/google/firebase/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/hiya/client/callerid/ui/d0/b;

    invoke-direct {v0}, Lcom/hiya/client/callerid/ui/d0/b;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/hiya/client/callerid/ui/d0/a;

    .line 4
    invoke-static {}, Lcom/google/firebase/perf/c;->c()Lcom/google/firebase/perf/c;

    move-result-object v1

    .line 5
    invoke-direct {v0, v1}, Lcom/hiya/client/callerid/ui/d0/a;-><init>(Lcom/google/firebase/perf/c;)V

    :goto_0
    return-object v0
.end method
