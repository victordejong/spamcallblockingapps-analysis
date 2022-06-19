.class public final Lcom/hiya/client/callerid/dao/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/client/callerid/prefs/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/hiya/client/callerid/prefs/e;)V
    .locals 1

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/v;->a:Lcom/hiya/client/callerid/prefs/e;

    return-void
.end method


# virtual methods
.method public final a(Lm/x;)V
    .locals 4

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "X-Hiya-Cache-Number-Count"

    .line 1
    invoke-virtual {p1, v0}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lkotlin/c0/m;->i(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    iget-object v2, p0, Lcom/hiya/client/callerid/dao/v;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/hiya/client/callerid/prefs/Cache;->s(I)V

    :cond_1
    const-string v0, "X-Hiya-Cache-Request-Frequency"

    .line 3
    invoke-virtual {p1, v0}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v1, p1

    :cond_2
    invoke-static {v1}, Lkotlin/c0/m;->k(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Lcom/hiya/client/callerid/dao/v;->a:Lcom/hiya/client/callerid/prefs/e;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/prefs/e;->a()Lcom/hiya/client/callerid/prefs/Cache;

    move-result-object p1

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/hiya/client/callerid/prefs/Cache;->t(J)V

    :cond_3
    return-void
.end method
