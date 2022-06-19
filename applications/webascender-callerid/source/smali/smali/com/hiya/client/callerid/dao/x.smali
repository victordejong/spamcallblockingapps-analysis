.class public final Lcom/hiya/client/callerid/dao/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/hiya/client/callerid/dao/w;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Lg/g/a/a/g/f;",
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
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;Lj/a/a;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/a/a/g/f;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/client/callerid/dao/x;->a:Lj/a/a;

    .line 3
    iput-object p2, p0, Lcom/hiya/client/callerid/dao/x;->b:Lj/a/a;

    .line 4
    iput-object p3, p0, Lcom/hiya/client/callerid/dao/x;->c:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;Lj/a/a;Lj/a/a;)Lcom/hiya/client/callerid/dao/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Lg/g/a/a/g/f;",
            ">;",
            "Lj/a/a<",
            "Lcom/google/gson/f;",
            ">;",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Lcom/hiya/client/callerid/dao/x;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/client/callerid/dao/x;-><init>(Lj/a/a;Lj/a/a;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/a/g/f;Lcom/google/gson/f;Landroid/content/SharedPreferences;)Lcom/hiya/client/callerid/dao/w;
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/client/callerid/dao/w;-><init>(Lg/g/a/a/g/f;Lcom/google/gson/f;Landroid/content/SharedPreferences;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/hiya/client/callerid/dao/w;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/x;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/g/a/a/g/f;

    iget-object v1, p0, Lcom/hiya/client/callerid/dao/x;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/f;

    iget-object v2, p0, Lcom/hiya/client/callerid/dao/x;->c:Lj/a/a;

    invoke-interface {v2}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-static {v0, v1, v2}, Lcom/hiya/client/callerid/dao/x;->c(Lg/g/a/a/g/f;Lcom/google/gson/f;Landroid/content/SharedPreferences;)Lcom/hiya/client/callerid/dao/w;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hiya/client/callerid/dao/x;->b()Lcom/hiya/client/callerid/dao/w;

    move-result-object v0

    return-object v0
.end method
