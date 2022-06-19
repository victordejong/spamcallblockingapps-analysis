.class public final Lcom/hiya/client/callerid/prefs/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/prefs/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/prefs/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/prefs/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/prefs/Cache;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/prefs/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/prefs/f;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/prefs/f;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/client/callerid/prefs/f;->c:Lj/a/a;

    .line 5
    iput-object p4, p0, Lcom/hiya/client/callerid/prefs/f;->d:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/prefs/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/prefs/Cache;",
            ">;",
            "Lj/a/a<",
            "Lcom/hiya/client/callerid/prefs/c;",
            ">;)",
            "Lcom/hiya/client/callerid/prefs/f;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/prefs/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hiya/client/callerid/prefs/f;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/SharedPreferences;Lcom/google/gson/f;Lcom/hiya/client/callerid/prefs/Cache;Lcom/hiya/client/callerid/prefs/c;)Lcom/hiya/client/callerid/prefs/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/prefs/e;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/hiya/client/callerid/prefs/e;-><init>(Landroid/content/SharedPreferences;Lcom/google/gson/f;Lcom/hiya/client/callerid/prefs/Cache;Lcom/hiya/client/callerid/prefs/c;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/prefs/e;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/prefs/f;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/hiya/client/callerid/prefs/f;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/f;

    iget-object v2, p0, Lcom/hiya/client/callerid/prefs/f;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/client/callerid/prefs/Cache;

    iget-object v3, p0, Lcom/hiya/client/callerid/prefs/f;->d:Lj/a/a;

    invoke-interface {v3}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/client/callerid/prefs/c;

    invoke-static {v0, v1, v2, v3}, Lcom/hiya/client/callerid/prefs/f;->c(Landroid/content/SharedPreferences;Lcom/google/gson/f;Lcom/hiya/client/callerid/prefs/Cache;Lcom/hiya/client/callerid/prefs/c;)Lcom/hiya/client/callerid/prefs/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/prefs/f;->b()Lcom/hiya/client/callerid/prefs/e;

    move-result-object v0

    return-object v0
.end method
